.class Landroid/view/InsetsAnimationThreadControlRunner$1;
.super Ljava/lang/Object;
.source "InsetsAnimationThreadControlRunner.java"

# interfaces
.implements Landroid/view/InsetsAnimationControlCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsAnimationThreadControlRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTmpFloat9:[F

.field final synthetic this$0:Landroid/view/InsetsAnimationThreadControlRunner;


# direct methods
.method constructor <init>(Landroid/view/InsetsAnimationThreadControlRunner;)V
    .registers 3

    iput-object p1, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->mTmpFloat9:[F

    return-void
.end method


# virtual methods
.method public varargs applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 6

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-ltz v1, :cond_14

    aget-object v2, p1, v1

    iget-object v3, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->mTmpFloat9:[F

    invoke-static {v0, v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_14
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void
.end method

.method public synthetic lambda$notifyFinished$0$InsetsAnimationThreadControlRunner$1(Z)V
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    # getter for: Landroid/view/InsetsAnimationThreadControlRunner;->mOuterCallbacks:Landroid/view/InsetsAnimationControlCallbacks;
    invoke-static {v0}, Landroid/view/InsetsAnimationThreadControlRunner;->access$400(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlCallbacks;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-interface {v0, v1, p1}, Landroid/view/InsetsAnimationControlCallbacks;->notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V

    return-void
.end method

.method public synthetic lambda$reportPerceptible$1$InsetsAnimationThreadControlRunner$1(IZ)V
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    # getter for: Landroid/view/InsetsAnimationThreadControlRunner;->mOuterCallbacks:Landroid/view/InsetsAnimationControlCallbacks;
    invoke-static {v0}, Landroid/view/InsetsAnimationThreadControlRunner;->access$400(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/InsetsAnimationControlCallbacks;->reportPerceptible(IZ)V

    return-void
.end method

.method public notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAsyncAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    # getter for: Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;
    invoke-static {v0}, Landroid/view/InsetsAnimationThreadControlRunner;->access$100(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsAnimationControlImpl;->getControls()Landroid/util/SparseArray;

    move-result-object v1

    # invokes: Landroid/view/InsetsAnimationThreadControlRunner;->releaseControls(Landroid/util/SparseArray;)V
    invoke-static {v0, v1}, Landroid/view/InsetsAnimationThreadControlRunner;->access$200(Landroid/view/InsetsAnimationThreadControlRunner;Landroid/util/SparseArray;)V

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    # getter for: Landroid/view/InsetsAnimationThreadControlRunner;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/view/InsetsAnimationThreadControlRunner;->access$300(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/view/-$$Lambda$InsetsAnimationThreadControlRunner$1$HYaS-j4hzpYaXxnEg1yPA7mlZPo;

    invoke-direct {v1, p0, p2}, Landroid/view/-$$Lambda$InsetsAnimationThreadControlRunner$1$HYaS-j4hzpYaXxnEg1yPA7mlZPo;-><init>(Landroid/view/InsetsAnimationThreadControlRunner$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .registers 2

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method

.method public reportPerceptible(IZ)V
    .registers 5

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    # getter for: Landroid/view/InsetsAnimationThreadControlRunner;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/view/InsetsAnimationThreadControlRunner;->access$300(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/view/-$$Lambda$InsetsAnimationThreadControlRunner$1$P1j8tXGxG0HNP_tlmNjLKchwSD0;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/-$$Lambda$InsetsAnimationThreadControlRunner$1$P1j8tXGxG0HNP_tlmNjLKchwSD0;-><init>(Landroid/view/InsetsAnimationThreadControlRunner$1;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    # getter for: Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;
    invoke-static {v0}, Landroid/view/InsetsAnimationThreadControlRunner;->access$100(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    # getter for: Landroid/view/InsetsAnimationThreadControlRunner;->mState:Landroid/view/InsetsState;
    invoke-static {v1}, Landroid/view/InsetsAnimationThreadControlRunner;->access$000(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsState;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/InsetsAnimationControlImpl;->applyChangeInsets(Landroid/view/InsetsState;)Z

    return-void
.end method

.method public startAnimation(Landroid/view/InsetsAnimationControlImpl;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V
    .registers 6

    return-void
.end method
