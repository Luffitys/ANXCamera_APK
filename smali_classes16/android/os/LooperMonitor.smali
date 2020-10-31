.class public Landroid/os/LooperMonitor;
.super Ljava/lang/Object;
.source "LooperMonitor.java"

# interfaces
.implements Landroid/os/ILooperMonitorable;


# instance fields
.field private mEnableMonitor:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableMonitor(Z)V
    .registers 6

    iput-boolean p1, p0, Landroid/os/LooperMonitor;->mEnableMonitor:Z

    if-eqz p1, :cond_1e

    :try_start_4
    const-string v0, "getQueue"

    const-class v1, Landroid/os/MessageQueue;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v3}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue;

    if-eqz v0, :cond_1c

    const-string v1, "enableMonitor"

    const-class v3, Ljava/lang/Void;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_1d

    :cond_1c
    goto :goto_1e

    :catch_1d
    move-exception v0

    :cond_1e
    :goto_1e
    return-void
.end method

.method public isMonitorLooper()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/LooperMonitor;->mEnableMonitor:Z

    return v0
.end method
