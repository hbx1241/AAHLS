#include "FIR_test.h"

void fir_test(data_t *y, data_t x) {
	coef_t c[N] = {53, 0, -91, 0, 313, 500, 313, 0, -91, 0, 52};
#pragma HLS ARRAY_PARTITION variable=c type=complete dim=1
	static data_t shift_reg[N];
#pragma HLS ARRAY_PARTITION variable=shift_reg type=complete dim=1
//#pragma HLS RESOURCE variable=shift_reg core=RAM_1P
	data_t acc; int i; acc = 0;
	TDL: for (i = N - 1; i > 0; i--) {
#pragma HLS UNROLL
		shift_reg[i] = shift_reg[i-1];

	}
	shift_reg[0] = x;
	MAC: for (i = N - 1; i >= 0; i--) {
#pragma HLS UNROLL
		acc += shift_reg[i] * c[i];
	}

	*y = acc;
}
