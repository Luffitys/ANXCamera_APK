.class public Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;
.super Landroid/support/v7/widget/SnapHelper;
.source "PagerGridSnapHelper.java"


# instance fields
.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private snapFromFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)Z
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->createSnapScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/LinearSmoothScroller;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->findTargetSnapPosition(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/support/v7/widget/SnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    const/4 p2, 0x2

    new-array p2, p2, [I

    instance-of v0, p1, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getSnapOffset(I)[I

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method protected createSnapScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/LinearSmoothScroller;
    .locals 0

    instance-of p1, p1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lcom/android/camera/fragment/vv/page/PagerGridSmoothScroller;

    iget-object p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/vv/page/PagerGridSmoothScroller;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-object p1
.end method

.method public findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    instance-of p0, p1, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;

    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->findSnapView()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public findTargetSnapPosition(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)I
    .locals 0

    if-eqz p1, :cond_3

    instance-of p0, p1, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;

    if-eqz p0, :cond_3

    check-cast p1, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;

    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->canScrollHorizontally()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/camera/fragment/vv/page/PagerConfig;->getFlingThreshold()I

    move-result p0

    if-le p2, p0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->findNextPageFirstPos()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/vv/page/PagerConfig;->getFlingThreshold()I

    move-result p0

    neg-int p0, p0

    if-ge p2, p0, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->findPrePageFirstPos()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->canScrollVertically()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/camera/fragment/vv/page/PagerConfig;->getFlingThreshold()I

    move-result p0

    if-le p3, p0, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->findNextPageFirstPos()I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/fragment/vv/page/PagerConfig;->getFlingThreshold()I

    move-result p0

    neg-int p0, p0

    if-ge p3, p0, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->findPrePageFirstPos()I

    move-result p0

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public onFling(II)Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/android/camera/fragment/vv/page/PagerConfig;->getFlingThreshold()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_3

    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->snapFromFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public setFlingThreshold(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/camera/fragment/vv/page/PagerConfig;->setFlingThreshold(I)V

    return-void
.end method
