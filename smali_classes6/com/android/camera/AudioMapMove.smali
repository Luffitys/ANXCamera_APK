.class public Lcom/android/camera/AudioMapMove;
.super Landroid/view/View;
.source ""


# static fields
.field public static final DEFAULT_ANIM_TIME_ONE:I = 0x96

.field public static final DEFAULT_ANIM_TIME_SECOND:I = 0x50

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private antiAlias:Z

.field private linearGradient1:Landroid/graphics/LinearGradient;

.field private linearGradient2:Landroid/graphics/LinearGradient;

.field private mAnimTimeAudioMap:J

.field private mAnimTimeLine:J

.field private mAnimatorAudioMap:Landroid/animation/ValueAnimator;

.field private mAnimatorLine:Landroid/animation/ValueAnimator;

.field private mAudioMapHeight:F

.field private mDialPaint:Landroid/graphics/Paint;

.field private mEndL:F

.field private mEndR:F

.field private mFirstRectLeft:F

.field private mFirstRectRight:F

.field private mFixedHeight:F

.field private mLValue:F

.field private mLeftCurrentVolume:F

.field private mLeftLineValue:F

.field private mLeftMaxVolumeValue:F

.field private mLeftRectTop:F

.field private mLinePaint:Landroid/graphics/Paint;

.field private mPercent1:F

.field private mPercent2:F

.field private mRValue:F

.field private mRectBottom:F

.field private mRightCurrentVolume:F

.field private mRightLineValue:F

.field private mRightMaxVolumeValue:F

.field private mRightRectTop:F

.field private mSecondRectLeft:F

.field private mSecondRectRight:F

.field private mStartL:F

.field private mStartR:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/AudioMapMove;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/AudioMapMove;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/AudioMapMove;->linearGradient1:Landroid/graphics/LinearGradient;

    iput-object v0, p0, Lcom/android/camera/AudioMapMove;->linearGradient2:Landroid/graphics/LinearGradient;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/AudioMapMove;->mStartL:F

    iput v0, p0, Lcom/android/camera/AudioMapMove;->mStartR:F

    invoke-direct {p0, p1, p2}, Lcom/android/camera/AudioMapMove;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mPercent1:F

    return p0
.end method

.method static synthetic access$002(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mPercent1:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mLValue:F

    return p0
.end method

.method static synthetic access$1002(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mLeftLineValue:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mLValue:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mLeftMaxVolumeValue:F

    return p0
.end method

.method static synthetic access$1202(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mRightLineValue:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mRightMaxVolumeValue:F

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mStartL:F

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mEndL:F

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mRValue:F

    return p0
.end method

.method static synthetic access$402(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mRValue:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mStartR:F

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mEndR:F

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mLeftCurrentVolume:F

    return p0
.end method

.method static synthetic access$702(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mLeftCurrentVolume:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mRightCurrentVolume:F

    return p0
.end method

.method static synthetic access$802(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mRightCurrentVolume:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mPercent2:F

    return p0
.end method

.method static synthetic access$902(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mPercent2:F

    return p1
.end method

.method private drawRect(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    new-instance v9, Landroid/graphics/LinearGradient;

    iget v5, v0, Lcom/android/camera/AudioMapMove;->mFirstRectLeft:F

    iget v3, v0, Lcom/android/camera/AudioMapMove;->mRectBottom:F

    iget v4, v0, Lcom/android/camera/AudioMapMove;->mLeftRectTop:F

    const/4 v10, 0x3

    new-array v6, v10, [I

    fill-array-data v6, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    move-object v1, v9

    move v2, v5

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v9, v0, Lcom/android/camera/AudioMapMove;->linearGradient1:Landroid/graphics/LinearGradient;

    iget-object v1, v0, Lcom/android/camera/AudioMapMove;->mDialPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v1, v0, Lcom/android/camera/AudioMapMove;->mLeftCurrentVolume:F

    iget v2, v0, Lcom/android/camera/AudioMapMove;->mLeftRectTop:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iput v2, v0, Lcom/android/camera/AudioMapMove;->mLeftCurrentVolume:F

    :cond_0
    iget v1, v0, Lcom/android/camera/AudioMapMove;->mRightCurrentVolume:F

    iget v2, v0, Lcom/android/camera/AudioMapMove;->mRightRectTop:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iput v2, v0, Lcom/android/camera/AudioMapMove;->mRightCurrentVolume:F

    :cond_1
    iget v4, v0, Lcom/android/camera/AudioMapMove;->mFirstRectLeft:F

    iget v5, v0, Lcom/android/camera/AudioMapMove;->mLeftCurrentVolume:F

    iget v6, v0, Lcom/android/camera/AudioMapMove;->mFirstRectRight:F

    iget v7, v0, Lcom/android/camera/AudioMapMove;->mRectBottom:F

    iget-object v8, v0, Lcom/android/camera/AudioMapMove;->mDialPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v12, v0, Lcom/android/camera/AudioMapMove;->mSecondRectLeft:F

    iget v13, v0, Lcom/android/camera/AudioMapMove;->mRightCurrentVolume:F

    iget v14, v0, Lcom/android/camera/AudioMapMove;->mSecondRectRight:F

    iget v15, v0, Lcom/android/camera/AudioMapMove;->mRectBottom:F

    iget-object v1, v0, Lcom/android/camera/AudioMapMove;->mDialPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/LinearGradient;

    iget v6, v0, Lcom/android/camera/AudioMapMove;->mFirstRectLeft:F

    iget v4, v0, Lcom/android/camera/AudioMapMove;->mRectBottom:F

    iget v5, v0, Lcom/android/camera/AudioMapMove;->mLeftRectTop:F

    new-array v7, v10, [I

    fill-array-data v7, :array_1

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    move v3, v6

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/android/camera/AudioMapMove;->linearGradient2:Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v7, v0, Lcom/android/camera/AudioMapMove;->mLeftLineValue:F

    iget v5, v0, Lcom/android/camera/AudioMapMove;->mLeftCurrentVolume:F

    cmpl-float v1, v7, v5

    if-ltz v1, :cond_2

    iput v5, v0, Lcom/android/camera/AudioMapMove;->mLeftMaxVolumeValue:F

    iget v2, v0, Lcom/android/camera/AudioMapMove;->mFirstRectLeft:F

    iget v4, v0, Lcom/android/camera/AudioMapMove;->mFirstRectRight:F

    iget-object v6, v0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget v4, v0, Lcom/android/camera/AudioMapMove;->mFirstRectLeft:F

    iget v6, v0, Lcom/android/camera/AudioMapMove;->mFirstRectRight:F

    iget-object v8, v0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    iget v13, v0, Lcom/android/camera/AudioMapMove;->mRightLineValue:F

    iget v4, v0, Lcom/android/camera/AudioMapMove;->mRightCurrentVolume:F

    cmpl-float v1, v13, v4

    if-ltz v1, :cond_3

    iput v4, v0, Lcom/android/camera/AudioMapMove;->mRightMaxVolumeValue:F

    iget v1, v0, Lcom/android/camera/AudioMapMove;->mSecondRectLeft:F

    iget v3, v0, Lcom/android/camera/AudioMapMove;->mSecondRectRight:F

    iget-object v5, v0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    iget v10, v0, Lcom/android/camera/AudioMapMove;->mSecondRectLeft:F

    iget v12, v0, Lcom/android/camera/AudioMapMove;->mSecondRectRight:F

    iget-object v14, v0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v11, v13

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :array_0
    .array-data 4
        -0xff0100
        -0x100
        -0x10000
    .end array-data

    :array_1
    .array-data 4
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/AudioMapMove;->initConfig(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/camera/AudioMapMove;->initPaint()V

    return-void
.end method

.method private initConfig(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget-object v0, Lcom/android/camera/R$styleable;->AudioMap:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/camera/AudioMapMove;->antiAlias:Z

    const/4 p2, 0x3

    const/16 v0, 0x96

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/camera/AudioMapMove;->mAnimTimeAudioMap:J

    const/16 v0, 0x50

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/android/camera/AudioMapMove;->mAnimTimeLine:J

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700bf

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/AudioMapMove;->mFixedHeight:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700c3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/AudioMapMove;->mRValue:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/AudioMapMove;->mLValue:F

    const/4 v1, 0x5

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/camera/AudioMapMove;->mLeftLineValue:F

    iget p2, p0, Lcom/android/camera/AudioMapMove;->mRValue:F

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mRightLineValue:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700c4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mAudioMapHeight:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700bd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mFirstRectLeft:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700be

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mFirstRectRight:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700c7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mSecondRectLeft:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700c8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mSecondRectRight:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700c6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mLeftRectTop:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mRightRectTop:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mRectBottom:F

    return-void
.end method

.method private initPaint()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/AudioMapMove;->mDialPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/camera/AudioMapMove;->antiAlias:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mDialPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/camera/AudioMapMove;->antiAlias:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p0, p0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private startAnimatorAudioMap()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/android/camera/AudioMapMove;->mAnimTimeAudioMap:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/AudioMapMove$1;

    invoke-direct {v1, p0}, Lcom/android/camera/AudioMapMove$1;-><init>(Lcom/android/camera/AudioMapMove;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startAnimatorLine()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/android/camera/AudioMapMove;->mAnimTimeLine:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseInInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/AudioMapMove$2;

    invoke-direct {v1, p0}, Lcom/android/camera/AudioMapMove$2;-><init>(Lcom/android/camera/AudioMapMove;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/camera/AudioMapMove;->drawRect(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public setValue(FF)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/camera/AudioMapMove;->mAudioMapHeight:F

    const/high16 v2, 0x42000000    # 32.0f

    div-float/2addr v1, v2

    mul-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v2, 0x0

    aput p1, v0, v2

    mul-float/2addr p2, v1

    float-to-int p1, p2

    const/4 p2, 0x1

    aput p1, v0, p2

    iget p1, p0, Lcom/android/camera/AudioMapMove;->mRValue:F

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mStartR:F

    iget p1, p0, Lcom/android/camera/AudioMapMove;->mLValue:F

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mStartL:F

    iget p1, p0, Lcom/android/camera/AudioMapMove;->mRectBottom:F

    aget v1, v0, v2

    int-to-float v1, v1

    sub-float v1, p1, v1

    iput v1, p0, Lcom/android/camera/AudioMapMove;->mEndL:F

    aget v1, v0, p2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mEndR:F

    iget p1, p0, Lcom/android/camera/AudioMapMove;->mLeftLineValue:F

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mLeftMaxVolumeValue:F

    aget p1, v0, v2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mLeftCurrentVolume:F

    iget p1, p0, Lcom/android/camera/AudioMapMove;->mRightLineValue:F

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mRightMaxVolumeValue:F

    aget p1, v0, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mRightCurrentVolume:F

    invoke-direct {p0}, Lcom/android/camera/AudioMapMove;->startAnimatorAudioMap()V

    invoke-direct {p0}, Lcom/android/camera/AudioMapMove;->startAnimatorLine()V

    return-void
.end method
