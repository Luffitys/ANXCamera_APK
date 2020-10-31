.class public Lmiui/widget/ScrollableViewDrawer;
.super Landroid/widget/FrameLayout;
.source "ScrollableViewDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ScrollableViewDrawer$ScrollViewWrapper;,
        Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;,
        Lmiui/widget/ScrollableViewDrawer$IScrollableView;,
        Lmiui/widget/ScrollableViewDrawer$DrawerListener;
    }
.end annotation


# static fields
.field private static final DEBUG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ScrollableViewDrawer"

.field private static final STATE_CLOSED:I = 0x0

.field private static final STATE_DRAGGING:I = 0x1

.field private static final STATE_OPENED:I = 0x2


# instance fields
.field private mActionPointerId:I

.field private mContentView:Landroid/view/View;

.field private mContentViewId:I

.field private mDetermineHorizontal:Z

.field private mDetermineVertical:Z

.field private mDetermineVerticalDrag:Z

.field private mDividerHeight:I

.field private mDownX:F

.field private mDownY:F

.field private mDragEnabled:Z

.field private mDrawerListener:Lmiui/widget/ScrollableViewDrawer$DrawerListener;

.field private mLastMotionY:F

.field private mScrollDivider:Landroid/graphics/drawable/Drawable;

.field private mScrollableViewId:I

.field private mScrollableViewWrapper:Lmiui/widget/ScrollableViewDrawer$IScrollableView;

.field private mScroller:Landroid/widget/Scroller;

.field private mState:I

.field private mTargetView:Landroid/view/View;

.field private mTargetViewId:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalRange:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ScrollableViewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mActionPointerId:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mTouchSlop:I

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    sget-object v0, Lmiui/R$styleable;->ScrollableViewDrawer:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lmiui/R$styleable;->ScrollableViewDrawer_contentView:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/ScrollableViewDrawer;->mContentViewId:I

    if-eqz v2, :cond_79

    sget v2, Lmiui/R$styleable;->ScrollableViewDrawer_targetView:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/ScrollableViewDrawer;->mTargetViewId:I

    if-eqz v2, :cond_71

    sget v2, Lmiui/R$styleable;->ScrollableViewDrawer_scrollableView:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollableViewId:I

    if-eqz v1, :cond_69

    sget v1, Lmiui/R$styleable;->ScrollableViewDrawer_scrollDivider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_52

    invoke-static {p1}, Lcom/miui/internal/widget/ScrollableViewDrawerHelper;->getDividerDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    :cond_52
    iget-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lmiui/widget/ScrollableViewDrawer;->mDividerHeight:I

    :cond_5c
    sget v1, Lmiui/R$styleable;->ScrollableViewDrawer_dragEnabled:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/ScrollableViewDrawer;->mDragEnabled:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The scrollableView attribute is required and must refer to a valid child."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The targetView attribute is required and must refer to a valid child."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The contentView attribute is required and must refer to a valid child."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private computeStateChanged()V
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v1, :cond_16

    const/4 v0, 0x0

    goto :goto_16

    :cond_b
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v2

    if-ne v1, v2, :cond_16

    iget-boolean v1, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v1, :cond_16

    const/4 v0, 0x2

    :cond_16
    :goto_16
    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mState:I

    if-eq v1, v0, :cond_20

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mState:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->notifyStateChanged()V

    goto :goto_26

    :cond_20
    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->notifyStateChanged()V

    :cond_26
    :goto_26
    return-void
.end method

.method private getVerticalRange()I
    .registers 2

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVerticalRange:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVerticalRange:I

    :cond_c
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVerticalRange:I

    return v0
.end method

.method private notifyStateChanged()V
    .registers 4

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mDrawerListener:Lmiui/widget/ScrollableViewDrawer$DrawerListener;

    if-eqz v0, :cond_23

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mState:I

    if-eqz v1, :cond_20

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    goto :goto_23

    :cond_f
    invoke-interface {v0, p0}, Lmiui/widget/ScrollableViewDrawer$DrawerListener;->onDrawerOpened(Lmiui/widget/ScrollableViewDrawer;)V

    goto :goto_23

    :cond_13
    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    int-to-float v1, v1

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, p0, v1}, Lmiui/widget/ScrollableViewDrawer$DrawerListener;->onDrawerSlide(Lmiui/widget/ScrollableViewDrawer;F)V

    goto :goto_23

    :cond_20
    invoke-interface {v0, p0}, Lmiui/widget/ScrollableViewDrawer$DrawerListener;->onDrawerClosed(Lmiui/widget/ScrollableViewDrawer;)V

    :cond_23
    :goto_23
    return-void
.end method

.method private onTranslationYChange()V
    .registers 3

    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->mDragEnabled:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_11

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->computeStateChanged()V

    :cond_11
    return-void
.end method

.method private shouldInterceptDown()Z
    .registers 2

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_12

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    if-nez v0, :cond_12

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollableViewWrapper:Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    invoke-interface {v0}, Lmiui/widget/ScrollableViewDrawer$IScrollableView;->canScroll()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method


# virtual methods
.method public closeDrawer()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/ScrollableViewDrawer;->closeDrawer(Z)V

    return-void
.end method

.method public closeDrawer(Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    iget-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    neg-int v3, v2

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_11

    :cond_c
    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->onTranslationYChange()V

    :goto_11
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->invalidate()V

    return-void
.end method

.method public computeScroll()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->onTranslationYChange()V

    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->postInvalidateOnAnimation()V

    :cond_1d
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->mDragEnabled:Z

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_de

    if-eq v0, v1, :cond_ce

    const/4 v3, 0x2

    if-eq v0, v3, :cond_45

    const/4 v3, 0x3

    if-eq v0, v3, :cond_ce

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1e

    goto/16 :goto_108

    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->mActionPointerId:I

    if-ne v3, v4, :cond_108

    if-nez v0, :cond_2e

    move v4, v1

    goto :goto_2f

    :cond_2e
    move v4, v2

    :goto_2f
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lmiui/widget/ScrollableViewDrawer;->mActionPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iput v5, p0, Lmiui/widget/ScrollableViewDrawer;->mDownX:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iput v5, p0, Lmiui/widget/ScrollableViewDrawer;->mDownY:F

    iput v5, p0, Lmiui/widget/ScrollableViewDrawer;->mLastMotionY:F

    goto/16 :goto_108

    :cond_45
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mActionPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_55

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lmiui/widget/ScrollableViewDrawer;->mActionPointerId:I

    :cond_55
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->mDownX:F

    sub-float/2addr v3, v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p0, Lmiui/widget/ScrollableViewDrawer;->mDownY:F

    sub-float/2addr v4, v5

    iget-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v5, :cond_be

    iget-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineHorizontal:Z

    if-nez v5, :cond_be

    iget v5, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v6

    if-ne v5, v6, :cond_7b

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_7b

    iput-boolean v1, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    goto :goto_88

    :cond_7b
    iget v5, p0, Lmiui/widget/ScrollableViewDrawer;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_88

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->shouldInterceptDown()Z

    move-result v5

    iput-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    :cond_88
    :goto_88
    iget-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-eqz v5, :cond_9c

    const-string v5, "ScrollableViewDrawer"

    const-string v6, "determine drag"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_9c

    invoke-interface {v5, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9c
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lmiui/widget/ScrollableViewDrawer;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_ad

    iget-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineHorizontal:Z

    if-nez v5, :cond_ad

    iput-boolean v1, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVertical:Z

    :cond_ad
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lmiui/widget/ScrollableViewDrawer;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_be

    iget-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVertical:Z

    if-nez v5, :cond_be

    iput-boolean v1, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineHorizontal:Z

    :cond_be
    iget-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v5, :cond_108

    iget-object v5, p0, Lmiui/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iput v5, p0, Lmiui/widget/ScrollableViewDrawer;->mLastMotionY:F

    goto :goto_108

    :cond_ce
    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v0, :cond_d7

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_d7
    iput-boolean v2, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    iput-boolean v2, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineHorizontal:Z

    iput-boolean v2, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVertical:Z

    goto :goto_108

    :cond_de
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mActionPointerId:I

    iput-boolean v2, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mDownX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mDownY:F

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mLastMotionY:F

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    nop

    :cond_108
    :goto_108
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_114

    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-eqz v0, :cond_113

    goto :goto_114

    :cond_113
    move v1, v2

    :cond_114
    :goto_114
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 11

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    if-ne p2, v0, :cond_31

    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    add-int/2addr v3, v2

    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->mDividerHeight:I

    if-lez v4, :cond_2b

    iget-object v5, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    sub-int v4, v3, v4

    invoke-virtual {v5, v0, v4, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->mDividerHeight:I

    sub-int/2addr v3, v4

    :cond_2b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_31
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    iget-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    if-ne p2, v1, :cond_3c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3c
    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentViewId:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScrollableViewDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_62

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mTargetViewId:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScrollableViewDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_5a

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollableViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_52

    instance-of v1, v0, Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    if-eqz v1, :cond_2c

    move-object v1, v0

    check-cast v1, Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    iput-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollableViewWrapper:Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    goto :goto_49

    :cond_2c
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_3b

    new-instance v1, Lmiui/widget/ScrollableViewDrawer$ScrollViewWrapper;

    move-object v2, v0

    check-cast v2, Landroid/widget/ScrollView;

    invoke-direct {v1, v2}, Lmiui/widget/ScrollableViewDrawer$ScrollViewWrapper;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollableViewWrapper:Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    goto :goto_49

    :cond_3b
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_4a

    new-instance v1, Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;

    move-object v2, v0

    check-cast v2, Landroid/widget/AdapterView;

    invoke-direct {v1, v2}, Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollableViewWrapper:Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    :goto_49
    return-void

    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The scrollableView attribute is must refer to an ScrollView or AdapterView or IScrollableViewWrapper."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The scrollableView attribute is must refer to an existing child of targetView."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The targetView attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The contentView attribute is must be a direct child of ScrollableViewDrawer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The contentView attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->mDragEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_68

    const/4 v1, 0x2

    if-eq v0, v1, :cond_30

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    goto/16 :goto_ae

    :cond_10
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v1

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    neg-int v3, v1

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->invalidate()V

    goto :goto_29

    :cond_26
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->computeStateChanged()V

    :goto_29
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_ae

    :cond_30
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mActionPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_45

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiui/widget/ScrollableViewDrawer;->mActionPointerId:I

    :cond_45
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v3, p0, Lmiui/widget/ScrollableViewDrawer;->mLastMotionY:F

    sub-float v3, v1, v3

    float-to-int v3, v3

    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    add-int/2addr v3, v4

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    iput v1, p0, Lmiui/widget/ScrollableViewDrawer;->mLastMotionY:F

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->onTranslationYChange()V

    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->invalidate()V

    goto :goto_ae

    :cond_68
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    if-eqz v0, :cond_a5

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v1

    if-eq v0, v1, :cond_a5

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_99

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v3

    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_a1

    :cond_99
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    neg-int v3, v1

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    :goto_a1
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->invalidate()V

    goto :goto_a8

    :cond_a5
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->computeStateChanged()V

    :goto_a8
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    nop

    :goto_ae
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public openDrawer()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/ScrollableViewDrawer;->openDrawer(Z)V

    return-void
.end method

.method public openDrawer(Z)V
    .registers 6

    if-eqz p1, :cond_12

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v2

    iget v3, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_1b

    :cond_12
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->onTranslationYChange()V

    :goto_1b
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->invalidate()V

    return-void
.end method

.method public resetState()V
    .registers 1

    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->closeDrawer()V

    return-void
.end method

.method public setDragEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/ScrollableViewDrawer;->mDragEnabled:Z

    return-void
.end method

.method public setDrawerListener(Lmiui/widget/ScrollableViewDrawer$DrawerListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/ScrollableViewDrawer;->mDrawerListener:Lmiui/widget/ScrollableViewDrawer$DrawerListener;

    return-void
.end method
