.class Lmiui/widget/DynamicListView$4;
.super Ljava/lang/Object;
.source "DynamicListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DynamicListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentFirstVisibleItem:I

.field private mCurrentScrollState:I

.field private mCurrentVisibleItemCount:I

.field private mPreviousFirstVisibleItem:I

.field private mPreviousVisibleItemCount:I

.field final synthetic this$0:Lmiui/widget/DynamicListView;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .registers 3

    iput-object p1, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    iput v0, p0, Lmiui/widget/DynamicListView$4;->mPreviousVisibleItemCount:I

    return-void
.end method

.method private isScrollCompleted()V
    .registers 2

    iget v0, p0, Lmiui/widget/DynamicListView$4;->mCurrentVisibleItemCount:I

    if-lez v0, :cond_2b

    iget v0, p0, Lmiui/widget/DynamicListView$4;->mCurrentScrollState:I

    if-nez v0, :cond_2b

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mCellIsMobile:Z
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$1000(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$600(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # invokes: Lmiui/widget/DynamicListView;->handleMobileCellScroll()V
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$1100(Lmiui/widget/DynamicListView;)V

    goto :goto_2b

    :cond_1e
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mIsWaitingForScrollFinish:Z
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$1200(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # invokes: Lmiui/widget/DynamicListView;->touchEventsEnded()V
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$1300(Lmiui/widget/DynamicListView;)V

    :cond_2b
    :goto_2b
    return-void
.end method


# virtual methods
.method public checkAndHandleFirstVisibleCellChange()V
    .registers 5

    iget v0, p0, Lmiui/widget/DynamicListView$4;->mCurrentFirstVisibleItem:I

    iget v1, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mCellIsMobile:Z
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$1000(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mMobileItemId:J
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$000(Lmiui/widget/DynamicListView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mMobileItemId:J
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$000(Lmiui/widget/DynamicListView;)J

    move-result-wide v1

    # invokes: Lmiui/widget/DynamicListView;->updateNeighborViewsForID(J)V
    invoke-static {v0, v1, v2}, Lmiui/widget/DynamicListView;->access$1400(Lmiui/widget/DynamicListView;J)V

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # invokes: Lmiui/widget/DynamicListView;->handleCellSwitch()V
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$1500(Lmiui/widget/DynamicListView;)V

    :cond_28
    return-void
.end method

.method public checkAndHandleLastVisibleCellChange()V
    .registers 7

    iget v0, p0, Lmiui/widget/DynamicListView$4;->mCurrentFirstVisibleItem:I

    iget v1, p0, Lmiui/widget/DynamicListView$4;->mCurrentVisibleItemCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    iget v2, p0, Lmiui/widget/DynamicListView$4;->mPreviousVisibleItemCount:I

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_2e

    iget-object v2, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mCellIsMobile:Z
    invoke-static {v2}, Lmiui/widget/DynamicListView;->access$1000(Lmiui/widget/DynamicListView;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mMobileItemId:J
    invoke-static {v2}, Lmiui/widget/DynamicListView;->access$000(Lmiui/widget/DynamicListView;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mMobileItemId:J
    invoke-static {v2}, Lmiui/widget/DynamicListView;->access$000(Lmiui/widget/DynamicListView;)J

    move-result-wide v3

    # invokes: Lmiui/widget/DynamicListView;->updateNeighborViewsForID(J)V
    invoke-static {v2, v3, v4}, Lmiui/widget/DynamicListView;->access$1400(Lmiui/widget/DynamicListView;J)V

    iget-object v2, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # invokes: Lmiui/widget/DynamicListView;->handleCellSwitch()V
    invoke-static {v2}, Lmiui/widget/DynamicListView;->access$1500(Lmiui/widget/DynamicListView;)V

    :cond_2e
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 7

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$800(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$800(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_11
    iput p2, p0, Lmiui/widget/DynamicListView$4;->mCurrentFirstVisibleItem:I

    iput p3, p0, Lmiui/widget/DynamicListView$4;->mCurrentVisibleItemCount:I

    iget v0, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    move v0, p2

    goto :goto_1d

    :cond_1c
    nop

    :goto_1d
    iput v0, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    iget v0, p0, Lmiui/widget/DynamicListView$4;->mPreviousVisibleItemCount:I

    if-ne v0, v1, :cond_26

    iget v0, p0, Lmiui/widget/DynamicListView$4;->mCurrentVisibleItemCount:I

    goto :goto_27

    :cond_26
    nop

    :goto_27
    iput v0, p0, Lmiui/widget/DynamicListView$4;->mPreviousVisibleItemCount:I

    invoke-virtual {p0}, Lmiui/widget/DynamicListView$4;->checkAndHandleFirstVisibleCellChange()V

    invoke-virtual {p0}, Lmiui/widget/DynamicListView$4;->checkAndHandleLastVisibleCellChange()V

    iget v0, p0, Lmiui/widget/DynamicListView$4;->mCurrentFirstVisibleItem:I

    iput v0, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    iget v0, p0, Lmiui/widget/DynamicListView$4;->mCurrentVisibleItemCount:I

    iput v0, p0, Lmiui/widget/DynamicListView$4;->mPreviousVisibleItemCount:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$800(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$800(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_11
    iput p2, p0, Lmiui/widget/DynamicListView$4;->mCurrentScrollState:I

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # setter for: Lmiui/widget/DynamicListView;->mScrollState:I
    invoke-static {v0, p2}, Lmiui/widget/DynamicListView;->access$902(Lmiui/widget/DynamicListView;I)I

    invoke-direct {p0}, Lmiui/widget/DynamicListView$4;->isScrollCompleted()V

    return-void
.end method
