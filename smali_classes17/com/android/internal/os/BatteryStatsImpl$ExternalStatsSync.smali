.class public interface abstract Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExternalStatsSync"
.end annotation


# static fields
.field public static final UPDATE_ALL:I = 0x1f

.field public static final UPDATE_BT:I = 0x8

.field public static final UPDATE_CPU:I = 0x1

.field public static final UPDATE_RADIO:I = 0x4

.field public static final UPDATE_RPM:I = 0x10

.field public static final UPDATE_WIFI:I = 0x2


# virtual methods
.method public abstract cancelCpuSyncDueToWakelockChange()V
.end method

.method public abstract scheduleCopyFromAllUidsCpuTimes(ZZ)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract scheduleCpuSyncDueToRemovedUid(I)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract scheduleCpuSyncDueToScreenStateChange(ZZ)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract scheduleCpuSyncDueToSettingChange()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract scheduleCpuSyncDueToWakelockChange(J)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract scheduleReadProcStateCpuTimes(ZZJ)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZJ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract scheduleSyncDueToBatteryLevelChange(J)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end method
