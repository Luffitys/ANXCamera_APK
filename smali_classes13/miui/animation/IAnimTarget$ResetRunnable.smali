.class Lmiui/animation/IAnimTarget$ResetRunnable;
.super Ljava/lang/Object;
.source "IAnimTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/IAnimTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResetRunnable"
.end annotation


# instance fields
.field mMonitorInfo:Lmiui/animation/IAnimTarget$MonitorInfo;

.field mProperty:Lmiui/animation/property/FloatProperty;

.field mTargetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/animation/IAnimTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lmiui/animation/IAnimTarget$MonitorInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/animation/IAnimTarget$ResetRunnable;->mMonitorInfo:Lmiui/animation/IAnimTarget$MonitorInfo;

    return-void
.end method


# virtual methods
.method post(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)V
    .registers 6

    iget-object v0, p0, Lmiui/animation/IAnimTarget$ResetRunnable;->mTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_11

    :cond_a
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/animation/IAnimTarget$ResetRunnable;->mTargetRef:Ljava/lang/ref/WeakReference;

    :cond_11
    iput-object p2, p0, Lmiui/animation/IAnimTarget$ResetRunnable;->mProperty:Lmiui/animation/property/FloatProperty;

    # getter for: Lmiui/animation/IAnimTarget;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lmiui/animation/IAnimTarget;->access$000(Lmiui/animation/IAnimTarget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    # getter for: Lmiui/animation/IAnimTarget;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lmiui/animation/IAnimTarget;->access$000(Lmiui/animation/IAnimTarget;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .registers 5

    iget-object v0, p0, Lmiui/animation/IAnimTarget$ResetRunnable;->mTargetRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/IAnimTarget;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lmiui/animation/IAnimTarget;->getAnimTask()Lmiui/animation/internal/AnimTask;

    move-result-object v1

    iget-object v2, p0, Lmiui/animation/IAnimTarget$ResetRunnable;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v1, v2}, Lmiui/animation/internal/AnimTask;->isRunning(Lmiui/animation/property/FloatProperty;)Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lmiui/animation/IAnimTarget$ResetRunnable;->mProperty:Lmiui/animation/property/FloatProperty;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lmiui/animation/IAnimTarget;->setVelocity(Lmiui/animation/property/FloatProperty;D)V

    :cond_1d
    iget-object v1, p0, Lmiui/animation/IAnimTarget$ResetRunnable;->mMonitorInfo:Lmiui/animation/IAnimTarget$MonitorInfo;

    iget-object v1, v1, Lmiui/animation/IAnimTarget$MonitorInfo;->monitor:Lmiui/animation/utils/VelocityMonitor;

    invoke-virtual {v1}, Lmiui/animation/utils/VelocityMonitor;->clear()V

    :cond_24
    return-void
.end method
