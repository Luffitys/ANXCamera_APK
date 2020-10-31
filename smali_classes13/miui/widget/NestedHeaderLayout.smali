.class public Lmiui/widget/NestedHeaderLayout;
.super Lmiui/widget/NestedScrollingLayout;
.source "NestedHeaderLayout.java"


# instance fields
.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewId:I

.field private mRangeOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NestedHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NestedHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lmiui/R$styleable;->NestedHeaderLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lmiui/R$styleable;->NestedHeaderLayout_headerView:I

    sget v2, Lmiui/R$id;->header_view:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/NestedHeaderLayout;->mHeaderViewId:I

    sget v1, Lmiui/R$styleable;->NestedHeaderLayout_rangeOffset:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lmiui/widget/NestedHeaderLayout;->mRangeOffset:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Lmiui/widget/NestedScrollingLayout;->onFinishInflate()V

    iget v0, p0, Lmiui/widget/NestedHeaderLayout;->mHeaderViewId:I

    invoke-virtual {p0, v0}, Lmiui/widget/NestedHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_e

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The headerView attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Lmiui/widget/NestedScrollingLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lmiui/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/NestedHeaderLayout;->mRangeOffset:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiui/widget/NestedHeaderLayout;->setScrollingRange(II)V

    return-void
.end method

.method protected onScrollingProgressUpdated(I)V
    .registers 5

    invoke-super {p0, p1}, Lmiui/widget/NestedScrollingLayout;->onScrollingProgressUpdated(I)V

    iget-object v0, p0, Lmiui/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v0, p0, Lmiui/widget/NestedHeaderLayout;->mScrollableView:Landroid/view/View;

    iget-object v1, p0, Lmiui/widget/NestedHeaderLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lmiui/widget/NestedHeaderLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method
