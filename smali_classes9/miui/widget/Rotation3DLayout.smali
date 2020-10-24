.class public Lmiui/widget/Rotation3DLayout;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field private static final DEFAULT_CHILD_GRAVITY:I = 0x800033

.field private static final LAYOUT_DIRECTION_LTR:I = 0x0

.field private static final LAYOUT_DIRECTION_RTL:I = 0x1

.field private static final MAX_GRAVITY_DEGREE:I = 0x2d

.field private static final MAX_ROTATION_DEGREE_WIDTH:I = 0xa

.field private static final RESET_ANIM_DURATION:I = 0x12c

.field private static final RESET_BOUNCE_PATTERNS:[F

.field private static final ROTATION_DEGRREE_PER_PIXEL:F


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mEnableTouchRotation:Z

.field private mIsAutoRotationByGravity:Z

.field private mIsDoingAnimation:Z

.field private mIsTouch:Z

.field private mLastTouchDownEventTime:J

.field private mMaxRotationDegree:F

.field private mOrientationSensor:Landroid/hardware/Sensor;

.field private mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mResetAnimDuration:I

.field private mResetBouncePatterns:[F

.field private mResetBounceValuesX:[F

.field private mResetBounceValuesY:[F

.field private mRotationDegreePerPixel:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTargetRotationX:F

.field private mTargetRotationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lmiui/widget/Rotation3DLayout;->computeRotationPerPixel(F)F

    move-result v0

    sput v0, Lmiui/widget/Rotation3DLayout;->ROTATION_DEGRREE_PER_PIXEL:F

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/widget/Rotation3DLayout;->RESET_BOUNCE_PATTERNS:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        -0x41000000    # -0.5f
        0x3e800000    # 0.25f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/Rotation3DLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/Rotation3DLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F

    sget v0, Lmiui/widget/Rotation3DLayout;->ROTATION_DEGRREE_PER_PIXEL:F

    iput v0, p0, Lmiui/widget/Rotation3DLayout;->mRotationDegreePerPixel:F

    const/16 v0, 0x12c

    iput v0, p0, Lmiui/widget/Rotation3DLayout;->mResetAnimDuration:I

    sget-object v0, Lmiui/widget/Rotation3DLayout;->RESET_BOUNCE_PATTERNS:[F

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->mResetBouncePatterns:[F

    array-length v1, v0

    new-array v1, v1, [F

    iput-object v1, p0, Lmiui/widget/Rotation3DLayout;->mResetBounceValuesX:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->mResetBounceValuesY:[F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/widget/Rotation3DLayout;->mLastTouchDownEventTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->mEnableTouchRotation:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->mIsTouch:Z

    iput-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->mIsDoingAnimation:Z

    iput-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->mIsAutoRotationByGravity:Z

    new-instance v1, Lmiui/widget/Rotation3DLayout$4;

    invoke-direct {v1, p0}, Lmiui/widget/Rotation3DLayout$4;-><init>(Lmiui/widget/Rotation3DLayout;)V

    iput-object v1, p0, Lmiui/widget/Rotation3DLayout;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    sget-object v1, Lcom/miui/internal/R$styleable;->Rotation3DLayout:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$styleable;->Rotation3DLayout_maxRotationDegree:I

    iget p3, p0, Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lmiui/widget/Rotation3DLayout;->setMaxRotationDegree(F)V

    sget p2, Lcom/miui/internal/R$styleable;->Rotation3DLayout_autoGravityRotation:I

    iget-boolean p3, p0, Lmiui/widget/Rotation3DLayout;->mIsAutoRotationByGravity:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiui/widget/Rotation3DLayout;->mIsAutoRotationByGravity:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$002(Lmiui/widget/Rotation3DLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/Rotation3DLayout;->mIsDoingAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lmiui/widget/Rotation3DLayout;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/widget/Rotation3DLayout;->setRotationXInternal(FZ)V

    return-void
.end method

.method static synthetic access$200(Lmiui/widget/Rotation3DLayout;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/widget/Rotation3DLayout;->setRotationYInternal(FZ)V

    return-void
.end method

.method static synthetic access$300(Lmiui/widget/Rotation3DLayout;)F
    .locals 0

    iget p0, p0, Lmiui/widget/Rotation3DLayout;->mTargetRotationX:F

    return p0
.end method

.method static synthetic access$302(Lmiui/widget/Rotation3DLayout;F)F
    .locals 0

    iput p1, p0, Lmiui/widget/Rotation3DLayout;->mTargetRotationX:F

    return p1
.end method

.method static synthetic access$400(Lmiui/widget/Rotation3DLayout;)F
    .locals 0

    iget p0, p0, Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F

    return p0
.end method

.method static synthetic access$500(Lmiui/widget/Rotation3DLayout;)F
    .locals 0

    iget p0, p0, Lmiui/widget/Rotation3DLayout;->mTargetRotationY:F

    return p0
.end method

.method static synthetic access$502(Lmiui/widget/Rotation3DLayout;F)F
    .locals 0

    iput p1, p0, Lmiui/widget/Rotation3DLayout;->mTargetRotationY:F

    return p1
.end method

.method private computeOffset(IF)I
    .locals 2

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    int-to-double p0, p1

    mul-double/2addr v0, p0

    double-to-int p0, v0

    return p0
.end method

.method private static computeRotationPerPixel(F)F
    .locals 2

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float/2addr p0, v0

    return p0
.end method

.method private setRotationXInternal(FZ)V
    .locals 6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    neg-float p1, v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRotationX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p2, :cond_3

    iget-boolean p2, p0, Lmiui/widget/Rotation3DLayout;->mIsTouch:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lmiui/widget/Rotation3DLayout;->mIsDoingAnimation:Z

    if-nez p2, :cond_4

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setRotationX(F)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/Rotation3DLayout;->onLayout(ZIIII)V

    :cond_4
    return-void
.end method

.method private setRotationYInternal(FZ)V
    .locals 6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    neg-float p1, v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRotationY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p2, :cond_3

    iget-boolean p2, p0, Lmiui/widget/Rotation3DLayout;->mIsTouch:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lmiui/widget/Rotation3DLayout;->mIsDoingAnimation:Z

    if-nez p2, :cond_4

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setRotationY(F)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/Rotation3DLayout;->onLayout(ZIIII)V

    :cond_4
    return-void
.end method


# virtual methods
.method public enableAutoRotationByGravity(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/Rotation3DLayout;->mIsAutoRotationByGravity:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->startGravityDetection()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->stopGravityDetection()V

    :goto_0
    return-void
.end method

.method public enableTouchRotation(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/Rotation3DLayout;->mEnableTouchRotation:Z

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->stopGravityDetection()V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    new-instance p0, Lmiui/widget/Rotation3DLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lmiui/widget/Rotation3DLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/widget/Rotation3DLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    new-instance p0, Lmiui/widget/Rotation3DLayout$LayoutParams;

    invoke-direct {p0, p1}, Lmiui/widget/Rotation3DLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    new-instance v0, Lmiui/widget/Rotation3DLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lmiui/widget/Rotation3DLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getMaxRotationDegree()F
    .locals 0

    iget p0, p0, Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->mEnableTouchRotation:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    sub-int v5, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v1, :cond_9

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lmiui/widget/Rotation3DLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    const v12, 0x800033

    :cond_0
    invoke-static {v12, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v13

    and-int/lit8 v12, v12, 0x70

    and-int/lit8 v13, v13, 0x7

    const/4 v14, 0x1

    if-eq v13, v14, :cond_3

    const/4 v14, 0x3

    if-eq v13, v14, :cond_1

    const/4 v14, 0x5

    if-eq v13, v14, :cond_2

    :cond_1
    iget v13, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v2

    goto :goto_2

    :cond_2
    sub-int v13, v3, v10

    goto :goto_1

    :cond_3
    sub-int v13, v3, v2

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v2

    iget v14, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    :goto_1
    iget v14, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v13, v14

    :goto_2
    const/16 v14, 0x10

    if-eq v12, v14, :cond_6

    const/16 v14, 0x30

    if-eq v12, v14, :cond_5

    const/16 v14, 0x50

    if-eq v12, v14, :cond_4

    goto :goto_3

    :cond_4
    sub-int v12, v5, v11

    goto :goto_4

    :cond_5
    :goto_3
    iget v12, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v4

    goto :goto_5

    :cond_6
    sub-int v12, v5, v4

    sub-int/2addr v12, v11

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    iget v14, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v14

    :goto_4
    iget v14, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v14

    :goto_5
    iget v14, v9, Lmiui/widget/Rotation3DLayout$LayoutParams;->zdistance:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getRotationY()F

    move-result v15

    invoke-direct {v0, v14, v15}, Lmiui/widget/Rotation3DLayout;->computeOffset(IF)I

    move-result v14

    add-int/2addr v13, v14

    iget v9, v9, Lmiui/widget/Rotation3DLayout$LayoutParams;->zdistance:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getRotationX()F

    move-result v14

    invoke-direct {v0, v9, v14}, Lmiui/widget/Rotation3DLayout;->computeOffset(IF)I

    move-result v9

    sub-int/2addr v12, v9

    if-nez p1, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    if-ne v13, v9, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    if-eq v12, v9, :cond_8

    :cond_7
    add-int/2addr v10, v13

    add-int/2addr v11, v12

    invoke-virtual {v8, v13, v12, v10, v11}, Landroid/view/View;->layout(IIII)V

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->mEnableTouchRotation:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lmiui/widget/Rotation3DLayout;->mLastTouchDownEventTime:J

    sub-long/2addr v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->resetRotation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->mIsTouch:Z

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lmiui/widget/Rotation3DLayout;->mLastTouchDownEventTime:J

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    div-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    div-int/2addr v5, v1

    iget-object v1, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_5
    int-to-float v1, v5

    sub-float/2addr v1, v3

    iget v3, p0, Lmiui/widget/Rotation3DLayout;->mRotationDegreePerPixel:F

    mul-float/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lmiui/widget/Rotation3DLayout;->setRotationXInternal(FZ)V

    int-to-float v1, v4

    sub-float/2addr v0, v1

    iget v1, p0, Lmiui/widget/Rotation3DLayout;->mRotationDegreePerPixel:F

    mul-float/2addr v0, v1

    invoke-direct {p0, v0, v2}, Lmiui/widget/Rotation3DLayout;->setRotationYInternal(FZ)V

    iput-boolean v2, p0, Lmiui/widget/Rotation3DLayout;->mIsTouch:Z

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    iget-boolean p1, p0, Lmiui/widget/Rotation3DLayout;->mIsAutoRotationByGravity:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->startGravityDetection()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->stopGravityDetection()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected resetRotation()V
    .locals 9

    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lmiui/widget/Rotation3DLayout$1;

    invoke-direct {v3, p0}, Lmiui/widget/Rotation3DLayout$1;-><init>(Lmiui/widget/Rotation3DLayout;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lmiui/widget/Rotation3DLayout$2;

    invoke-direct {v3, p0}, Lmiui/widget/Rotation3DLayout$2;-><init>(Lmiui/widget/Rotation3DLayout;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v3, p0, Lmiui/widget/Rotation3DLayout;->mResetAnimDuration:I

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lmiui/widget/Rotation3DLayout$3;

    invoke-direct {v4, p0}, Lmiui/widget/Rotation3DLayout$3;-><init>(Lmiui/widget/Rotation3DLayout;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v4, p0, Lmiui/widget/Rotation3DLayout;->mResetAnimDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v2

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRotationX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRotationY()F

    move-result v3

    move v4, v2

    :goto_0
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->mResetBouncePatterns:[F

    array-length v6, v5

    if-ge v4, v6, :cond_1

    iget-object v6, p0, Lmiui/widget/Rotation3DLayout;->mResetBounceValuesX:[F

    iget v7, p0, Lmiui/widget/Rotation3DLayout;->mTargetRotationX:F

    aget v8, v5, v4

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    aput v7, v6, v4

    iget-object v6, p0, Lmiui/widget/Rotation3DLayout;->mResetBounceValuesY:[F

    iget v7, p0, Lmiui/widget/Rotation3DLayout;->mTargetRotationY:F

    aget v5, v5, v4

    mul-float/2addr v5, v3

    add-float/2addr v7, v5

    aput v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lmiui/widget/Rotation3DLayout;->mResetBounceValuesX:[F

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lmiui/widget/Rotation3DLayout;->mResetBounceValuesY:[F

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public setMaxRotationDegree(F)V
    .locals 0

    iput p1, p0, Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F

    invoke-static {p1}, Lmiui/widget/Rotation3DLayout;->computeRotationPerPixel(F)F

    move-result p1

    iput p1, p0, Lmiui/widget/Rotation3DLayout;->mRotationDegreePerPixel:F

    return-void
.end method

.method public setResetAnimDuration(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/Rotation3DLayout;->mResetAnimDuration:I

    return-void
.end method

.method public setResetBouncePatterns([F)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iput-object p1, p0, Lmiui/widget/Rotation3DLayout;->mResetBouncePatterns:[F

    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->mResetBounceValuesX:[F

    array-length p1, p1

    new-array p1, p1, [F

    iput-object p1, p0, Lmiui/widget/Rotation3DLayout;->mResetBounceValuesY:[F

    :cond_0
    return-void
.end method

.method public setRotationX(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/Rotation3DLayout;->setRotationXInternal(FZ)V

    return-void
.end method

.method public setRotationY(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/Rotation3DLayout;->setRotationYInternal(FZ)V

    return-void
.end method

.method public startGravityDetection()V
    .locals 3

    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->mOrientationSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->mOrientationSensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lmiui/widget/Rotation3DLayout;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lmiui/widget/Rotation3DLayout;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    return-void
.end method

.method public stopGravityDetection()V
    .locals 3

    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/widget/Rotation3DLayout;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lmiui/widget/Rotation3DLayout;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->mOrientationSensor:Landroid/hardware/Sensor;

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->resetRotation()V

    :cond_0
    return-void
.end method

.method protected stopResetRotation()V
    .locals 0

    iget-object p0, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method
