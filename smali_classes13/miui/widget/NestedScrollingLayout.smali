.class public Lmiui/widget/NestedScrollingLayout;
.super Landroid/widget/FrameLayout;
.source "NestedScrollingLayout.java"


# static fields
.field private static final OFFSET_ANIMATION_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "NestedScrollingLayout"


# instance fields
.field private mNeedScroll:Z

.field private mScrollTarget:I

.field protected mScrollableView:Landroid/view/View;

.field private mScrollableViewId:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingFrom:I

.field private mScrollingProgress:I

.field private mScrollingTo:I

.field private mWasNestedFlung:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/widget/NestedScrollingLayout;->mScroller:Landroid/widget/Scroller;

    sget-object v0, Lmiui/R$styleable;->NestedScrollingLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lmiui/R$styleable;->NestedScrollingLayout_scrollableView:I

    const v2, 0x102000a

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollableViewId:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private dispatchScrollingProgressUpdated()V
    .registers 2

    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-virtual {p0, v0}, Lmiui/widget/NestedScrollingLayout;->onScrollingProgressUpdated(I)V

    return-void
.end method

.method private doScroll()V
    .registers 8

    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollTarget:I

    iget v3, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    if-eq v0, v3, :cond_14

    iget-object v1, p0, Lmiui/widget/NestedScrollingLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    sub-int v5, v0, v3

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lmiui/widget/NestedScrollingLayout;->postInvalidate()V

    :cond_14
    return-void
.end method

.method private prepareToScroll(I)V
    .registers 3

    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Lmiui/widget/NestedScrollingLayout;->mNeedScroll:Z

    iput p1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollTarget:I

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    iget-object v0, p0, Lmiui/widget/NestedScrollingLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lmiui/widget/NestedScrollingLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-direct {p0}, Lmiui/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    invoke-virtual {p0}, Lmiui/widget/NestedScrollingLayout;->postInvalidateOnAnimation()V

    :cond_19
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v1, p0, Lmiui/widget/NestedScrollingLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lmiui/widget/NestedScrollingLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_13
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1d

    const/4 v2, 0x3

    if-ne v0, v2, :cond_24

    :cond_1d
    iget-boolean v2, p0, Lmiui/widget/NestedScrollingLayout;->mNeedScroll:Z

    if-eqz v2, :cond_24

    invoke-direct {p0}, Lmiui/widget/NestedScrollingLayout;->doScroll()V

    :cond_24
    return v1
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollableViewId:I

    invoke-virtual {p0, v0}, Lmiui/widget/NestedScrollingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The scrollableView attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lmiui/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 7

    if-eqz p4, :cond_e

    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    iget v1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingTo:I

    if-ge v0, v1, :cond_e

    iget v1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingFrom:I

    if-le v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_1e

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_19

    iget v1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingFrom:I

    goto :goto_1b

    :cond_19
    iget v1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingTo:I

    :goto_1b
    invoke-direct {p0, v1}, Lmiui/widget/NestedScrollingLayout;->prepareToScroll(I)V

    :cond_1e
    iput-boolean v0, p0, Lmiui/widget/NestedScrollingLayout;->mWasNestedFlung:Z

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onNestedPreScroll(Landroid/view/View;II[I)V

    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingFrom:I

    iget v1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingTo:I

    iget v2, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr v1, v0

    const/4 v2, 0x1

    aput v1, p4, v2

    iput v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-direct {p0}, Lmiui/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    aget v1, p4, v2

    if-nez v1, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->stopNestedScroll()V

    :cond_24
    return-void
.end method

.method protected onScrollingProgressUpdated(I)V
    .registers 2

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    const/4 v0, 0x2

    if-eq p3, v0, :cond_c

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    iget-boolean v0, p0, Lmiui/widget/NestedScrollingLayout;->mWasNestedFlung:Z

    if-nez v0, :cond_18

    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    iget v1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingFrom:I

    iget v2, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingTo:I

    add-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    if-le v0, v3, :cond_14

    move v1, v2

    :cond_14
    move v0, v1

    invoke-direct {p0, v0}, Lmiui/widget/NestedScrollingLayout;->prepareToScroll(I)V

    :cond_18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/NestedScrollingLayout;->mWasNestedFlung:Z

    return-void
.end method

.method public setScrollingRange(II)V
    .registers 5

    if-le p1, p2, :cond_a

    const-string v0, "NestedScrollingLayout"

    const-string v1, "wrong scrolling range: [%d, %d], making from=to"

    invoke-static {v0, v1}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move p1, p2

    :cond_a
    iput p1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingFrom:I

    iput p2, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingTo:I

    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    if-ge v0, p1, :cond_17

    iput p1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-direct {p0}, Lmiui/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    :cond_17
    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    iget v1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingTo:I

    if-le v0, v1, :cond_22

    iput v1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-direct {p0}, Lmiui/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    :cond_22
    return-void
.end method
