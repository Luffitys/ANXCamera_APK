.class public Lmiui/widget/ScrollableViewDrawer;
.super Landroid/widget/FrameLayout;
.source ""


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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ScrollableViewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

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

    move-result-object p2

    sget p3, Lmiui/R$styleable;->ScrollableViewDrawer_contentView:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/ScrollableViewDrawer;->mContentViewId:I

    if-eqz p3, :cond_4

    sget p3, Lmiui/R$styleable;->ScrollableViewDrawer_targetView:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/ScrollableViewDrawer;->mTargetViewId:I

    if-eqz p3, :cond_3

    sget p3, Lmiui/R$styleable;->ScrollableViewDrawer_scrollableView:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollableViewId:I

    if-eqz p3, :cond_2

    sget p3, Lmiui/R$styleable;->ScrollableViewDrawer_scrollDivider:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/miui/internal/widget/ScrollableViewDrawerHelper;->getDividerDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object p1, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lmiui/widget/ScrollableViewDrawer;->mDividerHeight:I

    :cond_1
    sget p1, Lmiui/R$styleable;->ScrollableViewDrawer_dragEnabled:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmiui/widget/ScrollableViewDrawer;->mDragEnabled:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The scrollableView attribute is required and must refer to a valid child."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The targetView attribute is required and must refer to a valid child."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The contentView attribute is required and must refer to a valid child."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private computeStateChanged()V
    .locals 3

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget v2, p0, Lmiui/widget/ScrollableViewDrawer;->mState:I

    if-eq v2, v0, :cond_2

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mState:I

    :goto_1
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->notifyStateChanged()V

    goto :goto_2

    :cond_2
    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private getVerticalRange()I
    .locals 1

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVerticalRange:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVerticalRange:I

    :cond_0
    iget p0, p0, Lmiui/widget/ScrollableViewDrawer;->mVerticalRange:I

    return p0
.end method

.method private notifyStateChanged()V
    .locals 3

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mDrawerListener:Lmiui/widget/ScrollableViewDrawer$DrawerListener;

    if-eqz v0, :cond_3

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mState:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Lmiui/widget/ScrollableViewDrawer$DrawerListener;->onDrawerOpened(Lmiui/widget/ScrollableViewDrawer;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    int-to-float v1, v1

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, p0, v1}, Lmiui/widget/ScrollableViewDrawer$DrawerListener;->onDrawerSlide(Lmiui/widget/ScrollableViewDrawer;F)V

    goto :goto_0

    :cond_2
    invoke-interface {v0, p0}, Lmiui/widget/ScrollableViewDrawer$DrawerListener;->onDrawerClosed(Lmiui/widget/ScrollableViewDrawer;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private onTranslationYChange()V
    .locals 2

    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->mDragEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->computeStateChanged()V

    :cond_0
    return-void
.end method

.method private shouldInterceptDown()Z
    .locals 1

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollableViewWrapper:Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    invoke-interface {p0}, Lmiui/widget/ScrollableViewDrawer$IScrollableView;->canScroll()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public closeDrawer()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/ScrollableViewDrawer;->closeDrawer(Z)V

    return-void
.end method

.method public closeDrawer(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    neg-int v2, v1

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_0

    :cond_0
    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->onTranslationYChange()V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public computeScroll()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->onTranslationYChange()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->mDragEnabled:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    if-eq v0, v1, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_a

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->mActionPointerId:I

    if-ne v3, v4, :cond_d

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lmiui/widget/ScrollableViewDrawer;->mActionPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lmiui/widget/ScrollableViewDrawer;->mDownX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mDownY:F

    goto/16 :goto_2

    :cond_3
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mActionPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mActionPointerId:I

    move v0, v2

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->mDownX:F

    sub-float/2addr v3, v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p0, Lmiui/widget/ScrollableViewDrawer;->mDownY:F

    sub-float/2addr v4, v5

    iget-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v5, :cond_9

    iget-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineHorizontal:Z

    if-nez v5, :cond_9

    iget v5, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v6

    if-ne v5, v6, :cond_5

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_5

    iput-boolean v1, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    goto :goto_1

    :cond_5
    iget v5, p0, Lmiui/widget/ScrollableViewDrawer;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_6

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->shouldInterceptDown()Z

    move-result v5

    iput-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    :cond_6
    :goto_1
    iget-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-eqz v5, :cond_7

    const-string v5, "ScrollableViewDrawer"

    const-string v6, "determine drag"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-interface {v5, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lmiui/widget/ScrollableViewDrawer;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    iget-boolean v4, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineHorizontal:Z

    if-nez v4, :cond_8

    iput-boolean v1, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVertical:Z

    :cond_8
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    iget-boolean v3, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVertical:Z

    if-nez v3, :cond_9

    iput-boolean v1, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineHorizontal:Z

    :cond_9
    iget-boolean v3, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v3, :cond_d

    iget-object v3, p0, Lmiui/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    :goto_2
    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mLastMotionY:F

    goto :goto_3

    :cond_a
    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_b
    iput-boolean v2, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    iput-boolean v2, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineHorizontal:Z

    iput-boolean v2, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVertical:Z

    goto :goto_3

    :cond_c
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

    :cond_d
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-boolean p0, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-eqz p0, :cond_e

    goto :goto_4

    :cond_e
    move v1, v2

    :cond_f
    :goto_4
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    add-int/2addr v3, v2

    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->mDividerHeight:I

    if-lez v4, :cond_0

    iget-object v5, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    sub-int v4, v3, v4

    invoke-virtual {v5, v0, v4, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->mDividerHeight:I

    sub-int/2addr v3, v4

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    iget-object p0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    if-ne p2, p0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return p3
.end method

.method protected onFinishInflate()V
    .locals 2

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentViewId:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_5

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mTargetViewId:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollableViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    if-eqz v1, :cond_0

    check-cast v0, Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    iput-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollableViewWrapper:Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    goto :goto_1

    :cond_0
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    new-instance v1, Lmiui/widget/ScrollableViewDrawer$ScrollViewWrapper;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Lmiui/widget/ScrollableViewDrawer$ScrollViewWrapper;-><init>(Landroid/widget/ScrollView;)V

    :goto_0
    iput-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->mScrollableViewWrapper:Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    goto :goto_1

    :cond_1
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_2

    new-instance v1, Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-direct {v1, v0}, Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;-><init>(Landroid/widget/AdapterView;)V

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The scrollableView attribute is must refer to an ScrollView or AdapterView or IScrollableViewWrapper."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The scrollableView attribute is must refer to an existing child of targetView."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The targetView attribute is must refer to an existing child."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The contentView attribute is must be a direct child of ScrollableViewDrawer."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The contentView attribute is must refer to an existing child."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p1, p0, Lmiui/widget/ScrollableViewDrawer;->mDragEnabled:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lmiui/widget/ScrollableViewDrawer;->mDetermineVerticalDrag:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    neg-int v3, v1

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mActionPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mActionPointerId:I

    move v0, v2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mLastMotionY:F

    sub-float v1, v0, v1

    float-to-int v1, v1

    iget v3, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    add-int/2addr v1, v3

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mLastMotionY:F

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->onTranslationYChange()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v3

    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    neg-int v3, v1

    :goto_0
    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->computeStateChanged()V

    :goto_2
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public openDrawer()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/ScrollableViewDrawer;->openDrawer(Z)V

    return-void
.end method

.method public openDrawer(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/widget/ScrollableViewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result v1

    iget v2, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->getVerticalRange()I

    move-result p1

    iput p1, p0, Lmiui/widget/ScrollableViewDrawer;->mYOffset:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->onTranslationYChange()V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public resetState()V
    .locals 0

    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->closeDrawer()V

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/ScrollableViewDrawer;->mDragEnabled:Z

    return-void
.end method

.method public setDrawerListener(Lmiui/widget/ScrollableViewDrawer$DrawerListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ScrollableViewDrawer;->mDrawerListener:Lmiui/widget/ScrollableViewDrawer$DrawerListener;

    return-void
.end method
