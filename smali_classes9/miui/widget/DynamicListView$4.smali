.class Lmiui/widget/DynamicListView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private mCurrentFirstVisibleItem:I

.field private mCurrentScrollState:I

.field private mCurrentVisibleItemCount:I

.field private mPreviousFirstVisibleItem:I

.field private mPreviousVisibleItemCount:I

.field final synthetic this$0:Lmiui/widget/DynamicListView;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    iput p1, p0, Lmiui/widget/DynamicListView$4;->mPreviousVisibleItemCount:I

    return-void
.end method

.method private isScrollCompleted()V
    .locals 1

    iget v0, p0, Lmiui/widget/DynamicListView$4;->mCurrentVisibleItemCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lmiui/widget/DynamicListView$4;->mCurrentScrollState:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$1000(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$600(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {p0}, Lmiui/widget/DynamicListView;->access$1100(Lmiui/widget/DynamicListView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$1200(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {p0}, Lmiui/widget/DynamicListView;->access$1300(Lmiui/widget/DynamicListView;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public checkAndHandleFirstVisibleCellChange()V
    .locals 4

    iget v0, p0, Lmiui/widget/DynamicListView$4;->mCurrentFirstVisibleItem:I

    iget v1, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$1000(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$000(Lmiui/widget/DynamicListView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$000(Lmiui/widget/DynamicListView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lmiui/widget/DynamicListView;->access$1400(Lmiui/widget/DynamicListView;J)V

    iget-object p0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {p0}, Lmiui/widget/DynamicListView;->access$1500(Lmiui/widget/DynamicListView;)V

    :cond_0
    return-void
.end method

.method public checkAndHandleLastVisibleCellChange()V
    .locals 4

    iget v0, p0, Lmiui/widget/DynamicListView$4;->mCurrentFirstVisibleItem:I

    iget v1, p0, Lmiui/widget/DynamicListView$4;->mCurrentVisibleItemCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    iget v2, p0, Lmiui/widget/DynamicListView$4;->mPreviousVisibleItemCount:I

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$1000(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$000(Lmiui/widget/DynamicListView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$000(Lmiui/widget/DynamicListView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lmiui/widget/DynamicListView;->access$1400(Lmiui/widget/DynamicListView;J)V

    iget-object p0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {p0}, Lmiui/widget/DynamicListView;->access$1500(Lmiui/widget/DynamicListView;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$800(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$800(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    iput p2, p0, Lmiui/widget/DynamicListView$4;->mCurrentFirstVisibleItem:I

    iput p3, p0, Lmiui/widget/DynamicListView$4;->mCurrentVisibleItemCount:I

    iget p1, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    goto :goto_0

    :cond_1
    move p2, p1

    :goto_0
    iput p2, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    iget p1, p0, Lmiui/widget/DynamicListView$4;->mPreviousVisibleItemCount:I

    if-ne p1, p3, :cond_2

    iget p1, p0, Lmiui/widget/DynamicListView$4;->mCurrentVisibleItemCount:I

    :cond_2
    iput p1, p0, Lmiui/widget/DynamicListView$4;->mPreviousVisibleItemCount:I

    invoke-virtual {p0}, Lmiui/widget/DynamicListView$4;->checkAndHandleFirstVisibleCellChange()V

    invoke-virtual {p0}, Lmiui/widget/DynamicListView$4;->checkAndHandleLastVisibleCellChange()V

    iget p1, p0, Lmiui/widget/DynamicListView$4;->mCurrentFirstVisibleItem:I

    iput p1, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    iget p1, p0, Lmiui/widget/DynamicListView$4;->mCurrentVisibleItemCount:I

    iput p1, p0, Lmiui/widget/DynamicListView$4;->mPreviousVisibleItemCount:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$800(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$800(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    iput p2, p0, Lmiui/widget/DynamicListView$4;->mCurrentScrollState:I

    iget-object p1, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {p1, p2}, Lmiui/widget/DynamicListView;->access$902(Lmiui/widget/DynamicListView;I)I

    invoke-direct {p0}, Lmiui/widget/DynamicListView$4;->isScrollCompleted()V

    return-void
.end method
