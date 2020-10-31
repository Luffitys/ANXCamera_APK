.class public final Landroid/view/SurfaceControl$MiuiTransaction;
.super Landroid/view/SurfaceControl$Transaction;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MiuiTransaction"
.end annotation


# instance fields
.field private mNativeObject:J


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    # invokes: Landroid/view/SurfaceControl;->nativeCreateMiuiTransaction()J
    invoke-static {}, Landroid/view/SurfaceControl;->access$5600()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl$MiuiTransaction;->mNativeObject:J

    sget-object v0, Landroid/view/SurfaceControl$MiuiTransaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/view/SurfaceControl$MiuiTransaction;->mNativeObject:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$MiuiTransaction;->mFreeNativeResources:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public apply()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$MiuiTransaction;->apply(Z)V

    return-void
.end method

.method public apply(Z)V
    .registers 4

    iget-wide v0, p0, Landroid/view/SurfaceControl$MiuiTransaction;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeApplyMiuiTransaction(JZ)V
    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->access$6000(JZ)V

    return-void
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceControl$MiuiTransaction;->mFreeNativeResources:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceControl$MiuiTransaction;->mNativeObject:J

    return-void
.end method

.method public setDiffScreenProjection(Landroid/os/IBinder;Z)Landroid/view/SurfaceControl$MiuiTransaction;
    .registers 5

    if-eqz p1, :cond_8

    iget-wide v0, p0, Landroid/view/SurfaceControl$MiuiTransaction;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetDiffScreenProjection(JLandroid/os/IBinder;I)V
    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->access$5700(JLandroid/os/IBinder;I)V

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLastFrame(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$MiuiTransaction;
    .registers 10

    # invokes: Landroid/view/SurfaceControl;->checkNotReleased()V
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$400(Landroid/view/SurfaceControl;)V

    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v6

    iget-wide v0, p0, Landroid/view/SurfaceControl$MiuiTransaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move-object v4, v6

    move v5, p2

    # invokes: Landroid/view/SurfaceControl;->nativeSetLastFrame(JJLandroid/os/IBinder;Z)V
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$5900(JJLandroid/os/IBinder;Z)V

    return-object p0
.end method

.method public setMiuiCastMode(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$MiuiTransaction;
    .registers 10

    # invokes: Landroid/view/SurfaceControl;->checkNotReleased()V
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$400(Landroid/view/SurfaceControl;)V

    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v6

    iget-wide v0, p0, Landroid/view/SurfaceControl$MiuiTransaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move-object v4, v6

    move v5, p2

    # invokes: Landroid/view/SurfaceControl;->nativeSetCastMode(JJLandroid/os/IBinder;Z)V
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$5800(JJLandroid/os/IBinder;Z)V

    return-object p0
.end method
