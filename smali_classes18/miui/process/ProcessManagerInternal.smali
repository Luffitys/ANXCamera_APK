.class public abstract Lmiui/process/ProcessManagerInternal;
.super Ljava/lang/Object;
.source "ProcessManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract getAllRunningProcessInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMiuiApplicationThread(I)Lmiui/process/IMiuiApplicationThread;
.end method

.method public abstract getMultiWindowForegroundAppInfoLocked()Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract isPackageFastBootEnable(Ljava/lang/String;IZ)Z
.end method

.method public abstract notifyActivityChanged(Landroid/content/ComponentName;)V
.end method

.method public abstract notifyForegroundInfoChanged(Ljava/lang/Object;Ljava/lang/Object;ILandroid/content/pm/ApplicationInfo;)V
.end method

.method public abstract notifyForegroundWindowChanged(Ljava/lang/Object;Ljava/lang/Object;ILandroid/content/pm/ApplicationInfo;)V
.end method

.method public abstract onAppBinderDied(Ljava/lang/Object;)V
.end method

.method public abstract onCleanUpApplicationRecord(Ljava/lang/Object;)V
.end method

.method public abstract recordKillProcessEventIfNeeded(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract updateProcessForegroundLocked(I)V
.end method
