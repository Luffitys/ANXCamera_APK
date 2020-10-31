.class Lcom/android/internal/widget/helper/ItemTouchHelper$4;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;->postDispatchSwipe(Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

.field final synthetic val$anim:Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput-object p2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->val$anim:Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    iput p3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->val$swipeDir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->val$anim:Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-boolean v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->val$anim:Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4f

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getItemAnimator()Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_32

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->isRunning(Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result v1

    if-nez v1, :cond_48

    :cond_32
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->hasRunningRecoverAnim()Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->val$anim:Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-object v2, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->val$swipeDir:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onSwiped(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    goto :goto_4f

    :cond_48
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$4;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_4f
    :goto_4f
    return-void
.end method
