// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSEQ_ALIGN_MULTIPLE_STATIC_H
#define XSEQ_ALIGN_MULTIPLE_STATIC_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xseq_align_multiple_static_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XSeq_align_multiple_static_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XSeq_align_multiple_static;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSeq_align_multiple_static_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSeq_align_multiple_static_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSeq_align_multiple_static_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSeq_align_multiple_static_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XSeq_align_multiple_static_Initialize(XSeq_align_multiple_static *InstancePtr, u16 DeviceId);
XSeq_align_multiple_static_Config* XSeq_align_multiple_static_LookupConfig(u16 DeviceId);
int XSeq_align_multiple_static_CfgInitialize(XSeq_align_multiple_static *InstancePtr, XSeq_align_multiple_static_Config *ConfigPtr);
#else
int XSeq_align_multiple_static_Initialize(XSeq_align_multiple_static *InstancePtr, const char* InstanceName);
int XSeq_align_multiple_static_Release(XSeq_align_multiple_static *InstancePtr);
#endif

void XSeq_align_multiple_static_Start(XSeq_align_multiple_static *InstancePtr);
u32 XSeq_align_multiple_static_IsDone(XSeq_align_multiple_static *InstancePtr);
u32 XSeq_align_multiple_static_IsIdle(XSeq_align_multiple_static *InstancePtr);
u32 XSeq_align_multiple_static_IsReady(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Continue(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_EnableAutoRestart(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_DisableAutoRestart(XSeq_align_multiple_static *InstancePtr);

void XSeq_align_multiple_static_Set_querys_0(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_0(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_1(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_1(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_2(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_2(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_3(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_3(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_4(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_4(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_5(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_5(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_6(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_6(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_7(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_7(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_8(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_8(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_9(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_9(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_10(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_10(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_11(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_11(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_12(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_12(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_13(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_13(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_14(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_14(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_15(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_15(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_16(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_16(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_17(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_17(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_18(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_18(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_19(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_19(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_20(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_20(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_21(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_21(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_22(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_22(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_23(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_23(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_24(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_24(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_25(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_25(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_26(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_26(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_27(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_27(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_28(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_28(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_29(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_29(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_30(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_30(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_querys_31(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_querys_31(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_references(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_references(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_query_lengths(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_query_lengths(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_reference_lengths(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_reference_lengths(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_penalties(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_penalties(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_Set_tb_streams(XSeq_align_multiple_static *InstancePtr, u64 Data);
u64 XSeq_align_multiple_static_Get_tb_streams(XSeq_align_multiple_static *InstancePtr);

void XSeq_align_multiple_static_InterruptGlobalEnable(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_InterruptGlobalDisable(XSeq_align_multiple_static *InstancePtr);
void XSeq_align_multiple_static_InterruptEnable(XSeq_align_multiple_static *InstancePtr, u32 Mask);
void XSeq_align_multiple_static_InterruptDisable(XSeq_align_multiple_static *InstancePtr, u32 Mask);
void XSeq_align_multiple_static_InterruptClear(XSeq_align_multiple_static *InstancePtr, u32 Mask);
u32 XSeq_align_multiple_static_InterruptGetEnabled(XSeq_align_multiple_static *InstancePtr);
u32 XSeq_align_multiple_static_InterruptGetStatus(XSeq_align_multiple_static *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
