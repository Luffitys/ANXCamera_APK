.class public Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;
.super Landroidx/recyclerview/widget/SnapHelper;
.source ""


# instance fields
.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private snapFromFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

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

.method protected createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;
    .locals 0

    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lcom/android/camera/fragment/vv/page/PagerGridSmoothScroller;

    iget-object p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/vv/page/PagerGridSmoothScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p1
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
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

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
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

    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->findNextPageFirstPos()I

    move-result p0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/vv/page/PagerConfig;->getFlingThreshold()I

    move-result p0

    neg-int p0, p0

    if-ge p2, p0, :cond_3

    :goto_1
    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->findPrePageFirstPos()I

    move-result p0

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->canScrollVertically()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/camera/fragment/vv/page/PagerConfig;->getFlingThreshold()I

    move-result p0

    if-le p3, p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/fragment/vv/page/PagerConfig;->getFlingThreshold()I

    move-result p0

    neg-int p0, p0

    if-ge p3, p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    :goto_2
    return p0
.end method

.method public onFling(II)Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

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
    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->snapFromFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z

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
