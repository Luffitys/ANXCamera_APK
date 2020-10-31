.class public Lcom/miui/internal/widget/ActionBarMovableLayout;
.super Lcom/miui/internal/widget/ActionBarOverlayLayout;
.source "ActionBarMovableLayout.java"


# static fields
.field private static final DBG:Z = false

.field public static final DEFAULT_SPRING_BACK_DURATION:I = 0x320

.field public static final STATE_DOWN:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UP:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivePointerId:I

.field private mFlinging:Z

.field private mInitialMotionY:I

.field private mInitialMotionYSet:Z

.field private mIsBeingDragged:Z

.field private mIsSpringBackEnabled:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private final mMaximumVelocity:I

.field private final mMinimumVelocity:I

.field private mMotionY:I

.field private mOnScrollListener:Lmiui/app/ActionBar$OnScrollListener;

.field private mOverScrollDistance:I

.field private mScrollRange:I

.field private mScrollStart:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mState:I

.field private mTabScrollView:Landroid/view/View;

.field private mTabViewVisibility:I

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/miui/internal/widget/ActionBarMovableLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mState:I

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollRange:I

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mInitialMotionY:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabViewVisibility:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    sget-object v1, Lcom/miui/internal/R$styleable;->ActionBarMovableLayout:[I

    sget v2, Lcom/miui/internal/R$attr;->actionBarMovableLayoutStyle:I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget-boolean v2, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v2, :cond_26

    sget v2, Lcom/miui/internal/R$styleable;->ActionBarMovableLayout_overScrollRange:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    :cond_26
    sget v2, Lcom/miui/internal/R$styleable;->ActionBarMovableLayout_scrollRange:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollRange:I

    sget v2, Lcom/miui/internal/R$styleable;->ActionBarMovableLayout_scrollStart:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mInitialMotionY:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTouchSlop:I

    new-instance v2, Landroid/widget/OverScroller;

    invoke-direct {v2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMaximumVelocity:I

    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ActionBarMovableLayout;->setOverScrollMode(I)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private inChild(Landroid/view/View;II)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-ne p1, v5, :cond_30

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/miui/internal/widget/ActionBarContainer;->getTop()I

    move-result v5

    add-int/2addr v1, v5

    add-int/2addr v3, v5

    :cond_30
    if-lt p3, v1, :cond_39

    if-ge p3, v3, :cond_39

    if-lt p2, v2, :cond_39

    if-ge p2, v4, :cond_39

    const/4 v0, 0x1

    :cond_39
    return v0
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_e

    :cond_b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_e
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private isTabViewVisibilityChanged()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->ensureTabScrollView()V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabViewVisibility:I

    if-eq v1, v2, :cond_13

    iput v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabViewVisibility:I

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_2c

    if-nez v0, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_2c
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method


# virtual methods
.method protected applyTranslationY(F)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->motionToTranslation(F)F

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->ensureTabScrollView()V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-eqz v1, :cond_13

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_13
    return-void
.end method

.method public computeScroll()V
    .registers 15

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    if-eq v0, v1, :cond_29

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v12

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v13

    const/4 v3, 0x0

    sub-int v4, v1, v0

    const/4 v5, 0x0

    iget v6, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v2, p0

    move v8, v12

    move v10, v13

    invoke-virtual/range {v2 .. v11}, Lcom/miui/internal/widget/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    :cond_29
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->postInvalidateOnAnimation()V

    goto :goto_37

    :cond_2d
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mFlinging:Z

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->springBack()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mFlinging:Z

    :cond_37
    :goto_37
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v0

    return v0
.end method

.method protected computeVerticalVelocity()I
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMaximumVelocity:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method ensureTabScrollView()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    return-void
.end method

.method protected fling(I)V
    .registers 15

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v11

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v12

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v4, p1

    move v8, v12

    move v10, v11

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mFlinging:Z

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->postInvalidate()V

    return-void
.end method

.method public getOverScrollDistance()I
    .registers 2

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public getScrollRange()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollRange:I

    return v0
.end method

.method public getScrollStart()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollStart:I

    return v0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 11

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mContentView:Landroid/view/View;

    if-eq p1, v0, :cond_8

    invoke-super/range {p0 .. p5}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v2, v3}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getChildMeasureSpec(III)I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollStart:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getChildMeasureSpec(III)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected motionToTranslation(F)F
    .registers 4

    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollRange:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollStart:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->ensureTabScrollView()V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :cond_22
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    sget v0, Lcom/miui/internal/R$id;->content_mask:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_10

    return v1

    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1d

    iget-boolean v5, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    if-eqz v5, :cond_1d

    return v4

    :cond_1d
    and-int/lit16 v5, v2, 0xff

    if-eqz v5, :cond_50

    if-eq v5, v4, :cond_44

    if-eq v5, v3, :cond_30

    const/4 v3, 0x3

    if-eq v5, v3, :cond_44

    const/4 v1, 0x6

    if-eq v5, v1, :cond_2c

    goto :goto_70

    :cond_2c
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_70

    :cond_30
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_70

    iput-boolean v4, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScrollBegin()V

    goto :goto_70

    :cond_44
    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->recycleVelocityTracker()V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScrollEnd()V

    goto :goto_70

    :cond_50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionX:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->initOrResetVelocityTracker()V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1, v4}, Landroid/widget/OverScroller;->forceFinished(Z)V

    nop

    :cond_70
    :goto_70
    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    invoke-super/range {p0 .. p5}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mInitialMotionYSet:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->isTabViewVisibilityChanged()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v1

    :goto_12
    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mInitialMotionYSet:Z

    if-nez v2, :cond_24

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mInitialMotionY:I

    if-gez v2, :cond_1e

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollRange:I

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mInitialMotionY:I

    :cond_1e
    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mInitialMotionY:I

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mInitialMotionYSet:Z

    :cond_24
    if-eqz v0, :cond_2c

    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->applyTranslationY(F)V

    :cond_2c
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 9

    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScroll(F)V

    iput p2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    if-nez p2, :cond_27

    if-eqz p4, :cond_27

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->computeVerticalVelocity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMinimumVelocity:I

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_27

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiui/app/ActionBar$OnScrollListener;

    if-eqz v1, :cond_27

    neg-int v2, v0

    int-to-float v2, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    const/16 v3, 0x1f4

    invoke-interface {v1, v2, v3}, Lmiui/app/ActionBar$OnScrollListener;->onFling(FI)V

    :cond_27
    return-void
.end method

.method protected onScroll(F)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->applyTranslationY(F)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiui/app/ActionBar$OnScrollListener;

    if-eqz v0, :cond_11

    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mState:I

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollRange:I

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-interface {v0, v1, v2}, Lmiui/app/ActionBar$OnScrollListener;->onScroll(IF)V

    :cond_11
    return-void
.end method

.method protected onScrollBegin()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiui/app/ActionBar$OnScrollListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lmiui/app/ActionBar$OnScrollListener;->onStartScroll()V

    :cond_7
    return-void
.end method

.method protected onScrollEnd()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mState:I

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiui/app/ActionBar$OnScrollListener;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lmiui/app/ActionBar$OnScrollListener;->onStopScroll()V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 25

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    iget-object v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v0, v12, 0xff

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v0, :cond_eb

    const/4 v15, -0x1

    if-eq v0, v13, :cond_b8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_27

    goto/16 :goto_f8

    :cond_27
    invoke-direct/range {p0 .. p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    goto/16 :goto_f8

    :cond_3a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    goto/16 :goto_f8

    :cond_4e
    iget-boolean v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_a3

    iget v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    if-ne v9, v15, :cond_5b

    return v14

    :cond_5b
    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget v7, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    sub-float v0, v8, v7

    float-to-int v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v17

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move v2, v6

    move/from16 v20, v6

    move/from16 v6, v16

    move/from16 v21, v7

    move/from16 v7, v18

    move v13, v8

    move/from16 v8, v17

    move/from16 v22, v9

    move/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Lcom/miui/internal/widget/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    iput v13, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    if-eqz v0, :cond_a2

    iget v1, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    if-nez v1, :cond_9d

    iput-boolean v14, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    iput v15, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    invoke-virtual {v11, v14}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_9d
    iget-object v1, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :cond_a2
    goto :goto_f8

    :cond_a3
    invoke-virtual/range {p0 .. p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f8

    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    iget-object v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScrollBegin()V

    goto :goto_f8

    :cond_b8
    iget-boolean v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_f8

    iput-boolean v14, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    iput v15, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->computeVerticalVelocity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMinimumVelocity:I

    if-le v1, v2, :cond_d0

    invoke-virtual {v10, v0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->fling(I)V

    goto :goto_ea

    :cond_d0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v1

    iget-object v3, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    iget v5, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v1

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_e7

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->invalidate()V

    goto :goto_ea

    :cond_e7
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->springBack()V

    :goto_ea
    goto :goto_f8

    :cond_eb
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    invoke-virtual {v11, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    nop

    :cond_f8
    :goto_f8
    const/4 v0, 0x1

    return v0
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .registers 20

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollMode()I

    move-result v0

    nop

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->computeVerticalScrollExtent()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_13

    move v1, v3

    goto :goto_14

    :cond_13
    move v1, v4

    :goto_14
    if-eqz v0, :cond_1c

    if-ne v0, v3, :cond_1b

    if-eqz v1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v3, v4

    :cond_1c
    :goto_1c
    move v2, v3

    add-int v3, p4, p2

    if-nez v2, :cond_23

    const/4 v5, 0x0

    goto :goto_25

    :cond_23
    move/from16 v5, p8

    :goto_25
    const/4 v6, 0x0

    add-int v7, v5, p6

    const/4 v8, 0x0

    if-le v3, v7, :cond_2e

    move v3, v7

    const/4 v8, 0x1

    goto :goto_32

    :cond_2e
    if-gez v3, :cond_32

    const/4 v3, 0x0

    const/4 v8, 0x1

    :cond_32
    :goto_32
    move-object v9, p0

    invoke-virtual {p0, v4, v3, v4, v8}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onOverScrolled(IIZZ)V

    return v8
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public setInitialMotionY(I)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mInitialMotionY:I

    return-void
.end method

.method public setMotionY(I)V
    .registers 3

    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScroll(F)V

    return-void
.end method

.method public setOnScrollListener(Lmiui/app/ActionBar$OnScrollListener;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiui/app/ActionBar$OnScrollListener;

    return-void
.end method

.method public setOverScrollDistance(I)V
    .registers 3

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_6

    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    :cond_6
    return-void
.end method

.method public setScrollRange(I)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollRange:I

    return-void
.end method

.method public setScrollStart(I)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollStart:I

    return-void
.end method

.method public setSpringBackEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    return-void
.end method

.method protected shouldStartScroll(Landroid/view/MotionEvent;)Z
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_b

    return v4

    :cond_b
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-ne v5, v3, :cond_19

    sget-object v3, Lcom/miui/internal/widget/ActionBarMovableLayout;->TAG:Ljava/lang/String;

    const-string v6, "invalid pointer index"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_19
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget v7, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    sub-float v7, v6, v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionX:F

    sub-float v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v9, v9

    iget-object v10, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mContentView:Landroid/view/View;

    float-to-int v11, v3

    float-to-int v12, v6

    invoke-direct {v0, v10, v11, v12}, Lcom/miui/internal/widget/ActionBarMovableLayout;->inChild(Landroid/view/View;II)Z

    move-result v10

    iget-object v11, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    float-to-int v12, v3

    float-to-int v13, v6

    invoke-direct {v0, v11, v12, v13}, Lcom/miui/internal/widget/ActionBarMovableLayout;->inChild(Landroid/view/View;II)Z

    move-result v11

    const/4 v12, 0x1

    if-nez v10, :cond_4b

    if-eqz v11, :cond_49

    goto :goto_4b

    :cond_49
    move v13, v4

    goto :goto_4c

    :cond_4b
    :goto_4b
    move v13, v12

    :goto_4c
    const/4 v14, 0x0

    if-eqz v13, :cond_7d

    iget v15, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTouchSlop:I

    if-le v8, v15, :cond_7d

    if-le v8, v9, :cond_7d

    const/4 v14, 0x1

    iget v15, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    if-nez v15, :cond_6a

    if-gez v7, :cond_5e

    const/4 v14, 0x0

    goto :goto_7d

    :cond_5e
    iget-object v15, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiui/app/ActionBar$OnScrollListener;

    if-eqz v15, :cond_7d

    invoke-interface {v15}, Lmiui/app/ActionBar$OnScrollListener;->onContentScrolled()Z

    move-result v15

    if-eqz v15, :cond_7d

    const/4 v14, 0x0

    goto :goto_7d

    :cond_6a
    if-lez v7, :cond_7d

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v4

    if-lt v15, v4, :cond_7d

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiui/app/ActionBar$OnScrollListener;

    if-eqz v4, :cond_7d

    invoke-interface {v4}, Lmiui/app/ActionBar$OnScrollListener;->onContentScrolled()Z

    move-result v4

    if-eqz v4, :cond_7d

    const/4 v14, 0x0

    :cond_7d
    :goto_7d
    if-eqz v14, :cond_93

    iput v6, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    iput v3, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionX:F

    if-lez v7, :cond_87

    move v4, v12

    goto :goto_88

    :cond_87
    const/4 v4, 0x0

    :goto_88
    iput v4, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mState:I

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_93

    invoke-interface {v4, v12}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_93
    return v14
.end method

.method protected springBack()V
    .registers 9

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    div-int/lit8 v2, v0, 0x2

    if-le v1, v2, :cond_11

    sub-int v1, v0, v1

    goto :goto_12

    :cond_11
    neg-int v1, v1

    :goto_12
    move v6, v1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    const/4 v5, 0x0

    const/16 v7, 0x320

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->postInvalidateOnAnimation()V

    :cond_21
    return-void
.end method
