.class public Landroid/os/statistics/PerfEventSocket;
.super Ljava/lang/Object;
.source "PerfEventSocket.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native receivePerfEvents(ILandroid/os/Parcel;JI[Landroid/os/statistics/FilteringPerfEvent;)I
.end method

.method public static native sendPerfEvent(ILandroid/os/Parcel;JI)I
.end method

.method public static native waitForPerfEventArrived(I)I
.end method
