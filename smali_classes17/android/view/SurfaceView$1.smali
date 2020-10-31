.class Landroid/view/SurfaceView$1;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/graphics/RenderNode$PositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .registers 2

    iput-object p1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public positionChanged(JIIII)V
    .registers 10

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    const/4 v2, 0x1

    # setter for: Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z
    invoke-static {v1, v2}, Landroid/view/SurfaceView;->access$002(Landroid/view/SurfaceView;Z)Z

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_5a

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    # getter for: Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;
    invoke-static {v0}, Landroid/view/SurfaceView;->access$100(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne v0, p3, :cond_3c

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    # getter for: Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;
    invoke-static {v0}, Landroid/view/SurfaceView;->access$100(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne v0, p4, :cond_3c

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    # getter for: Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;
    invoke-static {v0}, Landroid/view/SurfaceView;->access$100(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, p5, :cond_3c

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    # getter for: Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;
    invoke-static {v0}, Landroid/view/SurfaceView;->access$100(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p6, :cond_3c

    return-void

    :cond_3c
    :try_start_3c
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    # getter for: Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;
    invoke-static {v0}, Landroid/view/SurfaceView;->access$100(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    # getter for: Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;
    invoke-static {v1}, Landroid/view/SurfaceView;->access$100(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v1

    # invokes: Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceView;->access$200(Landroid/view/SurfaceView;Landroid/graphics/Rect;J)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_50} :catch_51

    goto :goto_59

    :catch_51
    move-exception v0

    const-string v1, "SurfaceView"

    const-string v2, "Exception from repositionChild"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_59
    return-void

    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public positionLost(J)V
    .registers 11

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isDrawingToBLASTTransaction()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    move v2, v1

    :goto_12
    iget-object v3, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    # getter for: Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/view/SurfaceView;->access$100(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v3, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v3, v3, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v3, :cond_22

    return-void

    :cond_22
    if-eqz v2, :cond_32

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getBLASTSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    goto :goto_38

    :cond_2b
    iget-object v3, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    # getter for: Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;
    invoke-static {v3}, Landroid/view/SurfaceView;->access$300(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    goto :goto_38

    :cond_32
    iget-object v3, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    # getter for: Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;
    invoke-static {v3}, Landroid/view/SurfaceView;->access$300(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    :goto_38
    nop

    iget-object v4, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v4, v4, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v4

    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-lez v5, :cond_61

    if-eqz v0, :cond_61

    if-nez v2, :cond_61

    :try_start_48
    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    if-eqz v5, :cond_61

    iget-object v5, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    # getter for: Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;
    invoke-static {v5}, Landroid/view/SurfaceView;->access$300(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    iget-object v6, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getRenderSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v5, v6, v7, p1, p2}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;J)Landroid/view/SurfaceControl$Transaction;

    :cond_61
    iget-object v5, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v5, v5, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    # getter for: Landroid/view/SurfaceView;->mRtReleaseSurfaces:Z
    invoke-static {v5}, Landroid/view/SurfaceView;->access$400(Landroid/view/SurfaceView;)Z

    move-result v5

    if-eqz v5, :cond_98

    iget-object v5, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    # setter for: Landroid/view/SurfaceView;->mRtReleaseSurfaces:Z
    invoke-static {v5, v1}, Landroid/view/SurfaceView;->access$402(Landroid/view/SurfaceView;Z)Z

    iget-object v5, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    # getter for: Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;
    invoke-static {v5}, Landroid/view/SurfaceView;->access$300(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    iget-object v6, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    # getter for: Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;
    invoke-static {v5}, Landroid/view/SurfaceView;->access$300(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    iget-object v6, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v5, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iput-object v6, v5, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    :cond_98
    iget-object v5, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    # setter for: Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z
    invoke-static {v5, v1}, Landroid/view/SurfaceView;->access$002(Landroid/view/SurfaceView;Z)Z

    monitor-exit v4
    :try_end_9e
    .catchall {:try_start_48 .. :try_end_9e} :catchall_ac

    if-eqz v2, :cond_a2

    if-nez v0, :cond_ab

    :cond_a2
    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    # getter for: Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;
    invoke-static {v1}, Landroid/view/SurfaceView;->access$300(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_ab
    return-void

    :catchall_ac
    move-exception v1

    :try_start_ad
    monitor-exit v4
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v1
.end method
