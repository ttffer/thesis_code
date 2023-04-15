/*
 * dmaTest.c
 *
 *  Created on: Mar 1, 2020
 *      Author: VIPIN
 */


#include "xaxidma.h"
#include "xparameters.h"
#include "sleep.h"
#include "xil_cache.h"

u32 checkHalted(u32 baseAddress,u32 offset);

int main(){
    int sz = 32;
    u32 a[32]={16777216,198148,0,1260126464,144472,0,960385802,2138,67108864,1329858580,3,0,1925412,0,1527447552,567,0,224081922,0,117440512,354239841,338699800,1124335616,1398760541,1653323,151257088,17305358,0,0,0,0,0,
    };
	u32 b[32];
    u32 status;
    xil_printf("%p\n",&a);
    xil_printf("%p\n",&b);
	XAxiDma_Config *myDmaConfig;
	XAxiDma myDma;

	myDmaConfig = XAxiDma_LookupConfigBaseAddr(XPAR_AXI_DMA_0_BASEADDR);
	status = XAxiDma_CfgInitialize(&myDma, myDmaConfig);
	if(status != XST_SUCCESS){
		print("DMA initialization failed\n");
		return -1;
	}
	print("DMA initialization success..\n");
	status = checkHalted(XPAR_AXI_DMA_0_BASEADDR,0x4);
	xil_printf("Status before data transfer %0x\n",status);
	Xil_DCacheFlushRange((u32)a,sz*sizeof(u32));
	status = XAxiDma_SimpleTransfer(&myDma, (u32)b, sz*sizeof(u32),XAXIDMA_DEVICE_TO_DMA);
	status = XAxiDma_SimpleTransfer(&myDma, (u32)a, sz*sizeof(u32),XAXIDMA_DMA_TO_DEVICE);//typecasting in C/C++
	if(status != XST_SUCCESS){
		print("DMA initialization failed\n");
		return -1;
	}


	for(int i=0;i<1;i++)
		xil_printf("%0x\n",b[i]);
}


u32 checkHalted(u32 baseAddress,u32 offset){
	u32 status;
	status = (XAxiDma_ReadReg(baseAddress,offset))&XAXIDMA_HALTED_MASK;
	return status;
}
