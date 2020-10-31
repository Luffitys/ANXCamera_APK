.class public Landroid/os/statistics/DeviceKernelPerfEvents;
.super Ljava/lang/Object;
.source "DeviceKernelPerfEvents.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native fetchDeviceKernelPerfEvents([Landroid/os/statistics/FilteringPerfEvent;)I
.end method

.method public static native initDeviceKernelPerfEvents()Z
.end method

.method public static native waitForDeviceKernelPerfEventArrived(I)Z
.end method
