#ifndef _INT_STREAM_H_
#define _INT_STREAM_H_

#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "ap_int.h"
#include <inttypes.h>
typedef long  DataType;
typedef ap_axiu<64, 0, 0, 0> axis_t;

#define lrsw0_size 50176
#define lrsb0_size 64
#define lrsw2_size 2048
#define lrsb2_size 32
#define lrsw4_size 320
#define lrsb4_size 10

#define img_size 784
#define N 10
extern DataType lrsb0 [];
extern DataType lrsb2 [];
extern DataType lrsb4 [];
extern DataType lrsw0 [];
extern DataType lrsw2 [];
extern DataType lrsw4 [];

void top(hls::stream<axis_t> &in, hls::stream<axis_t> &out);
void nn(DataType img[784],
		DataType lrsw0[lrsw0_size],
		DataType lrsb0[lrsb0_size],
		DataType lrsw2[lrsw2_size],
		DataType lrsb2[lrsb2_size],
		DataType lrsw4[lrsw4_size],
		DataType lrsb4[lrsb4_size],
		DataType outcome[10]);
#endif
