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
#include "xtime_l.h"
#include <stdio.h>

u32 checkHalted(u32 baseAddress,u32 offset);

int main(){
	XTime tStart, tEnd;

    int sz = 32;
    u32 a[32]={0,0,0,0,0,0,504103680,1051,268435456,1515213121,29,772997120,691537423,0,0,1457155,0,771817472,403809,0,1312227840,4934,0,67844879,2,771751936,28,0,69009408,0,0,0,
    };
	u32 b[32];
    u32 status;
    xil_printf("%p\n",&a);
    xil_printf("%p\n",&b);
	XAxiDma_Config *myDmaConfig;
	XAxiDma myDma;
	XTime_GetTime(&tStart);
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
	XTime_GetTime(&tEnd);

	 printf("Output took %llu clock cycles.\n", 2*(tEnd - tStart));
	    printf("Output took %.2f us.\n",
	           1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND/1000000));
}


u32 checkHalted(u32 baseAddress,u32 offset){
	u32 status;
	status = (XAxiDma_ReadReg(baseAddress,offset))&XAXIDMA_HALTED_MASK;
	return status;
}
