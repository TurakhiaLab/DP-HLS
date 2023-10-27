// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSEQ_ALIGN_MULTIPLE_H
#define XSEQ_ALIGN_MULTIPLE_H

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
#include "xseq_align_multiple_hw.h"

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
} XSeq_align_multiple_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XSeq_align_multiple;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSeq_align_multiple_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSeq_align_multiple_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSeq_align_multiple_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSeq_align_multiple_ReadReg(BaseAddress, RegOffset) \
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
int XSeq_align_multiple_Initialize(XSeq_align_multiple *InstancePtr, u16 DeviceId);
XSeq_align_multiple_Config* XSeq_align_multiple_LookupConfig(u16 DeviceId);
int XSeq_align_multiple_CfgInitialize(XSeq_align_multiple *InstancePtr, XSeq_align_multiple_Config *ConfigPtr);
#else
int XSeq_align_multiple_Initialize(XSeq_align_multiple *InstancePtr, const char* InstanceName);
int XSeq_align_multiple_Release(XSeq_align_multiple *InstancePtr);
#endif

void XSeq_align_multiple_Start(XSeq_align_multiple *InstancePtr);
u32 XSeq_align_multiple_IsDone(XSeq_align_multiple *InstancePtr);
u32 XSeq_align_multiple_IsIdle(XSeq_align_multiple *InstancePtr);
u32 XSeq_align_multiple_IsReady(XSeq_align_multiple *InstancePtr);
void XSeq_align_multiple_Continue(XSeq_align_multiple *InstancePtr);
void XSeq_align_multiple_EnableAutoRestart(XSeq_align_multiple *InstancePtr);
void XSeq_align_multiple_DisableAutoRestart(XSeq_align_multiple *InstancePtr);

void XSeq_align_multiple_Set_dummies(XSeq_align_multiple *InstancePtr, u64 Data);
u64 XSeq_align_multiple_Get_dummies(XSeq_align_multiple *InstancePtr);

void XSeq_align_multiple_InterruptGlobalEnable(XSeq_align_multiple *InstancePtr);
void XSeq_align_multiple_InterruptGlobalDisable(XSeq_align_multiple *InstancePtr);
void XSeq_align_multiple_InterruptEnable(XSeq_align_multiple *InstancePtr, u32 Mask);
void XSeq_align_multiple_InterruptDisable(XSeq_align_multiple *InstancePtr, u32 Mask);
void XSeq_align_multiple_InterruptClear(XSeq_align_multiple *InstancePtr, u32 Mask);
u32 XSeq_align_multiple_InterruptGetEnabled(XSeq_align_multiple *InstancePtr);
u32 XSeq_align_multiple_InterruptGetStatus(XSeq_align_multiple *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
