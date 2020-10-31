.class public Lmiui/widget/TriggerViewDrawer;
.super Landroid/widget/RelativeLayout;
.source "TriggerViewDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/TriggerViewDrawer$FixedViewWrapper;,
        Lmiui/widget/TriggerViewDrawer$ScrollViewWrapper;,
        Lmiui/widget/TriggerViewDrawer$AdapterViewWrapper;,
        Lmiui/widget/TriggerViewDrawer$ScrollableView;,
        Lmiui/widget/TriggerViewDrawer$TriggerListener;,
        Lmiui/widget/TriggerViewDrawer$DrawerListener;
    }
.end annotation


# static fields
.field private static final DEBUG_ENABLED:Z = false

.field private static final DETECT_MODE_DONE:I = 0x2

.field private static final DETECT_MODE_OFF:I = 0x0

.field private static final DETECT_MODE_ON:I = 0x1

.field private static final FRICTION:F = 2.0f

.field private static final LOG_TAG:Ljava/lang/String; = "TriggerViewDrawer"

.field private static final TOUCH_MODE_NONE:I = 0x0

.field private static final TOUCH_MODE_SCROLL:I = 0x2

.field private static final TOUCH_MODE_TRANSLATE:I = 0x1


# instance fields
.field private mActionPointerId:I

.field private mAutoClose:Z

.field private mCancelForNestedScroll:Z

.field private mContentDistance:I

.field private mContentView:Landroid/view/View;

.field private mContentViewId:I

.field private mDetectMode:I

.field private mDividerHeight:I

.field private mDownView:Landroid/view/View;

.field private mDownX:F

.field private mDownY:F

.field private mDragEnabled:Z

.field private mDrawerListener:Lmiui/widget/TriggerViewDrawer$DrawerListener;

.field private mLastY:F

.field private mModeScrollDownY:F

.field private final mScrollConsumed:[I

.field private mScrollDivider:Landroid/graphics/drawable/Drawable;

.field private final mScrollOffset:[I

.field private mScrollableViewId:I

.field private mScrollableViewWrapper:Lmiui/widget/TriggerViewDrawer$ScrollableView;

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mTargetView:Landroid/view/View;

.field private mTargetViewAncestor:Landroid/view/View;

.field private mTargetViewId:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTriggerDistance:I

.field private mTriggerListener:Lmiui/widget/TriggerViewDrawer$TriggerListener;

.field private mTriggerOn:Z

.field private mTriggerView:Landroid/view/View;

.field private mTriggerViewId:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/TriggerViewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lmiui/R$attr;->triggerViewDrawerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/TriggerViewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->mActionPointerId:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->mModeScrollDownY:F

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mScrollOffset:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mScrollConsumed:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->mCancelForNestedScroll:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiui/widget/TriggerViewDrawer;->mTouchSlop:I

    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    sget-object v1, Lmiui/R$styleable;->TriggerViewDrawer:[I

    sget v2, Lmiui/R$style;->Widget_TriggerViewDrawer:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lmiui/R$styleable;->TriggerViewDrawer_contentView:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/TriggerViewDrawer;->mContentViewId:I

    sget v2, Lmiui/R$styleable;->TriggerViewDrawer_targetView:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/TriggerViewDrawer;->mTargetViewId:I

    if-eqz v2, :cond_7b

    sget v2, Lmiui/R$styleable;->TriggerViewDrawer_scrollableView:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/TriggerViewDrawer;->mScrollableViewId:I

    sget v2, Lmiui/R$styleable;->TriggerViewDrawer_triggerView:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerViewId:I

    sget v2, Lmiui/R$styleable;->TriggerViewDrawer_triggerDistance:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerDistance:I

    sget v2, Lmiui/R$styleable;->TriggerViewDrawer_scrollDivider:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/TriggerViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6f

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lmiui/widget/TriggerViewDrawer;->mDividerHeight:I

    :cond_6f
    sget v2, Lmiui/R$styleable;->TriggerViewDrawer_dragEnabled:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->mDragEnabled:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The targetView attribute is required and must refer to a valid child."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lmiui/widget/TriggerViewDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method private dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;FF)V
    .registers 7

    invoke-virtual {p2, p3, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    neg-float v0, p3

    neg-float v1, p4

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method private dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;FFI)V
    .registers 7

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {p0, p1, v0, p3, p4}, Lmiui/widget/TriggerViewDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;FF)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;I)V
    .registers 5

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {p0, p1, v0}, Lmiui/widget/TriggerViewDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private drawContentView(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 12

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    if-le v0, v1, :cond_10

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1

    :cond_10
    const/4 v1, 0x0

    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    move v4, v0

    iget v5, p0, Lmiui/widget/TriggerViewDrawer;->mDividerHeight:I

    if-lez v5, :cond_2a

    iget-object v6, p0, Lmiui/widget/TriggerViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    sub-int v5, v4, v5

    invoke-virtual {v6, v1, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lmiui/widget/TriggerViewDrawer;->mScrollDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v5, p0, Lmiui/widget/TriggerViewDrawer;->mDividerHeight:I

    sub-int/2addr v4, v5

    :cond_2a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return v5
.end method

.method private drawTriggerView(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 12

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerDistance:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_12

    const/4 v2, 0x1

    return v2

    :cond_12
    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerDistance:I

    if-le v0, v2, :cond_1b

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    return v2

    :cond_1b
    const/4 v2, 0x0

    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    move v5, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return v6
.end method

.method private getTouchDownView(II)Landroid/view/View;
    .registers 13

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lmiui/widget/TriggerViewDrawer;->mTargetViewAncestor:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    array-length v2, v1

    :goto_13
    if-ge v3, v2, :cond_40

    aget-object v4, v1, v3

    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3d

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_3d

    return-object v4

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_40
    const/4 v2, 0x0

    return-object v2
.end method

.method private isDistanceInvalid()Z
    .registers 3

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerDistance:I

    if-lez v0, :cond_a

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    if-gt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private notifyDrawerStateChanged()V
    .registers 5

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mDrawerListener:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->mDetectMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2a

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mDrawerListener:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    int-to-float v2, v0

    iget v3, p0, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-interface {v1, p0, v2}, Lmiui/widget/TriggerViewDrawer$DrawerListener;->onDrawerSlide(Lmiui/widget/TriggerViewDrawer;F)V

    goto :goto_44

    :cond_2a
    if-nez v0, :cond_32

    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mDrawerListener:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    invoke-interface {v1, p0}, Lmiui/widget/TriggerViewDrawer$DrawerListener;->onDrawerClose(Lmiui/widget/TriggerViewDrawer;)V

    goto :goto_44

    :cond_32
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    if-ne v0, v1, :cond_3c

    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mDrawerListener:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    invoke-interface {v1, p0}, Lmiui/widget/TriggerViewDrawer$DrawerListener;->onDrawerOpen(Lmiui/widget/TriggerViewDrawer;)V

    goto :goto_44

    :cond_3c
    iget-object v2, p0, Lmiui/widget/TriggerViewDrawer;->mDrawerListener:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    int-to-float v3, v0

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-interface {v2, p0, v3}, Lmiui/widget/TriggerViewDrawer$DrawerListener;->onDrawerSlide(Lmiui/widget/TriggerViewDrawer;F)V

    :cond_44
    :goto_44
    return-void
.end method

.method private notifyTriggerStateChanged()V
    .registers 6

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerListener:Lmiui/widget/TriggerViewDrawer$TriggerListener;

    if-eqz v0, :cond_44

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerDistance:I

    if-lez v0, :cond_44

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->mDetectMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_44

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerListener:Lmiui/widget/TriggerViewDrawer$TriggerListener;

    int-to-float v3, v1

    int-to-float v4, v0

    div-float/2addr v3, v4

    invoke-interface {v2, p0, v3}, Lmiui/widget/TriggerViewDrawer$TriggerListener;->onTriggerSlide(Lmiui/widget/TriggerViewDrawer;F)V

    if-lt v1, v0, :cond_3d

    iget-boolean v2, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerOn:Z

    if-nez v2, :cond_44

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerOn:Z

    iget-object v2, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerListener:Lmiui/widget/TriggerViewDrawer$TriggerListener;

    invoke-interface {v2, p0}, Lmiui/widget/TriggerViewDrawer$TriggerListener;->onTriggerOpen(Lmiui/widget/TriggerViewDrawer;)V

    const v2, 0x1000000c

    invoke-static {v2}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual {p0, v2}, Lmiui/widget/TriggerViewDrawer;->performHapticFeedback(I)Z

    goto :goto_44

    :cond_3d
    iget-boolean v2, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerOn:Z

    if-eqz v2, :cond_44

    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerOn:Z

    :cond_44
    :goto_44
    return-void
.end method

.method private offsetTranslationAnimation(F)V
    .registers 7

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    const/high16 v2, 0x40000000    # 2.0f

    if-le v0, v1, :cond_14

    int-to-float v3, v1

    sub-int v1, v0, v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    goto :goto_15

    :cond_14
    int-to-float v3, v0

    :goto_15
    add-float/2addr v3, p1

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    int-to-float v4, v1

    cmpl-float v4, v3, v4

    if-lez v4, :cond_24

    int-to-float v4, v1

    sub-float v4, v3, v4

    div-float/2addr v4, v2

    float-to-int v2, v4

    add-int/2addr v1, v2

    goto :goto_25

    :cond_24
    float-to-int v1, v3

    :goto_25
    invoke-direct {p0, v1}, Lmiui/widget/TriggerViewDrawer;->updateTranslationAnimation(I)V

    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->invalidate()V

    return-void
.end method

.method private startScroll(II)V
    .registers 5

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->mScrolling:Z

    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->invalidate()V

    return-void
.end method

.method private updateTranslationAnimation(I)V
    .registers 4

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerDistance:I

    if-gtz v0, :cond_a

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_a
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->notifyTriggerStateChanged()V

    return-void
.end method


# virtual methods
.method public closeDrawer()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/TriggerViewDrawer;->closeDrawer(Z)V

    return-void
.end method

.method public closeDrawer(Z)V
    .registers 4

    if-eqz p1, :cond_e

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    neg-int v1, v0

    invoke-direct {p0, v0, v1}, Lmiui/widget/TriggerViewDrawer;->startScroll(II)V

    goto :goto_18

    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/TriggerViewDrawer;->updateTranslationAnimation(I)V

    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->notifyDrawerStateChanged()V

    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->invalidate()V

    :goto_18
    return-void
.end method

.method public computeScroll()V
    .registers 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/widget/TriggerViewDrawer;->updateTranslationAnimation(I)V

    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->postInvalidateOnAnimation()V

    goto :goto_27

    :cond_1c
    iget-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->mScrolling:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->mScrolling:Z

    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->notifyDrawerStateChanged()V

    nop

    :cond_27
    :goto_27
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, Lmiui/widget/TriggerViewDrawer;->mDragEnabled:Z

    if-eqz v0, :cond_2b8

    invoke-direct/range {p0 .. p0}, Lmiui/widget/TriggerViewDrawer;->isDistanceInvalid()Z

    move-result v0

    if-nez v0, :cond_2b8

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    if-gtz v0, :cond_16

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mTriggerDistance:I

    if-lez v0, :cond_2b8

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_22

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mDetectMode:I

    if-nez v0, :cond_22

    goto/16 :goto_2b8

    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_23c

    if-eq v0, v12, :cond_1f5

    if-eq v0, v11, :cond_88

    if-eq v0, v9, :cond_66

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3a

    goto/16 :goto_26b

    :cond_3a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, v6, Lmiui/widget/TriggerViewDrawer;->mActionPointerId:I

    if-ne v1, v2, :cond_5f

    if-nez v0, :cond_4a

    move v2, v12

    goto :goto_4b

    :cond_4a
    move v2, v13

    :goto_4b
    invoke-virtual {v7, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v6, Lmiui/widget/TriggerViewDrawer;->mActionPointerId:I

    invoke-virtual {v7, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, v6, Lmiui/widget/TriggerViewDrawer;->mDownX:F

    invoke-virtual {v7, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, v6, Lmiui/widget/TriggerViewDrawer;->mDownY:F

    iput v3, v6, Lmiui/widget/TriggerViewDrawer;->mLastY:F

    :cond_5f
    iget-object v2, v6, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_26b

    :cond_66
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    if-eqz v0, :cond_7b

    iget-boolean v1, v6, Lmiui/widget/TriggerViewDrawer;->mAutoClose:Z

    if-nez v1, :cond_77

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    if-eq v0, v1, :cond_7b

    :cond_77
    neg-int v1, v0

    invoke-direct {v6, v0, v1}, Lmiui/widget/TriggerViewDrawer;->startScroll(II)V

    :cond_7b
    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    iput v12, v6, Lmiui/widget/TriggerViewDrawer;->mDetectMode:I

    iput v13, v6, Lmiui/widget/TriggerViewDrawer;->mTouchMode:I

    iput-boolean v13, v6, Lmiui/widget/TriggerViewDrawer;->mTriggerOn:Z

    goto/16 :goto_26b

    :cond_88
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mActionPointerId:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9a

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Lmiui/widget/TriggerViewDrawer;->mActionPointerId:I

    move v14, v0

    goto :goto_9b

    :cond_9a
    move v14, v0

    :goto_9b
    invoke-virtual {v7, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    invoke-virtual {v7, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mDownX:F

    sub-float v0, v15, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v16

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mDownY:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v17

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mDetectMode:I

    if-ne v0, v12, :cond_e0

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v16, v0

    if-lez v0, :cond_c5

    cmpl-float v0, v16, v17

    if-lez v0, :cond_c5

    iput v13, v6, Lmiui/widget/TriggerViewDrawer;->mDetectMode:I

    goto :goto_e0

    :cond_c5
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v17, v0

    if-lez v0, :cond_e0

    iput v11, v6, Lmiui/widget/TriggerViewDrawer;->mDetectMode:I

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/TriggerViewDrawer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_e0

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mDownView:Landroid/view/View;

    if-ne v1, v0, :cond_e0

    invoke-direct {v6, v0, v7, v9}, Lmiui/widget/TriggerViewDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;I)V

    :cond_e0
    :goto_e0
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mLastY:F

    sub-float v4, v5, v0

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mDetectMode:I

    if-ne v0, v11, :cond_1eb

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v4, v0

    if-gez v0, :cond_f8

    cmpg-float v0, v4, v8

    if-gtz v0, :cond_f3

    goto :goto_f8

    :cond_f3
    move/from16 v19, v4

    move v8, v5

    goto/16 :goto_1ee

    :cond_f8
    :goto_f8
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v10

    if-gtz v0, :cond_104

    move v0, v12

    goto :goto_105

    :cond_104
    move v0, v13

    :goto_105
    move/from16 v18, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_13b

    if-eqz v18, :cond_13b

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mLastY:F

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mScrollConsumed:[I

    iget-object v2, v6, Lmiui/widget/TriggerViewDrawer;->mScrollOffset:[I

    invoke-virtual {v6, v13, v0, v1, v2}, Lmiui/widget/TriggerViewDrawer;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    if-eqz v0, :cond_13b

    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mScrollOffset:[I

    aget v0, v0, v12

    int-to-float v0, v0

    sub-float v0, v5, v0

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->mLastY:F

    iput-boolean v12, v6, Lmiui/widget/TriggerViewDrawer;->mCancelForNestedScroll:Z

    iput v13, v6, Lmiui/widget/TriggerViewDrawer;->mTouchMode:I

    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mTargetViewAncestor:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mTargetViewAncestor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mTargetViewAncestor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->cancelPendingInputEvents()V

    goto/16 :goto_26b

    :cond_13b
    iput-boolean v13, v6, Lmiui/widget/TriggerViewDrawer;->mCancelForNestedScroll:Z

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mTouchMode:I

    cmpl-float v1, v4, v10

    if-lez v1, :cond_164

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->mTriggerDistance:I

    if-gtz v1, :cond_154

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iget v2, v6, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gez v1, :cond_15e

    :cond_154
    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mScrollableViewWrapper:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    if-eqz v1, :cond_161

    invoke-interface {v1}, Lmiui/widget/TriggerViewDrawer$ScrollableView;->canScrollDown()Z

    move-result v1

    if-eqz v1, :cond_161

    :cond_15e
    const/4 v0, 0x2

    move v3, v0

    goto :goto_17e

    :cond_161
    const/4 v0, 0x1

    move v3, v0

    goto :goto_17e

    :cond_164
    cmpg-float v1, v4, v10

    if-gez v1, :cond_17d

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v10

    if-gtz v1, :cond_17a

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mScrollableViewWrapper:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    if-nez v1, :cond_177

    goto :goto_17a

    :cond_177
    const/4 v0, 0x2

    move v3, v0

    goto :goto_17e

    :cond_17a
    :goto_17a
    const/4 v0, 0x1

    move v3, v0

    goto :goto_17e

    :cond_17d
    move v3, v0

    :goto_17e
    if-ne v3, v12, :cond_19c

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mTouchMode:I

    if-eq v0, v11, :cond_18c

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mDownView:Landroid/view/View;

    iget-object v2, v6, Lmiui/widget/TriggerViewDrawer;->mTargetViewAncestor:Landroid/view/View;

    if-ne v1, v2, :cond_191

    if-nez v0, :cond_191

    :cond_18c
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mTargetViewAncestor:Landroid/view/View;

    invoke-direct {v6, v0, v7, v9}, Lmiui/widget/TriggerViewDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;I)V

    :cond_191
    invoke-direct {v6, v4}, Lmiui/widget/TriggerViewDrawer;->offsetTranslationAnimation(F)V

    invoke-direct/range {p0 .. p0}, Lmiui/widget/TriggerViewDrawer;->notifyDrawerStateChanged()V

    move v11, v3

    move/from16 v19, v4

    move v8, v5

    goto :goto_1e6

    :cond_19c
    if-ne v3, v11, :cond_1e2

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mTouchMode:I

    if-eq v0, v12, :cond_1bc

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mDownView:Landroid/view/View;

    iget-object v2, v6, Lmiui/widget/TriggerViewDrawer;->mTargetViewAncestor:Landroid/view/View;

    if-eq v1, v2, :cond_1ab

    if-nez v0, :cond_1ab

    goto :goto_1bc

    :cond_1ab
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mTargetViewAncestor:Landroid/view/View;

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->mDownX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-direct {v6, v0, v7, v1, v10}, Lmiui/widget/TriggerViewDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;FF)V

    move v11, v3

    move/from16 v19, v4

    move v8, v5

    goto :goto_1e6

    :cond_1bc
    :goto_1bc
    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mTargetViewAncestor:Landroid/view/View;

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mDownX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v19, v0, v2

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move v11, v3

    move/from16 v3, v19

    move/from16 v19, v4

    move/from16 v4, v20

    move v8, v5

    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lmiui/widget/TriggerViewDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;FFI)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->mModeScrollDownY:F

    goto :goto_1e6

    :cond_1e2
    move v11, v3

    move/from16 v19, v4

    move v8, v5

    :goto_1e6
    iput v11, v6, Lmiui/widget/TriggerViewDrawer;->mTouchMode:I

    iput v8, v6, Lmiui/widget/TriggerViewDrawer;->mLastY:F

    goto :goto_1ee

    :cond_1eb
    move/from16 v19, v4

    move v8, v5

    :goto_1ee
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_26b

    :cond_1f5
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iget-boolean v1, v6, Lmiui/widget/TriggerViewDrawer;->mAutoClose:Z

    if-eqz v1, :cond_207

    if-eqz v0, :cond_207

    neg-int v1, v0

    invoke-direct {v6, v0, v1}, Lmiui/widget/TriggerViewDrawer;->startScroll(II)V

    goto :goto_230

    :cond_207
    if-eqz v0, :cond_230

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    if-eq v0, v1, :cond_230

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_22c

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    sub-int/2addr v1, v0

    invoke-direct {v6, v0, v1}, Lmiui/widget/TriggerViewDrawer;->startScroll(II)V

    goto :goto_230

    :cond_22c
    neg-int v1, v0

    invoke-direct {v6, v0, v1}, Lmiui/widget/TriggerViewDrawer;->startScroll(II)V

    :cond_230
    :goto_230
    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    iput v12, v6, Lmiui/widget/TriggerViewDrawer;->mDetectMode:I

    iput v13, v6, Lmiui/widget/TriggerViewDrawer;->mTouchMode:I

    iput-boolean v13, v6, Lmiui/widget/TriggerViewDrawer;->mTriggerOn:Z

    goto :goto_26b

    :cond_23c
    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->mActionPointerId:I

    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->mDownX:F

    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->mLastY:F

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->mDownY:F

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->mDownX:F

    float-to-int v1, v1

    float-to-int v0, v0

    invoke-direct {v6, v1, v0}, Lmiui/widget/TriggerViewDrawer;->getTouchDownView(II)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mDownView:Landroid/view/View;

    iput v12, v6, Lmiui/widget/TriggerViewDrawer;->mDetectMode:I

    iput v13, v6, Lmiui/widget/TriggerViewDrawer;->mTouchMode:I

    iput-boolean v13, v6, Lmiui/widget/TriggerViewDrawer;->mTriggerOn:Z

    nop

    :goto_26b
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mModeScrollDownY:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_290

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v12, :cond_290

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->mModeScrollDownY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->mTouchSlop:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_28c

    invoke-virtual {v7, v9}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_28c
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->mModeScrollDownY:F

    :cond_290
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mDetectMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_2b7

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mTouchMode:I

    if-ne v0, v1, :cond_2b7

    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mTargetViewAncestor:Landroid/view/View;

    invoke-direct {v6, v0, v7}, Lmiui/widget/TriggerViewDrawer;->dispatchTouchEventToChild(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_2b7

    :cond_2a5
    iget-boolean v0, v6, Lmiui/widget/TriggerViewDrawer;->mCancelForNestedScroll:Z

    if-eqz v0, :cond_2b4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v12, :cond_2b4

    invoke-virtual {v7, v9}, Landroid/view/MotionEvent;->setAction(I)V

    iput-boolean v13, v6, Lmiui/widget/TriggerViewDrawer;->mCancelForNestedScroll:Z

    :cond_2b4
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2b7
    :goto_2b7
    return v12

    :cond_2b8
    :goto_2b8
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-ne p2, v0, :cond_9

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/widget/TriggerViewDrawer;->drawContentView(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerView:Landroid/view/View;

    if-ne p2, v0, :cond_12

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/widget/TriggerViewDrawer;->drawTriggerView(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0

    :cond_12
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentViewId:I

    if-lez v0, :cond_26

    invoke-virtual {p0, v0}, Lmiui/widget/TriggerViewDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_16

    goto :goto_26

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The contentView attribute is must be a direct child of TriggerViewDrawer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The contentView attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_26
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetViewId:I

    invoke-virtual {p0, v0}, Lmiui/widget/TriggerViewDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_b6

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetViewAncestor:Landroid/view/View;

    :goto_32
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetViewAncestor:Landroid/view/View;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_47

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetViewAncestor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetViewAncestor:Landroid/view/View;

    goto :goto_32

    :cond_47
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->mScrollableViewId:I

    if-lez v0, :cond_92

    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8a

    instance-of v1, v0, Lmiui/widget/TriggerViewDrawer$ScrollableView;

    if-eqz v1, :cond_5d

    move-object v1, v0

    check-cast v1, Lmiui/widget/TriggerViewDrawer$ScrollableView;

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mScrollableViewWrapper:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    goto :goto_92

    :cond_5d
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_6c

    new-instance v1, Lmiui/widget/TriggerViewDrawer$ScrollViewWrapper;

    move-object v2, v0

    check-cast v2, Landroid/widget/ScrollView;

    invoke-direct {v1, v2}, Lmiui/widget/TriggerViewDrawer$ScrollViewWrapper;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mScrollableViewWrapper:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    goto :goto_92

    :cond_6c
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_7b

    new-instance v1, Lmiui/widget/TriggerViewDrawer$AdapterViewWrapper;

    move-object v2, v0

    check-cast v2, Landroid/widget/AdapterView;

    invoke-direct {v1, v2}, Lmiui/widget/TriggerViewDrawer$AdapterViewWrapper;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mScrollableViewWrapper:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    goto :goto_92

    :cond_7b
    const-string v1, "TriggerViewDrawer"

    const-string v2, "The scrollableView is a fixed view that can\'t scroll all the time"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lmiui/widget/TriggerViewDrawer$FixedViewWrapper;

    invoke-direct {v1}, Lmiui/widget/TriggerViewDrawer$FixedViewWrapper;-><init>()V

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mScrollableViewWrapper:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    goto :goto_92

    :cond_8a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The scrollableView attribute is must refer to an existing child of targetView."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_92
    :goto_92
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerViewId:I

    if-lez v0, :cond_b5

    invoke-virtual {p0, v0}, Lmiui/widget/TriggerViewDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerView:Landroid/view/View;

    if-eqz v0, :cond_ad

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_a5

    goto :goto_b5

    :cond_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The triggerView attribute is must be a direct child of TriggerViewDrawer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ad
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The triggerView attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b5
    :goto_b5
    return-void

    :cond_b6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The targetView attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    :cond_15
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerView:Landroid/view/View;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerDistance:I

    :cond_27
    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->isDistanceInvalid()Z

    move-result v0

    if-eqz v0, :cond_4f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Height of trigger must bigger than height of content, mTriggerDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mContentDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TriggerViewDrawer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmiui/widget/TriggerViewDrawer;->startNestedScroll(I)Z

    :cond_d
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 8

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    const/4 v3, 0x2

    if-ne p3, v3, :cond_16

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    return v1
.end method

.method public openDrawer()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/TriggerViewDrawer;->openDrawer(Z)V

    return-void
.end method

.method public openDrawer(Z)V
    .registers 4

    if-eqz p1, :cond_10

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lmiui/widget/TriggerViewDrawer;->startScroll(II)V

    goto :goto_1b

    :cond_10
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentDistance:I

    invoke-direct {p0, v0}, Lmiui/widget/TriggerViewDrawer;->updateTranslationAnimation(I)V

    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->notifyDrawerStateChanged()V

    invoke-virtual {p0}, Lmiui/widget/TriggerViewDrawer;->invalidate()V

    :goto_1b
    return-void
.end method

.method public setAutoClose(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/TriggerViewDrawer;->mAutoClose:Z

    return-void
.end method

.method public setDragEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/TriggerViewDrawer;->mDragEnabled:Z

    return-void
.end method

.method public setDrawerListener(Lmiui/widget/TriggerViewDrawer$DrawerListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/TriggerViewDrawer;->mDrawerListener:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setNestedScrollingEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_17

    if-eqz p1, :cond_17

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->mScrollableViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    :cond_17
    return-void
.end method

.method public setTriggerDistance(I)V
    .registers 2

    iput p1, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerDistance:I

    return-void
.end method

.method public setTriggerListener(Lmiui/widget/TriggerViewDrawer$TriggerListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/TriggerViewDrawer;->mTriggerListener:Lmiui/widget/TriggerViewDrawer$TriggerListener;

    return-void
.end method
