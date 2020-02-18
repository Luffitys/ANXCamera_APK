.class public Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "PagerGridLayoutManager.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;,
        Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$OrientationType;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PagerGridLayoutManager"

.field public static final VERTICAL:I


# instance fields
.field private mAllowContinuousScroll:Z

.field private mChangeSelectInScrolling:Z

.field private mColumns:I

.field private mHeightUsed:I

.field private mItemFrames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLastPageCount:I

.field private mLastPageIndex:I

.field private mMaxScrollX:I

.field private mMaxScrollY:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private mOnePageSize:I

.field private mOrientation:I
    .annotation build Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$OrientationType;
    .end annotation
.end field

.field private mPageListener:Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRows:I

.field private mScrollState:I

.field private mWidthUsed:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x64L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x64L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$OrientationType;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetX:I

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetY:I

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mItemWidth:I

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mItemHeight:I

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mWidthUsed:I

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mHeightUsed:I

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mScrollState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mAllowContinuousScroll:Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mChangeSelectInScrolling:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mLastPageCount:I

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mLastPageIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mPageListener:Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mItemFrames:Landroid/util/SparseArray;

    iput p3, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOrientation:I

    iput p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mRows:I

    iput p2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mColumns:I

    iget p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mRows:I

    iget p2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mColumns:I

    mul-int/2addr p1, p2

    iput p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOnePageSize:I

    return-void
.end method

.method private addOrRemove(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/graphics/Rect;I)V
    .locals 6

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getItemFrameByPosition(I)Landroid/graphics/Rect;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    iget p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mWidthUsed:I

    iget p2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mHeightUsed:I

    invoke-virtual {p0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetX:I

    sub-int/2addr p2, v0

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    add-int v2, p2, v0

    iget p2, p3, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetY:I

    sub-int/2addr p2, v0

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    add-int v3, p2, v0

    iget p2, p3, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetX:I

    sub-int/2addr p2, v0

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    add-int v4, p2, v0

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    iget p3, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetY:I

    sub-int/2addr p2, p3

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p1

    add-int v5, p2, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    :goto_0
    return-void
.end method

.method private getItemFrameByPosition(I)Landroid/graphics/Rect;
    .locals 7

    iget-object v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mItemFrames:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOnePageSize:I

    div-int v1, p1, v1

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->canScrollHorizontally()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableWidth()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/lit8 v1, v2, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableHeight()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/lit8 v1, v2, 0x0

    move v6, v3

    move v3, v1

    move v1, v6

    :goto_0
    iget v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOnePageSize:I

    rem-int v2, p1, v2

    iget v4, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mColumns:I

    div-int v5, v2, v4

    mul-int/2addr v4, v5

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mItemWidth:I

    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mItemHeight:I

    mul-int/2addr v5, v2

    add-int/2addr v3, v5

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mItemFrames:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method private getPageIndexByOffset()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->canScrollVertically()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableHeight()I

    move-result v0

    iget p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetY:I

    if-lez p0, :cond_3

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    div-int v1, p0, v0

    rem-int/2addr p0, v0

    div-int/lit8 v0, v0, 0x2

    if-le p0, v0, :cond_3

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableWidth()I

    move-result v0

    iget p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetX:I

    if-lez p0, :cond_3

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    div-int v1, p0, v0

    rem-int/2addr p0, v0

    div-int/lit8 v0, v0, 0x2

    if-le p0, v0, :cond_3

    :goto_0
    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method

.method private getPageIndexByPos(I)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOnePageSize:I

    div-int/2addr p1, p0

    return p1
.end method

.method private getPageLeftTopByPosition(I)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getPageIndexByPos(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableWidth()I

    move-result p0

    mul-int/2addr p1, p0

    aput p1, v0, v3

    aput v3, v0, v2

    goto :goto_0

    :cond_0
    aput v3, v0, v3

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableHeight()I

    move-result p0

    mul-int/2addr p1, p0

    aput p1, v0, v2

    :goto_0
    return-object v0
.end method

.method private getTotalPageCount()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOnePageSize:I

    div-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    iget p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOnePageSize:I

    rem-int/2addr v1, p0

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method private getUsableHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getUsableWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private recycleAndFillItems(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetX:I

    iget v1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mItemWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetY:I

    iget v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mItemHeight:I

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableWidth()I

    move-result v2

    iget v3, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetX:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mItemWidth:I

    add-int/2addr v2, v3

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableHeight()I

    move-result v3

    iget v4, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetY:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mItemHeight:I

    add-int/2addr v3, v4

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mMaxScrollX:I

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mMaxScrollY:I

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableHeight()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    iget v1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOnePageSize:I

    mul-int/2addr v0, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-gez v0, :cond_1

    move v0, v2

    :cond_1
    iget v1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOnePageSize:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    if-le v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    if-eqz p3, :cond_3

    :goto_0
    if-ge v0, v1, :cond_4

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->addOrRemove(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/graphics/Rect;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-lt v1, v0, :cond_4

    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->addOrRemove(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/graphics/Rect;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private setPageCount(I)V
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mPageListener:Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mLastPageCount:I

    if-eq p1, v1, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;->onPageSizeChanged(I)V

    :cond_0
    iput p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mLastPageCount:I

    :cond_1
    return-void
.end method

.method private setPageIndex(IZ)V
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mLastPageIndex:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->isAllowContinuousScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mLastPageIndex:I

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iput p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mLastPageIndex:I

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mChangeSelectInScrolling:Z

    if-nez p2, :cond_3

    return-void

    :cond_3
    if-ltz p1, :cond_4

    iget-object p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mPageListener:Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;->onPageSelect(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOrientation:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getSnapOffset(I)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p1, p0, p1

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    const/4 p1, 0x1

    aget p0, p0, p1

    int-to-float p0, p0

    iput p0, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method findNextPageFirstPos()I
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mLastPageIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getTotalPageCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getTotalPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOnePageSize:I

    mul-int/2addr v0, p0

    return v0
.end method

.method findPrePageFirstPos()I
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mLastPageIndex:I

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOnePageSize:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public findSnapView()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    iget v1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOnePageSize:I

    mul-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-ne v3, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public getOffsetX()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetX:I

    return p0
.end method

.method public getOffsetY()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetY:I

    return p0
.end method

.method getSnapOffset(I)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getPageLeftTopByPosition(I)[I

    move-result-object p1

    const/4 v1, 0x0

    aget v2, p1, v1

    iget v3, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetX:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    aget p1, p1, v1

    iget p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetY:I

    sub-int/2addr p1, p0

    aput p1, v0, v1

    return-object v0
.end method

.method public isAllowContinuousScroll()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mAllowContinuousScroll:Z

    return p0
.end method

.method public nextPage()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->scrollToPage(I)V

    return-void
.end method

.method public onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->setPageCount(I)V

    invoke-direct {p0, v1, v1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->setPageIndex(IZ)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getTotalPageCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->setPageCount(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->setPageIndex(IZ)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    iget v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOnePageSize:I

    div-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    iget v3, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOnePageSize:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->canScrollHorizontally()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    sub-int/2addr v0, v3

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableWidth()I

    move-result v2

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mMaxScrollX:I

    iput v1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mMaxScrollY:I

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetX:I

    iget v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mMaxScrollX:I

    if-le v0, v2, :cond_4

    iput v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetX:I

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mMaxScrollX:I

    sub-int/2addr v0, v3

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableHeight()I

    move-result v2

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mMaxScrollY:I

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetY:I

    iget v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mMaxScrollY:I

    if-le v0, v2, :cond_4

    iput v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetY:I

    :cond_4
    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mItemWidth:I

    if-gtz v0, :cond_5

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableWidth()I

    move-result v0

    iget v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mColumns:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mItemWidth:I

    :cond_5
    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mItemHeight:I

    if-gtz v0, :cond_6

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableHeight()I

    move-result v0

    iget v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mRows:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mItemHeight:I

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableWidth()I

    move-result v0

    iget v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mItemWidth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mWidthUsed:I

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableHeight()I

    move-result v0

    iget v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mItemHeight:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mHeightUsed:I

    move v0, v1

    :goto_1
    iget v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOnePageSize:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_7

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getItemFrameByPosition(I)Landroid/graphics/Rect;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetX:I

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetY:I

    if-nez v0, :cond_9

    :goto_2
    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOnePageSize:I

    if-ge v1, v0, :cond_9

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-lt v1, v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    iget v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mWidthUsed:I

    iget v4, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mHeightUsed:I

    invoke-virtual {p0, v0, v2, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    invoke-direct {p0, p1, p2, v3}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->recycleAndFillItems(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    :cond_a
    :goto_4
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getTotalPageCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->setPageCount(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getPageIndexByOffset()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->setPageIndex(IZ)V

    return-void
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p4

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p2, v0, :cond_0

    if-lez p1, :cond_0

    move p2, v0

    :cond_0
    if-eq p4, v0, :cond_1

    if-lez p3, :cond_1

    move p4, v0

    :cond_1
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    iput p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mScrollState:I

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getPageIndexByOffset()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->setPageIndex(IZ)V

    :cond_0
    return-void
.end method

.method public prePage()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->scrollToPage(I)V

    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetX:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mMaxScrollX:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    sub-int p1, v2, v0

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    rsub-int/lit8 p1, v0, 0x0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetX:I

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->setPageIndex(IZ)V

    neg-int v0, p1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    if-lez p1, :cond_2

    invoke-direct {p0, p2, p3, v1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->recycleAndFillItems(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2, p3, v3}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->recycleAndFillItems(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    :goto_1
    return p1
.end method

.method public scrollToPage(I)V
    .locals 4

    if-ltz p1, :cond_3

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mLastPageCount:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    sget-object p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->TAG:Ljava/lang/String;

    const-string p1, "RecyclerView Not Found!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->canScrollVertically()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableHeight()I

    move-result v0

    mul-int/2addr v0, p1

    iget v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetY:I

    sub-int/2addr v0, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableWidth()I

    move-result v0

    mul-int/2addr v0, p1

    iget v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetX:I

    sub-int/2addr v0, v2

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    invoke-direct {p0, p1, v1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->setPageIndex(IZ)V

    return-void

    :cond_3
    :goto_1
    sget-object v0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pageIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is out of bounds, mast in [0, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mLastPageCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getPageIndexByPos(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->scrollToPage(I)V

    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 4

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetY:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mMaxScrollY:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    sub-int p1, v2, v0

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    rsub-int/lit8 p1, v0, 0x0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetY:I

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->setPageIndex(IZ)V

    neg-int v0, p1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    if-lez p1, :cond_2

    invoke-direct {p0, p2, p3, v1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->recycleAndFillItems(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2, p3, v3}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->recycleAndFillItems(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)V

    :goto_1
    return p1
.end method

.method public setAllowContinuousScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mAllowContinuousScroll:Z

    return-void
.end method

.method public setChangeSelectInScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mChangeSelectInScrolling:Z

    return-void
.end method

.method public setOrientationType(I)I
    .locals 2
    .param p1    # I
        .annotation build Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$OrientationType;
        .end annotation
    .end param
    .annotation build Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$OrientationType;
    .end annotation

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOrientation:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mScrollState:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOrientation:I

    iget-object p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mItemFrames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetX:I

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetY:I

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableHeight()I

    move-result v1

    div-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetX:I

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableWidth()I

    move-result v0

    div-int/2addr p1, v0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableHeight()I

    move-result v0

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOffsetY:I

    iget p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mMaxScrollX:I

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mMaxScrollY:I

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableHeight()I

    move-result v1

    div-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mMaxScrollX:I

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableWidth()I

    move-result v0

    div-int/2addr p1, v0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getUsableHeight()I

    move-result v0

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mMaxScrollY:I

    iget p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOrientation:I

    return p0

    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOrientation:I

    return p0
.end method

.method public setPageListener(Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mPageListener:Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;

    return-void
.end method

.method public smoothNextPage()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->smoothScrollToPage(I)V

    return-void
.end method

.method public smoothPrePage()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->smoothScrollToPage(I)V

    return-void
.end method

.method public smoothScrollToPage(I)V
    .locals 3

    if-ltz p1, :cond_4

    iget v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mLastPageCount:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    sget-object p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->TAG:Ljava/lang/String;

    const-string p1, "RecyclerView Not Found!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v0

    sub-int v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_3

    if-le p1, v0, :cond_2

    add-int/lit8 v0, p1, -0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->scrollToPage(I)V

    goto :goto_0

    :cond_2
    if-ge p1, v0, :cond_3

    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->scrollToPage(I)V

    :cond_3
    :goto_0
    new-instance v0, Lcom/android/camera/fragment/vv/page/PagerGridSmoothScroller;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/vv/page/PagerGridSmoothScroller;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iget v1, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mOnePageSize:I

    mul-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void

    :cond_4
    :goto_1
    sget-object p1, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageIndex is outOfIndex, must in [0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->mLastPageCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->getPageIndexByPos(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->smoothScrollToPage(I)V

    return-void
.end method
