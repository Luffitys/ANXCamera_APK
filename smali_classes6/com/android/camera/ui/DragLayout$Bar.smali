.class public Lcom/android/camera/ui/DragLayout$Bar;
.super Landroid/view/View;
.source ""


# static fields
.field private static final FLAT_DURATION:I = 0x258

.field private static final FOLD_DURATION:I = 0xc8

.field private static final UI_STATE_FLAT:I = 0x0

.field private static final UI_STATE_FOLD_DOWN:I = -0x1

.field private static final UI_STATE_FOLD_UP:I = 0x1


# instance fields
.field private isUpAnimation:Z

.field private mAlpha:F

.field private mAnimator:Landroid/animation/ValueAnimator;

.field public mBgColor:I

.field private mCurUiState:I
    .annotation build Lcom/android/camera/ui/DragLayout$Bar$UiState;
    .end annotation
.end field

.field private mDegree:F

.field private mExtendDimen:F

.field private mFlatInterpolator:Landroid/view/animation/Interpolator;

.field private mFoldInterpolator:Landroid/view/animation/Interpolator;

.field private mHeight:F

.field private mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mOffset:F

.field private mRadius:F

.field private mRightDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mTargetUiState:I
    .annotation build Lcom/android/camera/ui/DragLayout$Bar$UiState;
    .end annotation
.end field

.field private mWidth:F

.field private mWidthMax:F

.field private mWidthMin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mCurUiState:I

    iput v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mTargetUiState:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mWidthMax:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mWidthMin:F

    iget v2, p0, Lcom/android/camera/ui/DragLayout$Bar;->mWidthMax:F

    sub-float v1, v2, v1

    iput v1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mExtendDimen:F

    iput v2, p0, Lcom/android/camera/ui/DragLayout$Bar;->mWidth:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mHeight:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f06013d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mBgColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    iput p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mAlpha:F

    iget p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mBgColor:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    iget v1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mBgColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/DragLayout$Bar;->mBgColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0xff

    invoke-static {v3, p1, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mBgColor:I

    iget p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mAlpha:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    iget p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    iput p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mRadius:F

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mBgColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mWidth:F

    float-to-int v1, v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    iget v3, p0, Lcom/android/camera/ui/DragLayout$Bar;->mHeight:F

    float-to-int v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    iget-object p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mWidth:F

    float-to-int v1, v1

    div-int/2addr v1, v2

    iget v3, p0, Lcom/android/camera/ui/DragLayout$Bar;->mHeight:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v1, 0x8

    new-array v3, v1, [F

    iget v4, p0, Lcom/android/camera/ui/DragLayout$Bar;->mRadius:F

    aput v4, v3, v0

    const/4 v5, 0x1

    aput v4, v3, v5

    aput v4, v3, v2

    const/4 v6, 0x3

    aput v4, v3, v6

    const/4 v7, 0x4

    aput v4, v3, v7

    const/4 v8, 0x5

    aput v4, v3, v8

    const/4 v9, 0x6

    aput v4, v3, v9

    const/4 v10, 0x7

    aput v4, v3, v10

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mRightDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Lcom/android/camera/ui/DragLayout$Bar;->mBgColor:I

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mRightDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Lcom/android/camera/ui/DragLayout$Bar;->mWidth:F

    float-to-int v3, v3

    div-int/2addr v3, v2

    iget v4, p0, Lcom/android/camera/ui/DragLayout$Bar;->mHeight:F

    float-to-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    iget-object p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mRightDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Lcom/android/camera/ui/DragLayout$Bar;->mWidth:F

    float-to-int v3, v3

    div-int/2addr v3, v2

    iget v4, p0, Lcom/android/camera/ui/DragLayout$Bar;->mHeight:F

    float-to-int v4, v4

    invoke-virtual {p1, v0, v0, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mRightDrawable:Landroid/graphics/drawable/GradientDrawable;

    new-array v1, v1, [F

    iget v3, p0, Lcom/android/camera/ui/DragLayout$Bar;->mRadius:F

    aput v3, v1, v0

    aput v3, v1, v5

    aput v3, v1, v2

    aput v3, v1, v6

    aput v3, v1, v7

    aput v3, v1, v8

    aput v3, v1, v9

    aput v3, v1, v10

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    new-instance p1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mFoldInterpolator:Landroid/view/animation/Interpolator;

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    const/4 v1, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mFlatInterpolator:Landroid/view/animation/Interpolator;

    new-array p1, v2, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/DragLayout$Bar$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/DragLayout$Bar$1;-><init>(Lcom/android/camera/ui/DragLayout$Bar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/DragLayout$Bar$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/DragLayout$Bar$2;-><init>(Lcom/android/camera/ui/DragLayout$Bar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$1202(Lcom/android/camera/ui/DragLayout$Bar;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mDegree:F

    return p1
.end method

.method static synthetic access$1302(Lcom/android/camera/ui/DragLayout$Bar;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mWidth:F

    return p1
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/DragLayout$Bar;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mWidthMax:F

    return p0
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/DragLayout$Bar;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mExtendDimen:F

    return p0
.end method

.method static synthetic access$1600(Lcom/android/camera/ui/DragLayout$Bar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/DragLayout$Bar;->isUpAnimation:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/android/camera/ui/DragLayout$Bar;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mOffset:F

    return p1
.end method

.method static synthetic access$1802(Lcom/android/camera/ui/DragLayout$Bar;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mCurUiState:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/ui/DragLayout$Bar;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mTargetUiState:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/DragLayout$Bar;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mAlpha:F

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/DragLayout$Bar;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout$Bar;->start(I)Z

    move-result p0

    return p0
.end method

.method private start(I)Z
    .locals 9
    .param p1    # I
        .annotation build Lcom/android/camera/ui/DragLayout$Bar$UiState;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mTargetUiState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/android/camera/ui/DragLayout;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget p0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mTargetUiState:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "start bar animation with invalid state {%d} , and cur target state {%d}"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-eq v0, v3, :cond_2

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->isUpAnimation:Z

    iget v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mCurUiState:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v5

    :goto_2
    iput p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mTargetUiState:I

    iget-object v6, p0, Lcom/android/camera/ui/DragLayout$Bar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget-object v6, Lcom/android/camera/ui/DragLayout;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cancel running animation, cur process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/camera/ui/DragLayout$Bar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    if-nez p1, :cond_5

    neg-float v0, v0

    goto :goto_3

    :cond_5
    move v4, v5

    :goto_3
    iget-object v5, p0, Lcom/android/camera/ui/DragLayout$Bar;->mAnimator:Landroid/animation/ValueAnimator;

    new-array v6, v1, [F

    aput v0, v6, v2

    aput v4, v6, v3

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v5, p0, Lcom/android/camera/ui/DragLayout$Bar;->mAnimator:Landroid/animation/ValueAnimator;

    sub-float v6, v4, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    if-nez p1, :cond_6

    const/high16 v7, 0x44160000    # 600.0f

    goto :goto_4

    :cond_6
    const/high16 v7, 0x43480000    # 200.0f

    :goto_4
    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/camera/ui/DragLayout$Bar;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mFlatInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mFoldInterpolator:Landroid/view/animation/Interpolator;

    :goto_5
    invoke-virtual {v5, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object p1, Lcom/android/camera/ui/DragLayout;->TAG:Ljava/lang/String;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/camera/ui/DragLayout$Bar;->mCurUiState:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget v2, p0, Lcom/android/camera/ui/DragLayout$Bar;->mTargetUiState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    iget-object v2, p0, Lcom/android/camera/ui/DragLayout$Bar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayout$Bar;->isUpAnimation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "start animation with states {%d} {%d} AND duration {%s} , values {%s:%s} , isUp {%s}"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return v3
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mWidthMax:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/android/camera/ui/DragLayout$Bar;->mOffset:F

    add-float/2addr v0, v3

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->isUpAnimation:Z

    const/high16 v2, 0x43340000    # 180.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mDegree:F

    sub-float/2addr v2, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mDegree:F

    sub-float v2, v0, v2

    :goto_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/android/camera/ui/DragLayout$Bar;->mWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/camera/ui/DragLayout$Bar;->mHeight:F

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/android/camera/ui/DragLayout$Bar;->mWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/camera/ui/DragLayout$Bar;->mHeight:F

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mRadius:F

    neg-float v0, v0

    iget-object v2, p0, Lcom/android/camera/ui/DragLayout$Bar;->mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->isUpAnimation:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mDegree:F

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mDegree:F

    neg-float v0, v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mRightDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/android/camera/ui/DragLayout$Bar;->mWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/camera/ui/DragLayout$Bar;->mHeight:F

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mRightDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/android/camera/ui/DragLayout$Bar;->mWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/camera/ui/DragLayout$Bar;->mHeight:F

    float-to-int v3, v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget v0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mRadius:F

    neg-float v0, v0

    iget-object v2, p0, Lcom/android/camera/ui/DragLayout$Bar;->mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/android/camera/ui/DragLayout$Bar;->mRightDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget p1, p0, Lcom/android/camera/ui/DragLayout$Bar;->mWidthMax:F

    float-to-int p2, p1

    float-to-double v0, p1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    double-to-int p1, v0

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
