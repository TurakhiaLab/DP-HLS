// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xseq_align_multiple.h"

extern XSeq_align_multiple_Config XSeq_align_multiple_ConfigTable[];

XSeq_align_multiple_Config *XSeq_align_multiple_LookupConfig(u16 DeviceId) {
	XSeq_align_multiple_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSEQ_ALIGN_MULTIPLE_NUM_INSTANCES; Index++) {
		if (XSeq_align_multiple_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSeq_align_multiple_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSeq_align_multiple_Initialize(XSeq_align_multiple *InstancePtr, u16 DeviceId) {
	XSeq_align_multiple_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSeq_align_multiple_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSeq_align_multiple_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

