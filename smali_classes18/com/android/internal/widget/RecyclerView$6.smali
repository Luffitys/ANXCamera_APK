.class Lcom/android/internal/widget/RecyclerView$6;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/android/internal/widget/AdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/RecyclerView;->initAdapterManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/RecyclerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchUpdate(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 7

    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2e

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1e

    const/16 v2, 0x8

    if-eq v0, v2, :cond_10

    goto :goto_4a

    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsMoved(Lcom/android/internal/widget/RecyclerView;III)V

    goto :goto_4a

    :cond_1e
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v4, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsUpdated(Lcom/android/internal/widget/RecyclerView;IILjava/lang/Object;)V

    goto :goto_4a

    :cond_2e
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsRemoved(Lcom/android/internal/widget/RecyclerView;II)V

    goto :goto_4a

    :cond_3c
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsAdded(Lcom/android/internal/widget/RecyclerView;II)V

    nop

    :goto_4a
    return-void
.end method

.method public findViewHolder(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 6

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_18

    return-object v1

    :cond_18
    return-object v0
.end method

.method public markViewHoldersUpdated(IILjava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public offsetPositionsForMove(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public onDispatchFirstPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$6;->dispatchUpdate(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method public onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$6;->dispatchUpdate(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method
