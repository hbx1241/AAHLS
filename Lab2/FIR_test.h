#ifndef __FIR_TEST_H__
#define __FIR_TEST_H__

#include <ap_axi_sdata.h>

#define	N						11

#define MAP_ALIGN_4INT			(((N + 3) >> 2) << 2)

typedef ap_uint<32> reg32_t;
typedef signed int int32_t;
typedef unsigned int uint32_t;
typedef signed int data_t;
typedef signed int coef_t;

void fir_test(data_t *y, data_t x);

#endif
