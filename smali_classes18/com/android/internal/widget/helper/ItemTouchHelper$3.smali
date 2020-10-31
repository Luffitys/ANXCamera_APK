.class Lcom/android/internal/widget/helper/ItemTouchHelper$3;
.super Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

.field final synthetic val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIFFFFILcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 11

    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput p9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    iput-object p10, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-boolean v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->mOverridden:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    if-gtz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_31

    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->mIsPendingCleanup:Z

    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    if-lez v0, :cond_31

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-virtual {v1, p0, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->postDispatchSwipe(Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_44

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    :cond_44
    return-void
.end method
