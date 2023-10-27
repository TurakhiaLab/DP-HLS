// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xseq_align_multiple.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSeq_align_multiple_CfgInitialize(XSeq_align_multiple *InstancePtr, XSeq_align_multiple_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSeq_align_multiple_Start(XSeq_align_multiple *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSeq_align_multiple_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSeq_align_multiple_IsDone(XSeq_align_multiple *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSeq_align_multiple_IsIdle(XSeq_align_multiple *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSeq_align_multiple_IsReady(XSeq_align_multiple *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSeq_align_multiple_Continue(XSeq_align_multiple *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSeq_align_multiple_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XSeq_align_multiple_EnableAutoRestart(XSeq_align_multiple *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XSeq_align_multiple_DisableAutoRestart(XSeq_align_multiple *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_AP_CTRL, 0);
}

void XSeq_align_multiple_Set_dummies(XSeq_align_multiple *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_DUMMIES_DATA, (u32)(Data));
    XSeq_align_multiple_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_DUMMIES_DATA + 4, (u32)(Data >> 32));
}

u64 XSeq_align_multiple_Get_dummies(XSeq_align_multiple *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSeq_align_multiple_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_DUMMIES_DATA);
    Data += (u64)XSeq_align_multiple_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_DUMMIES_DATA + 4) << 32;
    return Data;
}

void XSeq_align_multiple_InterruptGlobalEnable(XSeq_align_multiple *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_GIE, 1);
}

void XSeq_align_multiple_InterruptGlobalDisable(XSeq_align_multiple *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSeq_align_multiple_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_GIE, 0);
}

void XSeq_align_multiple_InterruptEnable(XSeq_align_multiple *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSeq_align_multiple_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_IER);
    XSeq_align_multiple_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_IER, Register | Mask);
}

void XSeq_align_multiple_InterruptDisable(XSeq_align_multiple *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSeq_align_multiple_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_IER);
    XSeq_align_multiple_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_IER, Register & (~Mask));
}

void XSeq_align_multiple_InterruptClear(XSeq_align_multiple *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XSeq_align_multiple_WriteReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_ISR, Mask);
}

u32 XSeq_align_multiple_InterruptGetEnabled(XSeq_align_multiple *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSeq_align_multiple_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_IER);
}

u32 XSeq_align_multiple_InterruptGetStatus(XSeq_align_multiple *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XSeq_align_multiple_ReadReg(InstancePtr->Control_BaseAddress, XSEQ_ALIGN_MULTIPLE_CONTROL_ADDR_ISR);
}

