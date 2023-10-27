// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xseq_align_multiple_static.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSeq_align_multiple_static_CfgInitialize(XSeq_align_multiple_static *InstancePtr, XSeq_align_multiple_static_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSeq_align_multiple_static_Start(XSeq_align_multiple_static *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSeq_align_multiple_static_IsDone(XSeq_align_multiple_static *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSeq_align_multiple_static_IsIdle(XSeq_align_multiple_static *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSeq_align_multiple_static_IsReady(XSeq_align_multiple_static *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSeq_align_multiple_static_Continue(XSeq_align_multiple_static *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XSeq_align_multiple_static_EnableAutoRestart(XSeq_align_multiple_static *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XSeq_align_multiple_static_DisableAutoRestart(XSeq_align_multiple_static *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_AP_CTRL, 0);
}

void XSeq_align_multiple_static_Set_querys_0(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_0_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_0_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_0(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_0_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_0_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_1(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_1_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_1_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_1(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_1_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_1_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_2(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_2_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_2_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_2(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_2_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_2_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_3(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_3_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_3_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_3(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_3_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_3_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_4(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_4_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_4_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_4(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_4_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_4_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_5(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_5_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_5_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_5(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_5_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_5_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_6(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_6_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_6_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_6(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_6_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_6_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_7(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_7_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_7_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_7(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_7_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_7_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_8(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_8_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_8_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_8(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_8_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_8_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_9(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_9_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_9_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_9(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_9_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_9_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_10(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_10_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_10_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_10(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_10_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_10_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_11(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_11_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_11_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_11(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_11_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_11_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_12(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_12_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_12_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_12(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_12_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_12_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_13(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_13_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_13_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_13(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_13_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_13_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_14(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_14_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_14_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_14(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_14_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_14_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_15(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_15_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_15_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_15(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_15_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_15_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_16(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_16_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_16_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_16(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_16_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_16_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_17(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_17_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_17_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_17(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_17_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_17_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_18(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_18_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_18_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_18(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_18_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_18_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_19(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_19_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_19_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_19(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_19_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_19_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_20(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_20_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_20_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_20(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_20_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_20_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_21(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_21_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_21_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_21(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_21_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_21_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_22(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_22_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_22_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_22(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_22_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_22_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_23(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_23_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_23_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_23(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_23_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_23_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_24(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_24_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_24_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_24(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_24_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_24_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_25(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_25_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_25_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_25(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_25_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_25_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_26(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_26_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_26_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_26(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_26_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_26_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_27(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_27_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_27_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_27(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_27_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_27_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_28(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_28_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_28_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_28(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_28_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_28_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_29(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_29_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_29_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_29(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_29_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_29_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_30(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_30_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_30_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_30(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_30_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_30_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_querys_31(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_31_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_31_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_querys_31(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_31_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_31_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_references(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_REFERENCES_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_REFERENCES_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_references(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_REFERENCES_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_REFERENCES_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_query_lengths(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERY_LENGTHS_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERY_LENGTHS_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_query_lengths(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERY_LENGTHS_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERY_LENGTHS_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_reference_lengths(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_REFERENCE_LENGTHS_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_REFERENCE_LENGTHS_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_reference_lengths(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_REFERENCE_LENGTHS_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_REFERENCE_LENGTHS_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_penalties(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_PENALTIES_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_PENALTIES_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_penalties(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_PENALTIES_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_PENALTIES_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_Set_tb_streams(XSeq_align_multiple_static *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_TB_STREAMS_DATA, (u32)(Data));
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_TB_STREAMS_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_static_Get_tb_streams(XSeq_align_multiple_static *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_TB_STREAMS_DATA);
    Data += (u64)XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_TB_STREAMS_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_static_InterruptGlobalEnable(XSeq_align_multiple_static *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_GIE, 1);
}

void XSeq_align_multiple_static_InterruptGlobalDisable(XSeq_align_multiple_static *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_GIE, 0);
}

void XSeq_align_multiple_static_InterruptEnable(XSeq_align_multiple_static *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_IER);
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_IER, Register | Mask);
}

void XSeq_align_multiple_static_InterruptDisable(XSeq_align_multiple_static *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_IER);
    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_IER, Register & (~Mask));
}

void XSeq_align_multiple_static_InterruptClear(XSeq_align_multiple_static *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_static_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_ISR, Mask);
}

u32 XSeq_align_multiple_static_InterruptGetEnabled(XSeq_align_multiple_static *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_IER);
}

u32 XSeq_align_multiple_static_InterruptGetStatus(XSeq_align_multiple_static *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSeq_align_multiple_static_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_ISR);
}

