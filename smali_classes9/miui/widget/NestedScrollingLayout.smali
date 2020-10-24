.class public Lmiui/widget/NestedScrollingLayout;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/widget/Scroller;

    invoke-direct {p3, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lmiui/widget/NestedScrollingLayout;->mScroller:Landroid/widget/Scroller;

    sget-object p3, Lmiui/R$styleable;->NestedScrollingLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiui/R$styleable;->NestedScrollingLayout_scrollableView:I

    const p3, 0x102000a

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NestedScrollingLayout;->mScrollableViewId:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private dispatchScrollingProgressUpdated()V
    .locals 1

    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-virtual {p0, v0}, Lmiui/widget/NestedScrollingLayout;->onScrollingProgressUpdated(I)V

    return-void
.end method

.method private doScroll()V
    .locals 7

    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollTarget:I

    iget v3, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lmiui/widget/NestedScrollingLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    sub-int v5, v0, v3

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    :cond_0
    return-void
.end method

.method private prepareToScroll(I)V
    .locals 1

    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmiui/widget/NestedScrollingLayout;->mNeedScroll:Z

    iput p1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollTarget:I

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    iget-object v0, p0, Lmiui/widget/NestedScrollingLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NestedScrollingLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-direct {p0}, Lmiui/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lmiui/widget/NestedScrollingLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/widget/NestedScrollingLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lmiui/widget/NestedScrollingLayout;->mNeedScroll:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lmiui/widget/NestedScrollingLayout;->doScroll()V

    :cond_2
    return p1
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollableViewId:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The scrollableView attribute is required and must refer to a valid child."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lmiui/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    if-eqz p4, :cond_0

    iget p1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    iget p2, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingTo:I

    if-ge p1, p2, :cond_0

    iget p2, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingFrom:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/4 p2, 0x0

    cmpl-float p2, p3, p2

    if-lez p2, :cond_1

    iget p2, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingFrom:I

    goto :goto_1

    :cond_1
    iget p2, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingTo:I

    :goto_1
    invoke-direct {p0, p2}, Lmiui/widget/NestedScrollingLayout;->prepareToScroll(I)V

    :cond_2
    iput-boolean p1, p0, Lmiui/widget/NestedScrollingLayout;->mWasNestedFlung:Z

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onNestedPreScroll(Landroid/view/View;II[I)V

    iget p2, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingFrom:I

    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingTo:I

    iget v1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget p3, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr p3, p2

    const/4 v0, 0x1

    aput p3, p4, v0

    iput p2, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-direct {p0}, Lmiui/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    aget p0, p4, v0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->stopNestedScroll()V

    :cond_0
    return-void
.end method

.method protected onScrollingProgressUpdated(I)V
    .locals 0

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    iget-boolean p1, p0, Lmiui/widget/NestedScrollingLayout;->mWasNestedFlung:Z

    if-nez p1, :cond_1

    iget p1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    iget v0, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingFrom:I

    iget v1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingTo:I

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lmiui/widget/NestedScrollingLayout;->prepareToScroll(I)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/widget/NestedScrollingLayout;->mWasNestedFlung:Z

    return-void
.end method

.method public setScrollingRange(II)V
    .locals 1

    if-le p1, p2, :cond_0

    const-string p1, "NestedScrollingLayout"

    const-string v0, "wrong scrolling range: [%d, %d], making from=to"

    invoke-static {p1, v0}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move p1, p2

    :cond_0
    iput p1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingFrom:I

    iput p2, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingTo:I

    iget p2, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    if-ge p2, p1, :cond_1

    iput p1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-direct {p0}, Lmiui/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    :cond_1
    iget p1, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    iget p2, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingTo:I

    if-le p1, p2, :cond_2

    iput p2, p0, Lmiui/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-direct {p0}, Lmiui/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    :cond_2
    return-void
.end method
