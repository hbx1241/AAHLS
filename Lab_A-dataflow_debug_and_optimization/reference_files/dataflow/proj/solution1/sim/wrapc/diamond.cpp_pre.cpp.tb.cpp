// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "/home/ubuntu/HLS/Vitis-Tutorials/Hardware_Acceleration/Feature_Tutorials/03-dataflow_debug_and_optimization/reference_files/dataflow/diamond.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/home/ubuntu/HLS/Vitis-Tutorials/Hardware_Acceleration/Feature_Tutorials/03-dataflow_debug_and_optimization/reference_files/dataflow/diamond.cpp"





# 1 "/home/ubuntu/HLS/Vitis-Tutorials/Hardware_Acceleration/Feature_Tutorials/03-dataflow_debug_and_optimization/reference_files/dataflow/diamond.h" 1






typedef unsigned char data_t;


void diamond(data_t vecIn[100], data_t vecOut[100]);


void funcA(data_t f1In[100], data_t f1Out[100], data_t f1bisOut[100]);
void funcB(data_t f2In[100], data_t f2Out[100]);
void funcC(data_t f3In[100], data_t f3Out[100]);
void funcD(data_t f4In[100], data_t f4bisIn[100], data_t f4Out[100]);
# 7 "/home/ubuntu/HLS/Vitis-Tutorials/Hardware_Acceleration/Feature_Tutorials/03-dataflow_debug_and_optimization/reference_files/dataflow/diamond.cpp" 2

void diamond(data_t vecIn[100], data_t vecOut[100])
{
  data_t c1[100], c2[100], c3[100], c4[100];
#pragma HLS dataflow
  funcA(vecIn, c1, c2);
  funcB(c1, c3);
  funcC(c2, c4);
  funcD(c3, c4, vecOut);
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_diamond_ir(unsigned char *, unsigned char *);
#ifdef __cplusplus
extern "C"
#endif
void diamond_hw_stub(unsigned char *vecIn, unsigned char *vecOut){
diamond(vecIn, vecOut);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void apatb_diamond_sw(unsigned char *vecIn, unsigned char *vecOut){
apatb_diamond_ir(vecIn, vecOut);
return ;
}
#endif
# 16 "/home/ubuntu/HLS/Vitis-Tutorials/Hardware_Acceleration/Feature_Tutorials/03-dataflow_debug_and_optimization/reference_files/dataflow/diamond.cpp"


void funcA(data_t *in, data_t *out1, data_t *out2)
{
Loop0:
  for (int i = 0; i < 100; i++)
  {
#pragma HLS pipeline rewind
#pragma HLS unroll factor = 2
    data_t t = in[i] * 3;
    out1[i] = t;
    out2[i] = t;
  }
}

void funcB(data_t *in, data_t *out)
{
Loop0:
  for (int i = 0; i < 100; i++)
  {
#pragma HLS pipeline rewind
#pragma HLS unroll factor = 2
    out[i] = in[i] + 25;
  }
}

void funcC(data_t *in, data_t *out)
{
Loop0:
  for (data_t i = 0; i < 100; i++)
  {
#pragma HLS pipeline rewind
#pragma HLS unroll factor = 2
    out[i] = in[i] * 2;
  }
}

void funcD(data_t *in1, data_t *in2, data_t *out)
{
Loop0:
  for (int i = 0; i < 100; i++)
  {
#pragma HLS pipeline rewind
#pragma HLS unroll factor = 2
    out[i] = in1[i] + in2[i] * 2;
  }
}
