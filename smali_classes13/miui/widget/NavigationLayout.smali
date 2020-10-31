.class public Lmiui/widget/NavigationLayout;
.super Landroid/view/ViewGroup;
.source "NavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/NavigationLayout$ViewDragCallback;,
        Lmiui/widget/NavigationLayout$WidthDescription;,
        Lmiui/widget/NavigationLayout$LayoutParams;,
        Lmiui/widget/NavigationLayout$SavedState;,
        Lmiui/widget/NavigationLayout$NavigationListener;
    }
.end annotation


# static fields
.field public static final ABSOLUTE:I = 0x0

.field private static final DEFAULT_SCRIM_COLOR:I = -0x330a0809

.field public static final DRAWER_ENABLED_LANDSCAPE:I = 0x2

.field public static final DRAWER_ENABLED_NONE:I = 0x0

.field public static final DRAWER_ENABLED_PORTRAIT:I = 0x1

.field public static final DRAWER_MODE_CONTENT_SQUEEZED:I = 0x2

.field public static final DRAWER_MODE_OVERLAY:I = 0x0

.field public static final DRAWER_MODE_PUSHED_AWAY:I = 0x1

.field private static final HALF_OFFSET:F = 0.5f

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0x96

.field public static final RELATIVE_TO_PARENT:I = 0x1

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2


# instance fields
.field private mChildrenCanceledTouch:Z

.field private mContent:Landroid/view/View;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerWidth:I

.field private final mDragger:Lcom/miui/internal/widget/ViewDragHelper;

.field private mDrawerEnabled:Z

.field private mDrawerEnabledOrientation:I

.field private mDrawerMode:I

.field private mFirstMeasure:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLandscapeWidthDescription:Lmiui/widget/NavigationLayout$WidthDescription;

.field private mLayoutRtl:Z

.field private mListener:Lmiui/widget/NavigationLayout$NavigationListener;

.field private mLockMode:I

.field private mNavigation:Landroid/view/View;

.field private mPeekRunnable:Ljava/lang/Runnable;

.field private mPortraitWidthDescription:Lmiui/widget/NavigationLayout$WidthDescription;

.field private mScrimAnimationView:Landroid/view/View;

.field private mScrimAnimator:Landroid/animation/ValueAnimator;

.field private mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimOpacityAnimatior:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadow:Landroid/graphics/drawable/Drawable;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lmiui/R$attr;->navigationLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->mTmpRect:Landroid/graphics/Rect;

    const v0, -0x330a0809

    iput v0, p0, Lmiui/widget/NavigationLayout;->mScrimColor:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmiui/widget/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/widget/NavigationLayout;->mFirstMeasure:Z

    const/4 v2, 0x0

    iput v2, p0, Lmiui/widget/NavigationLayout;->mLockMode:I

    new-instance v3, Lmiui/widget/NavigationLayout$1;

    invoke-direct {v3, p0}, Lmiui/widget/NavigationLayout$1;-><init>(Lmiui/widget/NavigationLayout;)V

    iput-object v3, p0, Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    sget-object v3, Lmiui/R$styleable;->NavigationLayout:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v4, Lmiui/R$styleable;->NavigationLayout_navigationDivider:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_34

    invoke-virtual {p0, v4}, Lmiui/widget/NavigationLayout;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_34
    sget v5, Lmiui/R$styleable;->NavigationLayout_navigationShadow:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3f

    invoke-virtual {p0, v4}, Lmiui/widget/NavigationLayout;->setNavigationShadow(Landroid/graphics/drawable/Drawable;)V

    :cond_3f
    sget v5, Lmiui/R$styleable;->NavigationLayout_navigationDividerWidth:I

    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    if-eqz v5, :cond_4a

    invoke-virtual {p0, v5}, Lmiui/widget/NavigationLayout;->setDividerWidth(I)V

    :cond_4a
    sget v6, Lmiui/R$styleable;->NavigationLayout_navigationScrimColor:I

    invoke-virtual {v3, v6, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/NavigationLayout;->mScrimColor:I

    sget v0, Lmiui/R$styleable;->NavigationLayout_drawerEnabledOrientation:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabledOrientation:I

    sget v0, Lmiui/R$styleable;->NavigationLayout_portraitNavigationWidth:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v0, v6}, Lmiui/widget/NavigationLayout$WidthDescription;->parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiui/widget/NavigationLayout$WidthDescription;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->mPortraitWidthDescription:Lmiui/widget/NavigationLayout$WidthDescription;

    sget v0, Lmiui/R$styleable;->NavigationLayout_landscapeNavigationWidth:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v0, v6}, Lmiui/widget/NavigationLayout$WidthDescription;->parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiui/widget/NavigationLayout$WidthDescription;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->mLandscapeWidthDescription:Lmiui/widget/NavigationLayout$WidthDescription;

    sget v0, Lmiui/R$styleable;->NavigationLayout_drawerMode:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/NavigationLayout;->mDrawerMode:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 v0, 0x3f000000    # 0.5f

    new-instance v2, Lmiui/widget/NavigationLayout$ViewDragCallback;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lmiui/widget/NavigationLayout$ViewDragCallback;-><init>(Lmiui/widget/NavigationLayout;Lmiui/widget/NavigationLayout$1;)V

    invoke-static {p0, v0, v2}, Lcom/miui/internal/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/miui/internal/widget/ViewDragHelper$Callback;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    const/high16 v6, 0x43c80000    # 400.0f

    mul-float/2addr v6, v0

    invoke-virtual {v2, v6}, Lcom/miui/internal/widget/ViewDragHelper;->setMinVelocity(F)V

    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;
    .registers 2

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lmiui/widget/NavigationLayout;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;
    .registers 2

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/widget/NavigationLayout;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    return v0
.end method

.method static synthetic access$300(Lmiui/widget/NavigationLayout;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->cancelChildViewTouch()V

    return-void
.end method

.method static synthetic access$500(Lmiui/widget/NavigationLayout;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lmiui/widget/NavigationLayout;F)F
    .registers 2

    iput p1, p0, Lmiui/widget/NavigationLayout;->mScrimOpacityAnimatior:F

    return p1
.end method

.method static synthetic access$800(Lmiui/widget/NavigationLayout;F)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->setNavigationOffset(F)V

    return-void
.end method

.method static synthetic access$900(Lmiui/widget/NavigationLayout;)F
    .registers 2

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->getNavigationOffset()F

    move-result v0

    return v0
.end method

.method private cancelChildViewTouch()V
    .registers 12

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    if-nez v0, :cond_29

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_23

    invoke-virtual {p0, v2}, Lmiui/widget/NavigationLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_23
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    :cond_29
    return-void
.end method

.method private closePeekingDrawer()V
    .registers 3

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    iget-boolean v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->isPeeking:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->isPeeking:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    :cond_13
    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .registers 9

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-boolean v2, p0, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    iget v3, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    sub-int/2addr v2, v3

    goto :goto_16

    :cond_15
    move v2, v1

    :goto_16
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lmiui/widget/NavigationLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawNavigationDisableScrim(Landroid/graphics/Canvas;)V
    .registers 12

    iget v0, p0, Lmiui/widget/NavigationLayout;->mScrimOpacityAnimatior:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_43

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    if-eqz v1, :cond_43

    iget v1, p0, Lmiui/widget/NavigationLayout;->mScrimColor:I

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    ushr-int/lit8 v2, v2, 0x18

    int-to-float v3, v2

    mul-float/2addr v3, v0

    float-to-int v0, v3

    shl-int/lit8 v3, v0, 0x18

    const v4, 0xffffff

    and-int/2addr v1, v4

    or-int/2addr v1, v3

    iget-object v3, p0, Lmiui/widget/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v5, v3

    iget-object v3, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v6, v3

    iget-object v3, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v7, v3

    iget-object v3, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v8, v3

    iget-object v9, p0, Lmiui/widget/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_43
    return-void
.end method

.method private drawScrim(Landroid/graphics/Canvas;)V
    .registers 13

    iget v0, p0, Lmiui/widget/NavigationLayout;->mScrimOpacity:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_46

    iget v1, p0, Lmiui/widget/NavigationLayout;->mScrimColor:I

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    ushr-int/lit8 v2, v2, 0x18

    int-to-float v3, v2

    mul-float/2addr v3, v0

    float-to-int v0, v3

    shl-int/lit8 v3, v0, 0x18

    const v4, 0xffffff

    and-int/2addr v1, v4

    or-int/2addr v1, v3

    iget-object v3, p0, Lmiui/widget/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v3, p0, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    if-eqz v3, :cond_23

    const/4 v3, 0x0

    goto :goto_29

    :cond_23
    iget-object v3, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    :goto_29
    iget-boolean v4, p0, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    if-eqz v4, :cond_34

    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    goto :goto_38

    :cond_34
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v4

    :goto_38
    int-to-float v6, v3

    const/4 v7, 0x0

    int-to-float v8, v4

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getHeight()I

    move-result v5

    int-to-float v9, v5

    iget-object v10, p0, Lmiui/widget/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_46
    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .registers 8

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-boolean v1, p0, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_1b

    :cond_15
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    :goto_1b
    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int v4, v1, v0

    iget-object v5, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getNavigationOffset()F
    .registers 3

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    iget v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    return v1
.end method

.method private getScrimAnimatorListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .registers 2

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-nez v0, :cond_b

    new-instance v0, Lmiui/widget/NavigationLayout$2;

    invoke-direct {v0, p0}, Lmiui/widget/NavigationLayout$2;-><init>(Lmiui/widget/NavigationLayout;)V

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    :cond_b
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method private isDrawerPeeking()Z
    .registers 3

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    iget-boolean v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->isPeeking:Z

    return v1
.end method

.method private pullChildren()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    if-nez v0, :cond_14

    sget v0, Lmiui/R$id;->content:I

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    sget v0, Lmiui/R$id;->navigation:I

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    :cond_14
    return-void
.end method

.method private setChildViewEnabled(Landroid/view/View;Z)V
    .registers 10

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne v0, p2, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    if-eqz v0, :cond_16

    if-eq v0, p1, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_16

    if-nez p2, :cond_16

    return-void

    :cond_16
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    if-eqz p2, :cond_2e

    move v6, v4

    goto :goto_2f

    :cond_2e
    move v6, v5

    :goto_2f
    aput v6, v3, v2

    if-eqz p2, :cond_35

    move v2, v5

    goto :goto_36

    :cond_35
    move v2, v4

    :goto_36
    aput v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_52

    :cond_3c
    new-array v0, v3, [F

    if-eqz p2, :cond_42

    move v3, v4

    goto :goto_43

    :cond_42
    move v3, v5

    :goto_43
    aput v3, v0, v2

    if-eqz p2, :cond_49

    move v2, v5

    goto :goto_4a

    :cond_49
    move v2, v4

    :goto_4a
    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    :goto_52
    iput-object p1, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_5d

    const-wide/16 v1, 0x1f4

    goto :goto_5f

    :cond_5d
    const-wide/16 v1, 0x0

    :goto_5f
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->getScrimAnimatorListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p2, :cond_6e

    goto :goto_6f

    :cond_6e
    move v4, v5

    :goto_6f
    iput v4, p0, Lmiui/widget/NavigationLayout;->mScrimOpacityAnimatior:F

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setNavigationOffset(F)V
    .registers 7

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    iget v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    iput p1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz v1, :cond_18

    invoke-interface {v1, p1}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerSlide(F)V

    :cond_18
    iget v1, p0, Lmiui/widget/NavigationLayout;->mDrawerMode:I

    if-nez v1, :cond_23

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScrollX(I)V

    goto :goto_41

    :cond_23
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3e

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    iget-boolean v3, p0, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    if-eqz v3, :cond_34

    move v3, v1

    goto :goto_35

    :cond_34
    neg-int v3, v1

    :goto_35
    int-to-float v3, v3

    iget v4, v0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setScrollX(I)V

    goto :goto_41

    :cond_3e
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    :goto_41
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Lmiui/widget/NavigationLayout$LayoutParams;

    return v0
.end method

.method public closeNavigationDrawer(Z)V
    .registers 6

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mFirstMeasure:Z

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    :cond_5
    if-eqz p1, :cond_28

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v0

    goto :goto_1c

    :cond_15
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    :goto_1c
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/miui/internal/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_33

    :cond_28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/NavigationLayout;->setNavigationOffset(F)V

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz v0, :cond_33

    invoke-interface {v0}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerClosed()V

    :cond_33
    :goto_33
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public computeScroll()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    iget v0, p0, Lmiui/widget/NavigationLayout;->mDrawerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NavigationLayout;->mScrimOpacity:F

    goto :goto_12

    :cond_c
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->getNavigationOffset()F

    move-result v0

    iput v0, p0, Lmiui/widget/NavigationLayout;->mScrimOpacity:F

    :goto_12
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->postInvalidateOnAnimation()V

    :cond_1e
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->drawScrim(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->drawShadow(Landroid/graphics/Canvas;)V

    goto :goto_14

    :cond_e
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->drawDivider(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->drawNavigationDisableScrim(Landroid/graphics/Canvas;)V

    :goto_14
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result v0

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_27

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_27

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result v0

    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    return v0

    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v2, v0, :cond_36

    if-ge v0, v3, :cond_36

    if-ge v4, v1, :cond_36

    if-ge v1, v5, :cond_36

    const/4 v6, 0x1

    return v6

    :cond_36
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Lmiui/widget/NavigationLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lmiui/widget/NavigationLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Lmiui/widget/NavigationLayout$LayoutParams;

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/widget/NavigationLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Lmiui/widget/NavigationLayout$LayoutParams;

    invoke-direct {v0, p1}, Lmiui/widget/NavigationLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDividerWidth()I
    .registers 2

    iget v0, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    return v0
.end method

.method public getDrawerEnabledOrientation()I
    .registers 2

    iget v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabledOrientation:I

    return v0
.end method

.method public getDrawerLockMode()I
    .registers 2

    iget v0, p0, Lmiui/widget/NavigationLayout;->mLockMode:I

    return v0
.end method

.method public isNavigationDrawerOpen()Z
    .registers 3

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    iget v0, v0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method protected onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->pullChildren()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-boolean v1, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-eqz v1, :cond_70

    iget v1, p0, Lmiui/widget/NavigationLayout;->mLockMode:I

    if-eqz v1, :cond_f

    goto :goto_70

    :cond_f
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3a

    if-eq v2, v3, :cond_2f

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v2, v5, :cond_21

    if-eq v2, v6, :cond_2f

    goto :goto_5f

    :cond_21
    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v2, v6}, Lcom/miui/internal/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_5f

    :cond_2f
    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->closePeekingDrawer()V

    iput-boolean v4, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    goto :goto_5f

    :cond_3a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v2, p0, Lmiui/widget/NavigationLayout;->mInitialMotionX:F

    iput v5, p0, Lmiui/widget/NavigationLayout;->mInitialMotionY:F

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->getNavigationOffset()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5c

    iget-object v6, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    float-to-int v7, v2

    float-to-int v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    if-ne v6, v7, :cond_5c

    const/4 v1, 0x1

    :cond_5c
    iput-boolean v4, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    nop

    :cond_5f
    :goto_5f
    if-nez v0, :cond_6f

    if-nez v1, :cond_6f

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->isDrawerPeeking()Z

    move-result v2

    if-nez v2, :cond_6f

    iget-boolean v2, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    if-eqz v2, :cond_6e

    goto :goto_6f

    :cond_6e
    move v3, v4

    :cond_6f
    :goto_6f
    return v3

    :cond_70
    :goto_70
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 18

    move-object v6, p0

    iget-boolean v0, v6, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    const/4 v7, 0x0

    if-eqz v0, :cond_77

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lmiui/widget/NavigationLayout$LayoutParams;

    neg-int v0, v8

    int-to-float v0, v0

    int-to-float v1, v8

    iget v2, v9, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v10, v0

    iget-object v1, v6, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    add-int v4, v10, v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p0

    move v2, v10

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    move v0, p2

    iget-object v1, v6, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget v2, v6, Lmiui/widget/NavigationLayout;->mDrawerMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4e

    neg-int v2, v8

    int-to-float v2, v2

    iget v3, v9, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, v6, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    iget-boolean v4, v6, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    if-eqz v4, :cond_49

    rsub-int/lit8 v4, v2, 0x0

    goto :goto_4a

    :cond_49
    move v4, v2

    :goto_4a
    invoke-virtual {v3, v4}, Landroid/view/View;->setScrollX(I)V

    goto :goto_65

    :cond_4e
    if-nez v2, :cond_56

    iget-object v2, v6, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setScrollX(I)V

    goto :goto_65

    :cond_56
    const/4 v3, 0x2

    if-ne v2, v3, :cond_65

    int-to-float v2, v0

    int-to-float v3, v8

    iget v4, v9, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v1, p4

    move v7, v0

    move v11, v1

    goto :goto_67

    :cond_65
    :goto_65
    move v7, v0

    move v11, v1

    :goto_67
    iget-object v1, v6, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p0

    move v2, v7

    move v3, p3

    move v4, v11

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    goto :goto_b4

    :cond_77
    move v8, p2

    iget-object v1, v6, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, v8, v0

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p0

    move v2, v8

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget v1, v6, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    add-int v9, v0, v1

    iget-object v1, v6, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, v9, v0

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p0

    move v2, v9

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setScrollX(I)V

    move v7, v9

    :goto_b4
    return-void
.end method

.method protected onMeasure(II)V
    .registers 19

    move-object/from16 v6, p0

    const/4 v0, 0x0

    iput-boolean v0, v6, Lmiui/widget/NavigationLayout;->mFirstMeasure:Z

    invoke-direct/range {p0 .. p0}, Lmiui/widget/NavigationLayout;->pullChildren()V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lmiui/widget/NavigationLayout;->setMeasuredDimension(II)V

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_22

    move v0, v2

    :cond_22
    move v9, v0

    if-eqz v9, :cond_28

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->mLandscapeWidthDescription:Lmiui/widget/NavigationLayout$WidthDescription;

    goto :goto_2a

    :cond_28
    iget-object v0, v6, Lmiui/widget/NavigationLayout;->mPortraitWidthDescription:Lmiui/widget/NavigationLayout$WidthDescription;

    :goto_2a
    move-object v10, v0

    const/4 v0, 0x0

    iget v1, v10, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    if-eqz v1, :cond_3b

    if-eq v1, v2, :cond_34

    move v11, v0

    goto :goto_3f

    :cond_34
    iget v1, v10, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    int-to-float v4, v7

    mul-float/2addr v1, v4

    float-to-int v0, v1

    move v11, v0

    goto :goto_3f

    :cond_3b
    iget v1, v10, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    float-to-int v0, v1

    move v11, v0

    :goto_3f
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v6, v0, v12, v13}, Lmiui/widget/NavigationLayout;->measureChild(Landroid/view/View;II)V

    const/4 v14, 0x1

    iget v0, v6, Lmiui/widget/NavigationLayout;->mDrawerMode:I

    if-ne v0, v3, :cond_7a

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    iget v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6a

    iget-object v1, v6, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    goto :goto_6b

    :cond_6a
    const/4 v1, 0x0

    :goto_6b
    iget v5, v0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v5, v4

    iget-object v4, v6, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    move v15, v1

    goto :goto_7c

    :cond_7a
    const/4 v1, 0x0

    move v15, v1

    :goto_7c
    iget v0, v6, Lmiui/widget/NavigationLayout;->mDrawerEnabledOrientation:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_91

    if-eqz v9, :cond_91

    iget-object v1, v6, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v15

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/NavigationLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_bd

    :cond_91
    iget v0, v6, Lmiui/widget/NavigationLayout;->mDrawerEnabledOrientation:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_a6

    if-nez v9, :cond_a6

    iget-object v1, v6, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v15

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/NavigationLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_bd

    :cond_a6
    const/4 v14, 0x0

    iget-object v1, v6, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, v6, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    add-int v3, v0, v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/NavigationLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :goto_bd
    iget-boolean v0, v6, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-eq v0, v14, :cond_ca

    iput-boolean v14, v6, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz v0, :cond_ca

    invoke-interface {v0, v14}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerEnableStateChange(Z)V

    :cond_ca
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Lmiui/widget/NavigationLayout$SavedState;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lmiui/widget/NavigationLayout$SavedState;->offset:F

    invoke-direct {p0, v1}, Lmiui/widget/NavigationLayout;->setNavigationOffset(F)V

    iget v1, v0, Lmiui/widget/NavigationLayout$SavedState;->offset:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-ltz v1, :cond_1c

    invoke-virtual {p0, v2}, Lmiui/widget/NavigationLayout;->openNavigationDrawer(Z)V

    goto :goto_1f

    :cond_1c
    invoke-virtual {p0, v2}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    :goto_1f
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, p0, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    if-eqz v1, :cond_e

    const/4 v0, 0x2

    goto :goto_f

    :cond_e
    nop

    :goto_f
    invoke-virtual {v2, v0}, Lcom/miui/internal/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lmiui/widget/NavigationLayout$SavedState;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lmiui/widget/NavigationLayout$SavedState;-><init>(Landroid/os/Parcelable;Lmiui/widget/NavigationLayout$1;)V

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->getNavigationOffset()F

    move-result v2

    iput v2, v1, Lmiui/widget/NavigationLayout$SavedState;->offset:F

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-eqz v0, :cond_75

    iget v0, p0, Lmiui/widget/NavigationLayout;->mLockMode:I

    if-eqz v0, :cond_e

    goto :goto_75

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6d

    if-eq v0, v4, :cond_2a

    const/4 v5, 0x3

    if-eq v0, v5, :cond_24

    goto :goto_74

    :cond_24
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->closePeekingDrawer()V

    iput-boolean v3, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    goto :goto_74

    :cond_2a
    iget v3, p0, Lmiui/widget/NavigationLayout;->mInitialMotionX:F

    sub-float v3, v1, v3

    iget v5, p0, Lmiui/widget/NavigationLayout;->mInitialMotionY:F

    sub-float v5, v2, v5

    iget-object v6, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v6}, Lcom/miui/internal/widget/ViewDragHelper;->getTouchSlop()I

    move-result v6

    const/4 v7, 0x1

    iget-object v8, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    float-to-int v9, v1

    float-to-int v10, v2

    invoke-virtual {v8, v9, v10}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_5a

    iget-object v9, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    if-ne v8, v9, :cond_5a

    mul-float v9, v3, v3

    mul-float v10, v5, v5

    add-float/2addr v9, v10

    mul-int v10, v6, v6

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5a

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result v9

    if-eqz v9, :cond_5a

    const/4 v7, 0x0

    :cond_5a
    iget-object v9, p0, Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v9}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz v7, :cond_65

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->closePeekingDrawer()V

    goto :goto_74

    :cond_65
    iget v9, p0, Lmiui/widget/NavigationLayout;->mLockMode:I

    if-nez v9, :cond_74

    invoke-virtual {p0, v4}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    goto :goto_74

    :cond_6d
    iput v1, p0, Lmiui/widget/NavigationLayout;->mInitialMotionX:F

    iput v2, p0, Lmiui/widget/NavigationLayout;->mInitialMotionY:F

    iput-boolean v3, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    nop

    :cond_74
    :goto_74
    return v4

    :cond_75
    :goto_75
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public openNavigationDrawer(Z)V
    .registers 6

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mFirstMeasure:Z

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    :cond_5
    if-eqz p1, :cond_19

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/internal/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_25

    :cond_19
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lmiui/widget/NavigationLayout;->setNavigationOffset(F)V

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerOpened()V

    :cond_25
    :goto_25
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    iget-boolean v1, p0, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    goto :goto_9

    :cond_8
    const/4 v1, 0x1

    :goto_9
    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->isEdgeTouched(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_12
    if-eqz p1, :cond_17

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->closePeekingDrawer()V

    :cond_17
    return-void
.end method

.method public setContentEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lmiui/widget/NavigationLayout;->setChildViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    goto :goto_c

    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    :goto_c
    iput-object p1, p0, Lmiui/widget/NavigationLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    return-void
.end method

.method public setDividerWidth(I)V
    .registers 2

    iput p1, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    return-void
.end method

.method public setDrawerEnabledOrientation(I)V
    .registers 2

    iput p1, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabledOrientation:I

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    return-void
.end method

.method public setDrawerLockMode(I)V
    .registers 4

    iget v0, p0, Lmiui/widget/NavigationLayout;->mLockMode:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lmiui/widget/NavigationLayout;->mLockMode:I

    if-eqz p1, :cond_e

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ViewDragHelper;->cancel()V

    :cond_e
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    goto :goto_1d

    :cond_16
    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->openNavigationDrawer(Z)V

    goto :goto_1d

    :cond_1a
    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    :goto_1d
    return-void
.end method

.method public setDrawerMode(I)V
    .registers 2

    iput p1, p0, Lmiui/widget/NavigationLayout;->mDrawerMode:I

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    return-void
.end method

.method public setNavigationEanbled(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lmiui/widget/NavigationLayout;->setChildViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setNavigationListener(Lmiui/widget/NavigationLayout$NavigationListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    return-void
.end method

.method public setNavigationShadow(I)V
    .registers 3

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->setNavigationShadow(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationShadow(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    return-void
.end method

.method public setScrimColor(I)V
    .registers 2

    iput p1, p0, Lmiui/widget/NavigationLayout;->mScrimColor:I

    return-void
.end method
