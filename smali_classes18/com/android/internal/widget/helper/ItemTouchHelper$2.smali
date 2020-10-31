.class Lcom/android/internal/widget/helper/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 10

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_7f

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-nez v3, :cond_a6

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v3, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-result-object v3

    if-eqz v3, :cond_7e

    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v5, v4, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    iget v6, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v5, v4, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    iget v6, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->endRecoverAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)I

    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v4, v4, Lcom/android/internal/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v5, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v4, v4, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v6, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    :cond_6e
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v6, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v5, v4, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v4, p2, v5, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    :cond_7e
    goto :goto_a6

    :cond_7f
    const/4 v3, 0x3

    const/4 v4, -0x1

    if-eq v0, v3, :cond_9c

    if-ne v0, v1, :cond_86

    goto :goto_9c

    :cond_86
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-eq v3, v4, :cond_a6

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-ltz v3, :cond_a6

    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v4, v0, p2, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    goto :goto_a6

    :cond_9c
    :goto_9c
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput v4, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    :cond_a6
    :goto_a6
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_b3

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_b3
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_ba

    goto :goto_bb

    :cond_ba
    move v1, v2

    :goto_bb
    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 11

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_14
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    return-void

    :cond_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v2, v2, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ltz v2, :cond_2f

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v3, v0, p2, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    :cond_2f
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-nez v3, :cond_36

    return-void

    :cond_36
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_9b

    const/4 v6, 0x2

    if-eq v0, v6, :cond_73

    const/4 v6, 0x3

    if-eq v0, v6, :cond_65

    const/4 v1, 0x6

    if-eq v0, v1, :cond_44

    goto :goto_a6

    :cond_44
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v7, v7, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v6, v7, :cond_a6

    if-nez v1, :cond_55

    move v4, v5

    :cond_55
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v7, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v5, p2, v7, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    goto :goto_a6

    :cond_65
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_9b

    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_9b

    :cond_73
    if-ltz v2, :cond_a6

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v4, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v1, p2, v4, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper;->moveIfNecessary(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v4, v4, Lcom/android/internal/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    goto :goto_a6

    :cond_9b
    :goto_9b
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput v1, v4, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    nop

    :cond_a6
    :goto_a6
    return-void
.end method
