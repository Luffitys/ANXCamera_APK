.class public Lmiui/widget/NavigationLayout;
.super Landroid/view/ViewGroup;
.source ""


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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lmiui/R$attr;->navigationLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

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

    move-result-object p1

    sget p2, Lmiui/R$styleable;->NavigationLayout_navigationDivider:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lmiui/widget/NavigationLayout;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget p2, Lmiui/R$styleable;->NavigationLayout_navigationShadow:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lmiui/widget/NavigationLayout;->setNavigationShadow(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    sget p2, Lmiui/R$styleable;->NavigationLayout_navigationDividerWidth:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lmiui/widget/NavigationLayout;->setDividerWidth(I)V

    :cond_2
    sget p2, Lmiui/R$styleable;->NavigationLayout_navigationScrimColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NavigationLayout;->mScrimColor:I

    sget p2, Lmiui/R$styleable;->NavigationLayout_drawerEnabledOrientation:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabledOrientation:I

    sget p2, Lmiui/R$styleable;->NavigationLayout_portraitNavigationWidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p2, p3}, Lmiui/widget/NavigationLayout$WidthDescription;->parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiui/widget/NavigationLayout$WidthDescription;

    move-result-object p2

    iput-object p2, p0, Lmiui/widget/NavigationLayout;->mPortraitWidthDescription:Lmiui/widget/NavigationLayout$WidthDescription;

    sget p2, Lmiui/R$styleable;->NavigationLayout_landscapeNavigationWidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p2, p3}, Lmiui/widget/NavigationLayout$WidthDescription;->parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiui/widget/NavigationLayout$WidthDescription;

    move-result-object p2

    iput-object p2, p0, Lmiui/widget/NavigationLayout;->mLandscapeWidthDescription:Lmiui/widget/NavigationLayout$WidthDescription;

    sget p2, Lmiui/R$styleable;->NavigationLayout_drawerMode:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NavigationLayout;->mDrawerMode:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p1, 0x3f000000    # 0.5f

    new-instance p2, Lmiui/widget/NavigationLayout$ViewDragCallback;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lmiui/widget/NavigationLayout$ViewDragCallback;-><init>(Lmiui/widget/NavigationLayout;Lmiui/widget/NavigationLayout$1;)V

    invoke-static {p0, p1, p2}, Lcom/miui/internal/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/miui/internal/widget/ViewDragHelper$Callback;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget-object p2, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    const/high16 p3, 0x43c80000    # 400.0f

    mul-float/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/miui/internal/widget/ViewDragHelper;->setMinVelocity(F)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;
    .locals 0

    iget-object p0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    return-object p0
.end method

.method static synthetic access$1000(Lmiui/widget/NavigationLayout;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1100(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;
    .locals 0

    iget-object p0, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    return-object p0
.end method

.method static synthetic access$200(Lmiui/widget/NavigationLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    return p0
.end method

.method static synthetic access$300(Lmiui/widget/NavigationLayout;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->cancelChildViewTouch()V

    return-void
.end method

.method static synthetic access$500(Lmiui/widget/NavigationLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$602(Lmiui/widget/NavigationLayout;F)F
    .locals 0

    iput p1, p0, Lmiui/widget/NavigationLayout;->mScrimOpacityAnimatior:F

    return p1
.end method

.method static synthetic access$800(Lmiui/widget/NavigationLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->setNavigationOffset(F)V

    return-void
.end method

.method static synthetic access$900(Lmiui/widget/NavigationLayout;)F
    .locals 0

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->getNavigationOffset()F

    move-result p0

    return p0
.end method

.method private cancelChildViewTouch()V
    .locals 9

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    :cond_1
    return-void
.end method

.method private closePeekingDrawer()V
    .locals 2

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    iget-boolean v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->isPeeking:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->isPeeking:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    :cond_0
    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-boolean v2, p0, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    iget v1, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    sub-int v1, v2, v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lmiui/widget/NavigationLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawNavigationDisableScrim(Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p0, Lmiui/widget/NavigationLayout;->mScrimOpacityAnimatior:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget v1, p0, Lmiui/widget/NavigationLayout;->mScrimColor:I

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    ushr-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    shl-int/lit8 v0, v0, 0x18

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lmiui/widget/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawScrim(Landroid/graphics/Canvas;)V
    .locals 8

    iget v0, p0, Lmiui/widget/NavigationLayout;->mScrimOpacity:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget v1, p0, Lmiui/widget/NavigationLayout;->mScrimColor:I

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    ushr-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    shl-int/lit8 v0, v0, 0x18

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    :goto_1
    int-to-float v3, v0

    const/4 v4, 0x0

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lmiui/widget/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-boolean v1, p0, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v0, v1

    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lmiui/widget/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getNavigationOffset()F
    .locals 0

    iget-object p0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lmiui/widget/NavigationLayout$LayoutParams;

    iget p0, p0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    return p0
.end method

.method private getScrimAnimatorListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/widget/NavigationLayout$2;

    invoke-direct {v0, p0}, Lmiui/widget/NavigationLayout$2;-><init>(Lmiui/widget/NavigationLayout;)V

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    :cond_0
    iget-object p0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method private isDrawerPeeking()Z
    .locals 0

    iget-object p0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lmiui/widget/NavigationLayout$LayoutParams;

    iget-boolean p0, p0, Lmiui/widget/NavigationLayout$LayoutParams;->isPeeking:Z

    return p0
.end method

.method private pullChildren()V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lmiui/R$id;->content:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    sget v0, Lmiui/R$id;->navigation:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private setChildViewEnabled(Landroid/view/View;Z)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    if-eqz p2, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    aput v6, v3, v2

    if-eqz p2, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    aput v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_4

    :cond_4
    new-array v0, v3, [F

    if-eqz p2, :cond_5

    move v3, v4

    goto :goto_2

    :cond_5
    move v3, v5

    :goto_2
    aput v3, v0, v2

    if-eqz p2, :cond_6

    move v2, v5

    goto :goto_3

    :cond_6
    move v2, v4

    :goto_3
    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    :goto_4
    iput-object p1, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    iget-object p1, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x1f4

    goto :goto_5

    :cond_7
    const-wide/16 v0, 0x0

    :goto_5
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->getScrimAnimatorListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p2, :cond_8

    goto :goto_6

    :cond_8
    move v4, v5

    :goto_6
    iput v4, p0, Lmiui/widget/NavigationLayout;->mScrimOpacityAnimatior:F

    iget-object p0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setNavigationOffset(F)V
    .locals 2

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    iget v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput p1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerSlide(F)V

    :cond_1
    iget p1, p0, Lmiui/widget/NavigationLayout;->mDrawerMode:I

    if-nez p1, :cond_2

    iget-object p0, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollX(I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    iget-boolean p0, p0, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    neg-int p1, p1

    :goto_0
    int-to-float p0, p1

    iget p1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setScrollX(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :goto_1
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lmiui/widget/NavigationLayout$LayoutParams;

    return p0
.end method

.method public closeNavigationDrawer(Z)V
    .locals 3

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mFirstMeasure:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean p1, p0, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    neg-int p1, p1

    :goto_0
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/miui/internal/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->setNavigationOffset(F)V

    iget-object p1, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerClosed()V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    iget-object p1, p0, Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public computeScroll()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    iget v0, p0, Lmiui/widget/NavigationLayout;->mDrawerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->getNavigationOffset()F

    move-result v0

    :goto_0
    iput v0, p0, Lmiui/widget/NavigationLayout;->mScrimOpacity:F

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->drawScrim(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->drawShadow(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->drawDivider(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->drawNavigationDisableScrim(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result p1

    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

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

    if-ge v2, v0, :cond_0

    if-ge v0, v3, :cond_0

    if-ge v4, v1, :cond_0

    if-ge v1, v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance p0, Lmiui/widget/NavigationLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lmiui/widget/NavigationLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lmiui/widget/NavigationLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lmiui/widget/NavigationLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    new-instance p0, Lmiui/widget/NavigationLayout$LayoutParams;

    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getDividerWidth()I
    .locals 0

    iget p0, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    return p0
.end method

.method public getDrawerEnabledOrientation()I
    .locals 0

    iget p0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabledOrientation:I

    return p0
.end method

.method public getDrawerLockMode()I
    .locals 0

    iget p0, p0, Lmiui/widget/NavigationLayout;->mLockMode:I

    return p0
.end method

.method public isNavigationDrawerOpen()Z
    .locals 1

    iget-object p0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lmiui/widget/NavigationLayout$LayoutParams;

    iget p0, p0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->pullChildren()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-boolean v1, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lmiui/widget/NavigationLayout;->mLockMode:I

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_2

    const/4 p1, 0x2

    const/4 v4, 0x3

    if-eq v1, p1, :cond_1

    if-eq v1, v4, :cond_2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {p1, v4}, Lcom/miui/internal/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->closePeekingDrawer()V

    iput-boolean v3, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    :cond_3
    :goto_0
    move p1, v3

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput v1, p0, Lmiui/widget/NavigationLayout;->mInitialMotionX:F

    iput p1, p0, Lmiui/widget/NavigationLayout;->mInitialMotionY:F

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->getNavigationOffset()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    float-to-int v1, v1

    float-to-int p1, p1

    invoke-virtual {v4, v1, p1}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    if-ne p1, v1, :cond_5

    move p1, v2

    goto :goto_1

    :cond_5
    move p1, v3

    :goto_1
    iput-boolean v3, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    :goto_2
    if-nez v0, :cond_7

    if-nez p1, :cond_7

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->isDrawerPeeking()Z

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p0, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :cond_7
    :goto_3
    return v2

    :cond_8
    :goto_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    move-object v6, p0

    move v7, p2

    iget-boolean v0, v6, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    const/4 v8, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v6, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lmiui/widget/NavigationLayout$LayoutParams;

    neg-int v1, v0

    int-to-float v10, v1

    int-to-float v11, v0

    iget v1, v9, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    mul-float/2addr v1, v11

    add-float/2addr v1, v10

    float-to-int v2, v1

    iget-object v1, v6, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    add-int v4, v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p0

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v7

    iget v1, v6, Lmiui/widget/NavigationLayout;->mDrawerMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, v9, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    mul-float/2addr v10, v1

    float-to-int v1, v10

    iget-object v2, v6, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    iget-boolean v3, v6, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    if-eqz v3, :cond_0

    rsub-int/lit8 v1, v1, 0x0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setScrollX(I)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, v6, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setScrollX(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    int-to-float v0, v7

    iget v1, v9, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    mul-float/2addr v11, v1

    add-float/2addr v0, v11

    float-to-int v0, v0

    move/from16 v4, p4

    move v2, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v0

    move v2, v7

    :goto_1
    iget-object v1, v6, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p0

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    goto :goto_2

    :cond_4
    iget-object v1, v6, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, v7, v0

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p0

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v7

    iget v1, v6, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    add-int v2, v0, v1

    iget-object v1, v6, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, v2, v0

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    iget-object v0, v6, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setScrollX(I)V

    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    const/4 v6, 0x0

    iput-boolean v6, p0, Lmiui/widget/NavigationLayout;->mFirstMeasure:Z

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->pullChildren()V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const/4 v7, 0x1

    if-ne v2, v3, :cond_0

    move v2, v7

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    if-eqz v2, :cond_1

    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mLandscapeWidthDescription:Lmiui/widget/NavigationLayout$WidthDescription;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mPortraitWidthDescription:Lmiui/widget/NavigationLayout$WidthDescription;

    :goto_1
    iget v5, v4, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    move v0, v6

    goto :goto_2

    :cond_2
    iget v4, v4, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    int-to-float v0, v0

    mul-float/2addr v4, v0

    float-to-int v0, v4

    goto :goto_2

    :cond_3
    iget v0, v4, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    float-to-int v0, v0

    :goto_2
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {p0, v4, v0, v1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget v0, p0, Lmiui/widget/NavigationLayout;->mDrawerMode:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    iget v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v6

    :goto_3
    iget v0, v0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v4

    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    move v4, v1

    goto :goto_4

    :cond_5
    move v4, v6

    :goto_4
    iget v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabledOrientation:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    :goto_5
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, v4

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_6

    :cond_6
    iget v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabledOrientation:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_7

    if-nez v2, :cond_7

    goto :goto_5

    :goto_6
    move v6, v7

    goto :goto_7

    :cond_7
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    add-int v3, v0, v2

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    :goto_7
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-eq v0, v6, :cond_8

    iput-boolean v6, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz v0, :cond_8

    invoke-interface {v0, v6}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerEnableStateChange(Z)V

    :cond_8
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lmiui/widget/NavigationLayout$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lmiui/widget/NavigationLayout$SavedState;->offset:F

    invoke-direct {p0, v0}, Lmiui/widget/NavigationLayout;->setNavigationOffset(F)V

    iget p1, p1, Lmiui/widget/NavigationLayout$SavedState;->offset:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->openNavigationDrawer(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    :goto_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    iget-object p0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lmiui/widget/NavigationLayout$SavedState;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lmiui/widget/NavigationLayout$SavedState;-><init>(Landroid/os/Parcelable;Lmiui/widget/NavigationLayout$1;)V

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->getNavigationOffset()F

    move-result p0

    iput p0, v1, Lmiui/widget/NavigationLayout$SavedState;->offset:F

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lmiui/widget/NavigationLayout;->mLockMode:I

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->closePeekingDrawer()V

    goto :goto_1

    :cond_2
    iget v0, p0, Lmiui/widget/NavigationLayout;->mInitialMotionX:F

    sub-float v0, v1, v0

    iget v4, p0, Lmiui/widget/NavigationLayout;->mInitialMotionY:F

    sub-float v4, p1, v4

    iget-object v5, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v5}, Lcom/miui/internal/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    iget-object v6, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    float-to-int v1, v1

    float-to-int p1, p1

    invoke-virtual {v6, v1, p1}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    if-ne p1, v1, :cond_3

    mul-float/2addr v0, v0

    mul-float/2addr v4, v4

    add-float/2addr v0, v4

    mul-int/2addr v5, v5

    int-to-float p1, v5

    cmpg-float p1, v0, p1

    if-gez p1, :cond_3

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->closePeekingDrawer()V

    goto :goto_2

    :cond_4
    iget p1, p0, Lmiui/widget/NavigationLayout;->mLockMode:I

    if-nez p1, :cond_6

    invoke-virtual {p0, v3}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    goto :goto_2

    :cond_5
    iput v1, p0, Lmiui/widget/NavigationLayout;->mInitialMotionX:F

    iput p1, p0, Lmiui/widget/NavigationLayout;->mInitialMotionY:F

    :goto_1
    iput-boolean v2, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    :cond_6
    :goto_2
    return v3

    :cond_7
    :goto_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public openNavigationDrawer(Z)V
    .locals 3

    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mFirstMeasure:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/internal/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->setNavigationOffset(F)V

    iget-object p1, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerOpened()V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    iget-boolean v1, p0, Lmiui/widget/NavigationLayout;->mLayoutRtl:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->isEdgeTouched(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->closePeekingDrawer()V

    :cond_2
    return-void
.end method

.method public setContentEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lmiui/widget/NavigationLayout;->setChildViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    iput-object p1, p0, Lmiui/widget/NavigationLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setDrawerEnabledOrientation(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabledOrientation:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 2

    iget v0, p0, Lmiui/widget/NavigationLayout;->mLockMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lmiui/widget/NavigationLayout;->mLockMode:I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ViewDragHelper;->cancel()V

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->openNavigationDrawer(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    :goto_0
    return-void
.end method

.method public setDrawerMode(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/NavigationLayout;->mDrawerMode:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setNavigationEanbled(Z)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lmiui/widget/NavigationLayout;->setChildViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setNavigationListener(Lmiui/widget/NavigationLayout$NavigationListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    return-void
.end method

.method public setNavigationShadow(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/NavigationLayout;->setNavigationShadow(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setScrimColor(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/NavigationLayout;->mScrimColor:I

    return-void
.end method
