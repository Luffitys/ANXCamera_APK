.class public Landroid/os/statistics/MonitorSuperviser;
.super Ljava/lang/Object;
.source "MonitorSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/MonitorSuperviser$SingleConditionAwakenFields;,
        Landroid/os/statistics/MonitorSuperviser$SingleConditionWaitFields;,
        Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;,
        Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;,
        Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;,
        Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;,
        Landroid/os/statistics/MonitorSuperviser$SingleLockWait;,
        Landroid/os/statistics/MonitorSuperviser$SingleLockHold;
    }
.end annotation


# static fields
.field public static final COMDITION_AWAKEN_INTERRUPTED:I = 0x2

.field public static final COMDITION_AWAKEN_TIMEDOUT:I = 0x1

.field public static final CONDITION_AWAKEN_NOTIFIED:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
