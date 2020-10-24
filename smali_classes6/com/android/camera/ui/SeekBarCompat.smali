.class public Lcom/android/camera/ui/SeekBarCompat;
.super Landroid/widget/SeekBar;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final CENTER_SEEKBAR:I = 0x2

.field private static final INTERVAL:I = 0x5

.field public static final NORMAL_SEEKBAR:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAvaliableWidth:F

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBigCircleRadius:F

.field private mCenterTwoWayMode:Z

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCircleRadius:F

.field private mClearGap:I

.field private mClearPaint:Landroid/graphics/Paint;

.field private mCurrentCircleRadius:F

.field private mDownX:F

.field private mIsRTL:Z

.field private mLineWidth:F

.field private mOnSeekBarCompatTouchListener:Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatTouchListener;

.field private mPinPointPaint:Landroid/graphics/Paint;

.field private mPinProgress:I

.field private mPinProgressPaint:Landroid/graphics/Paint;

.field private mPinProgressRectF:Landroid/graphics/RectF;

.field private mPinRadius:F

.field private mScaleObject:Ljava/lang/Object;

.field private mSeekBarCompatChangeListener:Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;

.field private mStyle:Lmiuix/animation/IStateStyle;

.field private mTouchRect:Landroid/graphics/Rect;

.field private mUserLastSeekPoint:I

.field private mUserSeek:Z

.field private mVisualProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/SeekBarCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/camera/ui/SeekBarCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/ui/SeekBarCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/ui/SeekBarCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/SeekBarCompat;->mScaleObject:Ljava/lang/Object;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/SeekBarCompat;->mVisualProgress:F

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/SeekBarCompat;->mTouchRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/SeekBarCompat;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/SeekBarCompat;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mVisualProgress:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/ui/SeekBarCompat;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    return p1
.end method

.method private contains(III)Z
    .locals 1

    const/4 p0, 0x0

    if-ne p2, p3, :cond_0

    return p0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-le p1, v0, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mIsRTL:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/SeekBar;->setLayerType(ILandroid/graphics/Paint;)V

    const p1, 0x3fe8b439    # 1.818f

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mLineWidth:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-virtual {p1, v2, v3, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mClearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mClearPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/SeekBarCompat;->mLineWidth:F

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const p1, 0x413451ec    # 11.27f

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCircleRadius:F

    const p1, 0x4182e148    # 16.36f

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    iget p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCircleRadius:F

    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mLineWidth:F

    add-float/2addr p1, v2

    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinRadius:F

    const p1, 0x400b9581    # 2.181f

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mClearGap:I

    return-void
.end method

.method private startAnimator(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCircleRadius:F

    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mScaleObject:Ljava/lang/Object;

    iget v1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    const/4 v2, 0x0

    new-instance v3, Lcom/android/camera/ui/SeekBarCompat$2;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/SeekBarCompat$2;-><init>(Lcom/android/camera/ui/SeekBarCompat;)V

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/camera/animation/FolmeUtils;->basePhysicsAnimation(Ljava/lang/Object;FFFLcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private startScroll(I)V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/ui/SeekBarCompat;->mVisualProgress:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array v3, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    const/4 v6, -0x2

    invoke-virtual {v4, v6, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v5, Lcom/android/camera/ui/SeekBarCompat$1;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/SeekBarCompat$1;-><init>(Lcom/android/camera/ui/SeekBarCompat;)V

    aput-object v5, v0, v2

    invoke-virtual {v4, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {v1, p1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mStyle:Lmiuix/animation/IStateStyle;

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e19999a    # 0.15f
    .end array-data
.end method


# virtual methods
.method public getNextProgress(F)I
    .locals 3

    iget v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    :cond_0
    iget v2, p0, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    sub-float/2addr p1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    iget-boolean p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mIsRTL:Z

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result p1

    goto :goto_1

    :cond_3
    cmpl-float v1, p1, v0

    if-lez v1, :cond_4

    iget-boolean p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mIsRTL:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_4
    div-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-boolean v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mIsRTL:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    sub-int p1, v0, p1

    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mCenterTwoWayMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    sub-int/2addr p1, v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    iget p0, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    sub-int/2addr v0, p0

    invoke-static {p1, v1, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    invoke-static {p1, v1, p0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    :goto_2
    return p0
.end method

.method public getPinProgress()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    return p0
.end method

.method public getTouchRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/SeekBarCompat;->mTouchRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public isCenterTwoWayMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/SeekBarCompat;->mCenterTwoWayMode:Z

    return p0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v2

    div-int/lit8 v9, v2, 0x2

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    const/4 v10, 0x0

    cmpl-float v2, v2, v10

    const/high16 v11, 0x40000000    # 2.0f

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    mul-float/2addr v3, v11

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    :cond_0
    iget-boolean v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mCenterTwoWayMode:Z

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mVisualProgress:F

    iget v3, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mVisualProgress:F

    :goto_0
    move v12, v2

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    iget-boolean v3, v1, Lcom/android/camera/ui/SeekBarCompat;->mIsRTL:Z

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_2
    iget v3, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    :goto_1
    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    add-float v13, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v2

    int-to-float v6, v2

    const/4 v7, 0x0

    const/16 v8, 0x1f

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v14

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    iget v3, v1, Lcom/android/camera/ui/SeekBarCompat;->mCircleRadius:F

    sub-float v3, v2, v3

    int-to-float v15, v9

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mLineWidth:F

    div-float/2addr v2, v11

    sub-float v4, v15, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    sub-float/2addr v2, v5

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mCircleRadius:F

    add-float/2addr v5, v2

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mLineWidth:F

    div-float/2addr v2, v11

    add-float v6, v15, v2

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v9, v1, Lcom/android/camera/ui/SeekBarCompat;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-boolean v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mIsRTL:Z

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    sub-float/2addr v5, v6

    iget v6, v1, Lcom/android/camera/ui/SeekBarCompat;->mCircleRadius:F

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->left:F

    iget-boolean v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mCenterTwoWayMode:Z

    if-eqz v2, :cond_5

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    int-to-float v2, v2

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_3

    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinRadius:F

    add-float/2addr v5, v13

    iput v5, v2, Landroid/graphics/RectF;->left:F

    goto :goto_2

    :cond_3
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    int-to-float v2, v2

    cmpl-float v2, v12, v2

    if-lez v2, :cond_4

    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinRadius:F

    sub-float v5, v13, v5

    iput v5, v2, Landroid/graphics/RectF;->left:F

    :cond_4
    :goto_2
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Lcom/android/camera/ui/SeekBarCompat;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current progress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    int-to-float v2, v2

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_6

    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    :goto_3
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_6
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v4

    goto :goto_3

    :goto_4
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v12

    iget v6, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mLineWidth:F

    div-float/2addr v4, v11

    sub-float v4, v15, v4

    iput v4, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mLineWidth:F

    div-float/2addr v4, v11

    add-float/2addr v4, v15

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget-object v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v10, v10, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    if-eqz v2, :cond_7

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinRadius:F

    iget-object v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v13, v15, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_7
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mTouchRect:Landroid/graphics/Rect;

    if-nez v2, :cond_8

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mTouchRect:Landroid/graphics/Rect;

    :cond_8
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mTouchRect:Landroid/graphics/Rect;

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    float-to-double v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v12

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    sub-float/2addr v6, v7

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearGap:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    float-to-double v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v12

    iget v8, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    add-float/2addr v7, v8

    iget v8, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearGap:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v6

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    float-to-double v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v12

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    sub-float/2addr v4, v5

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v3, v2

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    sub-float v4, v15, v2

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    float-to-double v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v12

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v2, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v2, v7

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    add-float/2addr v2, v7

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearGap:I

    int-to-float v7, v7

    add-float/2addr v2, v7

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-int v2, v5

    int-to-float v5, v2

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    add-float v6, v15, v2

    iget-object v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v12

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    iget-object v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v11

    sub-float/2addr v3, v4

    iget-object v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mCirclePaint:Landroid/graphics/Paint;

    :goto_5
    invoke-virtual {v0, v2, v15, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :cond_9
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    iget v6, v1, Lcom/android/camera/ui/SeekBarCompat;->mCircleRadius:F

    sub-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->left:F

    iget-boolean v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mCenterTwoWayMode:Z

    if-eqz v2, :cond_c

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    int-to-float v2, v2

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_a

    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinRadius:F

    sub-float v5, v13, v5

    iput v5, v2, Landroid/graphics/RectF;->left:F

    goto :goto_6

    :cond_a
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    int-to-float v2, v2

    cmpl-float v2, v12, v2

    if-lez v2, :cond_b

    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinRadius:F

    add-float/2addr v5, v13

    iput v5, v2, Landroid/graphics/RectF;->left:F

    :cond_b
    :goto_6
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Lcom/android/camera/ui/SeekBarCompat;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current progress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_c
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    int-to-float v2, v2

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_d

    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    :goto_7
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    :cond_d
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v4

    goto :goto_7

    :goto_8
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v5, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mLineWidth:F

    div-float/2addr v4, v11

    sub-float v4, v15, v4

    iput v4, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mLineWidth:F

    div-float/2addr v4, v11

    add-float/2addr v4, v15

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget-object v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v10, v10, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    if-eqz v2, :cond_e

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinRadius:F

    iget-object v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v13, v15, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_e
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mTouchRect:Landroid/graphics/Rect;

    if-nez v2, :cond_f

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mTouchRect:Landroid/graphics/Rect;

    :cond_f
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mTouchRect:Landroid/graphics/Rect;

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    float-to-double v4, v4

    iget v6, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v6, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    sub-float/2addr v6, v7

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearGap:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    float-to-double v5, v5

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v7, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    add-float/2addr v7, v8

    iget v8, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearGap:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v6

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    float-to-double v2, v2

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v4, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    sub-float/2addr v4, v5

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v3, v2

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    sub-float v4, v15, v2

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    float-to-double v5, v2

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v2, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v2, v7

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    add-float/2addr v2, v7

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearGap:I

    int-to-float v7, v7

    add-float/2addr v2, v7

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-int v2, v5

    int-to-float v5, v2

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    add-float v6, v15, v2

    iget-object v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    iget v3, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v12, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v12, v3

    add-float/2addr v2, v12

    iget v3, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    iget-object v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v11

    sub-float/2addr v3, v4

    iget-object v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mCirclePaint:Landroid/graphics/Paint;

    goto/16 :goto_5

    :goto_9
    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    if-ne p2, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->getInstance(Landroid/content/Context;)Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->performModeSwitch()V

    :cond_0
    iput p2, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserLastSeekPoint:I

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserSeek:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    iget v1, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserLastSeekPoint:I

    invoke-direct {p0, v0, p2, v1}, Lcom/android/camera/ui/SeekBarCompat;->contains(III)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mSeekBarCompatChangeListener:Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mCenterTwoWayMode:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    sub-int/2addr p2, v0

    :cond_3
    iget-object p0, p0, Lcom/android/camera/ui/SeekBarCompat;->mSeekBarCompatChangeListener:Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_4
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/SeekBarCompat;->mSeekBarCompatChangeListener:Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/SeekBarCompat;->mSeekBarCompatChangeListener:Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    return v3

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserSeek:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserLastSeekPoint:I

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    if-eq v0, v4, :cond_4

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserLastSeekPoint:I

    iput-boolean v3, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserSeek:Z

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserSeek:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SeekBarCompat;->getNextProgress(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/SeekBarCompat;->startScroll(I)V

    invoke-direct {p0, v2}, Lcom/android/camera/ui/SeekBarCompat;->startAnimator(Z)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3}, Lcom/android/camera/ui/SeekBarCompat;->startAnimator(Z)V

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserLastSeekPoint:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mDownX:F

    :cond_4
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SeekBarCompat;->getNextProgress(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/SeekBarCompat;->startScroll(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mOnSeekBarCompatTouchListener:Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatTouchListener;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_7

    if-eq p1, v1, :cond_7

    return v2

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/SeekBarCompat;->getTouchRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/SeekBarCompat;->getNextProgress(F)I

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/android/camera/ui/SeekBarCompat;->setProgress(IZ)V

    return v3
.end method

.method public setCenterTwoWayMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCenterTwoWayMode:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mSeekBarCompatChangeListener:Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;

    return-void
.end method

.method public setOnSeekBarCompatTouchListener(Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mOnSeekBarCompatTouchListener:Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatTouchListener;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/SeekBarCompat;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgress(IZ)V
    .locals 7

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    monitor-enter p0

    if-nez p2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/SeekBarCompat;->mStyle:Lmiuix/animation/IStateStyle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SeekBarCompat;->mStyle:Lmiuix/animation/IStateStyle;

    invoke-interface {v1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    :cond_0
    int-to-float v1, p1

    iput v1, p0, Lcom/android/camera/ui/SeekBarCompat;->mVisualProgress:F

    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCenterTwoWayMode:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    add-int/2addr p1, v1

    :cond_2
    if-nez p2, :cond_3

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_1
    const-class p2, Landroid/widget/ProgressBar;

    const-string v1, "setProgressInternal"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v6, 0x2

    aput-object v0, v3, v6

    invoke-virtual {p2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p1, v0, v4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, v0, v6

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSeekBarPinProgress(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result v1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressPaint:Landroid/graphics/Paint;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
