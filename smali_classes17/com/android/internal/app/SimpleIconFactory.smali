.class public Lcom/android/internal/app/SimpleIconFactory;
.super Ljava/lang/Object;
.source "SimpleIconFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SimpleIconFactory$FixedSizeBitmapDrawable;,
        Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AMBIENT_SHADOW_ALPHA:I = 0x1e

.field private static final BLUR_FACTOR:F = 0.010416667f

.field private static final CIRCLE_AREA_BY_RECT:F = 0.7853982f

.field private static final DEFAULT_WRAPPER_BACKGROUND:I = -0x1

.field private static final KEY_SHADOW_ALPHA:I = 0x3d

.field private static final KEY_SHADOW_DISTANCE:F = 0.020833334f

.field private static final LINEAR_SCALE_SLOPE:F = 0.040449437f

.field private static final MAX_CIRCLE_AREA_FACTOR:F = 0.6597222f

.field private static final MAX_SQUARE_AREA_FACTOR:F = 0.6510417f

.field private static final MIN_VISIBLE_ALPHA:I = 0x28

.field private static final SCALE_NOT_INITIALIZED:F

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Lcom/android/internal/app/SimpleIconFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdaptiveIconBounds:Landroid/graphics/Rect;

.field private mAdaptiveIconScale:F

.field private mBadgeBitmapSize:I

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mBlurPaint:Landroid/graphics/Paint;

.field private final mBounds:Landroid/graphics/Rect;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mContext:Landroid/content/Context;

.field private mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private mDrawPaint:Landroid/graphics/Paint;

.field private mFillResIconDpi:I

.field private mIconBitmapSize:I

.field private final mLeftBorder:[F

.field private final mMaxSize:I

.field private final mOldBounds:Landroid/graphics/Rect;

.field private final mPixels:[B

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mRightBorder:[F

.field private final mScaleCheckCanvas:Landroid/graphics/Canvas;

.field private mWrapperBackgroundColor:I

.field private mWrapperIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/app/SimpleIconFactory;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;III)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mOldBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mBlurPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mPm:Landroid/content/pm/PackageManager;

    iput p3, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    iput p4, p0, Lcom/android/internal/app/SimpleIconFactory;->mBadgeBitmapSize:I

    iput p2, p0, Lcom/android/internal/app/SimpleIconFactory;->mFillResIconDpi:I

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    mul-int/lit8 v0, p3, 0x2

    iput v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mScaleCheckCanvas:Landroid/graphics/Canvas;

    iget v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    mul-int v1, v0, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mPixels:[B

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mRightBorder:[F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    int-to-float v1, p3

    const v2, 0x3c2aaaab

    mul-float/2addr v1, v2

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    return-void
.end method

.method private static convertToConvexArray([FIII)V
    .registers 16

    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [F

    move v2, p2

    const/4 v3, -0x1

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    add-int/lit8 v5, p2, 0x1

    :goto_c
    if-gt v5, p3, :cond_6f

    aget v6, p0, v5

    const/high16 v7, -0x40800000    # -1.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_17

    goto :goto_6c

    :cond_17
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v6, v4, v6

    if-nez v6, :cond_20

    move v6, v2

    goto :goto_50

    :cond_20
    aget v6, p0, v5

    aget v7, p0, v3

    sub-float/2addr v6, v7

    sub-int v7, v5, v3

    int-to-float v7, v7

    div-float/2addr v6, v7

    move v7, v3

    sub-float v8, v6, v4

    int-to-float v9, p1

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4f

    move v11, v7

    move v7, v6

    move v6, v11

    :cond_36
    if-le v6, v2, :cond_50

    add-int/lit8 v6, v6, -0x1

    aget v8, p0, v5

    aget v10, p0, v6

    sub-float/2addr v8, v10

    sub-int v10, v5, v6

    int-to-float v10, v10

    div-float v7, v8, v10

    aget v8, v1, v6

    sub-float v8, v7, v8

    int-to-float v10, p1

    mul-float/2addr v8, v10

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_36

    goto :goto_50

    :cond_4f
    move v6, v7

    :cond_50
    :goto_50
    aget v7, p0, v5

    aget v8, p0, v6

    sub-float/2addr v7, v8

    sub-int v8, v5, v6

    int-to-float v8, v8

    div-float/2addr v7, v8

    move v4, v6

    :goto_5a
    if-ge v4, v5, :cond_6a

    aput v7, v1, v4

    aget v8, p0, v6

    sub-int v9, v4, v6

    int-to-float v9, v9

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    aput v8, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    :cond_6a
    move v3, v5

    move v4, v7

    :goto_6c
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_6f
    return-void
.end method

.method private createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .registers 9

    iget v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private createIconBitmap(Landroid/graphics/drawable/Drawable;FIZZ)Landroid/graphics/Bitmap;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v5, v0, Lcom/android/internal/app/SimpleIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    instance-of v5, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v5, :cond_ae

    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    int-to-float v6, v3

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v8, v7, v2

    mul-float/2addr v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-eqz p4, :cond_41

    const v9, 0x3c2aaaab

    int-to-float v10, v3

    mul-float/2addr v10, v9

    float-to-double v9, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_41
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v3, v6

    sub-int v11, v3, v6

    invoke-direct {v9, v6, v6, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p5, :cond_a3

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v12

    mul-float/2addr v12, v8

    add-float/2addr v12, v7

    div-float/2addr v7, v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float v13, v7, v8

    div-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v8, v7

    div-float/2addr v13, v8

    float-to-int v8, v13

    new-instance v13, Landroid/graphics/Rect;

    sub-int v14, v10, v12

    sub-int v15, v11, v8

    move/from16 v16, v6

    add-int v6, v10, v12

    move/from16 v17, v7

    add-int v7, v11, v8

    invoke-direct {v13, v14, v15, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v13

    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v13, Lcom/android/internal/app/-$$Lambda$SimpleIconFactory$fsx5rlUhrXI5RqytDEKaAnjCy8Q;

    invoke-direct {v13, v0, v6}, Lcom/android/internal/app/-$$Lambda$SimpleIconFactory$fsx5rlUhrXI5RqytDEKaAnjCy8Q;-><init>(Lcom/android/internal/app/SimpleIconFactory;Landroid/graphics/Rect;)V

    invoke-virtual {v7, v13}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v13, Lcom/android/internal/app/-$$Lambda$SimpleIconFactory$PQ2vsLf-JFTvrQBtBGoNtaRuPYY;

    invoke-direct {v13, v0, v6}, Lcom/android/internal/app/-$$Lambda$SimpleIconFactory$PQ2vsLf-JFTvrQBtBGoNtaRuPYY;-><init>(Lcom/android/internal/app/SimpleIconFactory;Landroid/graphics/Rect;)V

    invoke-virtual {v7, v13}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_ad

    :cond_a3
    move/from16 v16, v6

    invoke-virtual {v5, v9}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v6, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_ad
    goto :goto_115

    :cond_ae
    instance-of v5, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_ce

    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v4, :cond_ce

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    if-nez v7, :cond_ce

    iget-object v7, v0, Lcom/android/internal/app/SimpleIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    :cond_ce
    move/from16 v5, p3

    move/from16 v6, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    if-lez v7, :cond_ec

    if-lez v8, :cond_ec

    int-to-float v9, v7

    int-to-float v10, v8

    div-float/2addr v9, v10

    if-le v7, v8, :cond_e7

    int-to-float v10, v5

    div-float/2addr v10, v9

    float-to-int v6, v10

    goto :goto_ec

    :cond_e7
    if-le v8, v7, :cond_ec

    int-to-float v10, v6

    mul-float/2addr v10, v9

    float-to-int v5, v10

    :cond_ec
    :goto_ec
    sub-int v9, v3, v5

    div-int/lit8 v9, v9, 0x2

    sub-int v10, v3, v6

    div-int/lit8 v10, v10, 0x2

    add-int v11, v9, v5

    add-int v12, v10, v6

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v11, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    iget-object v11, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    div-int/lit8 v12, v3, 0x2

    int-to-float v12, v12

    div-int/lit8 v13, v3, 0x2

    int-to-float v13, v13

    invoke-virtual {v11, v2, v2, v12, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v11, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v11, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v11}, Landroid/graphics/Canvas;->restore()V

    :goto_115
    iget-object v5, v0, Lcom/android/internal/app/SimpleIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v5, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v4
.end method

.method private createIconBitmapNoInsetOrMask(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .registers 9

    iget v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getAttrDimFromContext(Landroid/content/Context;ILjava/lang/String;)I
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    return v2

    :cond_1b
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getBadgeSizeFromContext(Landroid/content/Context;)I
    .registers 3

    const v0, 0x1120057

    const-string v1, "Expected theme to define iconfactoryBadgeSize."

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/SimpleIconFactory;->getAttrDimFromContext(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getIconSizeFromContext(Landroid/content/Context;)I
    .registers 3

    const v0, 0x1120058

    const-string v1, "Expected theme to define iconfactoryIconSize."

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/SimpleIconFactory;->getAttrDimFromContext(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private declared-synchronized getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    :try_start_7
    instance-of v3, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_1d

    iget v3, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1d

    if-eqz v2, :cond_19

    iget-object v3, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_19
    iget v3, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1b2

    monitor-exit p0

    return v3

    :cond_1d
    :try_start_1d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-lez v3, :cond_41

    if-gtz v5, :cond_2a

    goto :goto_41

    :cond_2a
    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    if-gt v3, v6, :cond_32

    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    if-le v5, v6, :cond_59

    :cond_32
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    mul-int/2addr v7, v3

    div-int/2addr v7, v6

    move v3, v7

    iget v7, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    mul-int/2addr v7, v5

    div-int/2addr v7, v6

    move v5, v7

    goto :goto_59

    :cond_41
    :goto_41
    if-lez v3, :cond_4a

    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    if-le v3, v6, :cond_48

    goto :goto_4a

    :cond_48
    move v6, v3

    goto :goto_4c

    :cond_4a
    :goto_4a
    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    :goto_4c
    move v3, v6

    if-lez v5, :cond_56

    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    if-le v5, v6, :cond_54

    goto :goto_56

    :cond_54
    move v6, v5

    goto :goto_58

    :cond_56
    :goto_56
    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    :goto_58
    move v5, v6

    :cond_59
    :goto_59
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {v0, v7, v7, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mScaleCheckCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mPixels:[B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v7, v1, Lcom/android/internal/app/SimpleIconFactory;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    const/4 v7, -0x1

    const/4 v8, -0x1

    iget v9, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    const/4 v11, -0x1

    const/4 v12, 0x0

    iget v13, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    sub-int/2addr v13, v3

    const/4 v14, 0x0

    :goto_81
    const/4 v15, -0x1

    if-ge v14, v5, :cond_d5

    move/from16 v16, v15

    move/from16 v17, v15

    const/16 v18, 0x0

    move/from16 v4, v16

    move/from16 v10, v17

    move/from16 v15, v18

    :goto_90
    if-ge v15, v3, :cond_ad

    move-object/from16 v19, v6

    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mPixels:[B

    aget-byte v6, v6, v12

    and-int/lit16 v6, v6, 0xff

    const/16 v0, 0x28

    if-le v6, v0, :cond_a4

    const/4 v0, -0x1

    if-ne v10, v0, :cond_a2

    move v10, v15

    :cond_a2
    move v0, v15

    move v4, v0

    :cond_a4
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v6, v19

    goto :goto_90

    :cond_ad
    move-object/from16 v19, v6

    add-int/2addr v12, v13

    iget-object v0, v1, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    int-to-float v6, v10

    aput v6, v0, v14

    iget-object v0, v1, Lcom/android/internal/app/SimpleIconFactory;->mRightBorder:[F

    int-to-float v6, v4

    aput v6, v0, v14

    const/4 v0, -0x1

    if-eq v10, v0, :cond_cc

    move v6, v14

    if-ne v7, v0, :cond_c1

    move v7, v14

    :cond_c1
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v9, v0

    move v11, v8

    move v8, v6

    :cond_cc
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    move-object/from16 v6, v19

    const/4 v4, 0x0

    const/4 v10, 0x1

    goto :goto_81

    :cond_d5
    move-object/from16 v19, v6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    if-eq v7, v4, :cond_1a8

    if-ne v11, v4, :cond_e6

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v7, p1

    goto/16 :goto_1ae

    :cond_e6
    iget-object v4, v1, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    const/4 v6, 0x1

    invoke-static {v4, v6, v7, v8}, Lcom/android/internal/app/SimpleIconFactory;->convertToConvexArray([FIII)V

    iget-object v4, v1, Lcom/android/internal/app/SimpleIconFactory;->mRightBorder:[F

    const/4 v6, -0x1

    invoke-static {v4, v6, v7, v8}, Lcom/android/internal/app/SimpleIconFactory;->convertToConvexArray([FIII)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_f4
    if-ge v6, v5, :cond_10f

    iget-object v10, v1, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    aget v10, v10, v6

    const/high16 v14, -0x40800000    # -1.0f

    cmpg-float v10, v10, v14

    if-gtz v10, :cond_101

    goto :goto_10c

    :cond_101
    iget-object v10, v1, Lcom/android/internal/app/SimpleIconFactory;->mRightBorder:[F

    aget v10, v10, v6

    iget-object v14, v1, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    aget v14, v14, v6

    sub-float/2addr v10, v14

    add-float/2addr v10, v0

    add-float/2addr v4, v10

    :goto_10c
    add-int/lit8 v6, v6, 0x1

    goto :goto_f4

    :cond_10f
    add-int/lit8 v6, v8, 0x1

    sub-int/2addr v6, v7

    add-int/lit8 v10, v11, 0x1

    sub-int/2addr v10, v9

    mul-int/2addr v6, v10

    int-to-float v6, v6

    div-float v10, v4, v6

    const v14, 0x3f490fdb

    cmpg-float v14, v10, v14

    if-gez v14, :cond_124

    const v14, 0x3f28e38e

    goto :goto_132

    :cond_124
    const v14, 0x3f26aaab

    const v15, 0x3d25ae4f

    sub-float v17, v0, v10

    mul-float v17, v17, v15

    add-float v17, v17, v14

    move/from16 v14, v17

    :goto_132
    iget-object v15, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iput v9, v15, Landroid/graphics/Rect;->left:I

    iget-object v15, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iput v11, v15, Landroid/graphics/Rect;->right:I

    iget-object v15, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iput v7, v15, Landroid/graphics/Rect;->top:I

    iget-object v15, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iput v8, v15, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_172

    iget-object v15, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    int-to-float v0, v3

    div-float/2addr v15, v0

    iget-object v0, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    move/from16 v18, v6

    int-to-float v6, v5

    div-float/2addr v0, v6

    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    move/from16 v20, v7

    int-to-float v7, v3

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    iget-object v7, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    move/from16 v21, v8

    int-to-float v8, v5

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    invoke-virtual {v2, v15, v0, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_178

    :cond_172
    move/from16 v18, v6

    move/from16 v20, v7

    move/from16 v21, v8

    :goto_178
    mul-int v0, v3, v5

    int-to-float v0, v0

    div-float v0, v4, v0

    cmpl-float v6, v0, v14

    if-lez v6, :cond_18c

    div-float v6, v14, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    move/from16 v17, v6

    goto :goto_18e

    :cond_18c
    const/high16 v17, 0x3f800000    # 1.0f

    :goto_18e
    move/from16 v6, v17

    move-object/from16 v7, p1

    instance-of v8, v7, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v8, :cond_1a6

    iget v8, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F

    const/4 v15, 0x0

    cmpl-float v8, v8, v15

    if-nez v8, :cond_1a6

    iput v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F

    iget-object v8, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    iget-object v15, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1a6
    .catchall {:try_start_1d .. :try_end_1a6} :catchall_1b2

    :cond_1a6
    monitor-exit p0

    return v6

    :cond_1a8
    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v7, p1

    :goto_1ae
    monitor-exit p0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :catchall_1b2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private maskBitmapToCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v4, v3

    const v5, 0x3c2aaaab

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    int-to-float v7, v4

    sub-float/2addr v9, v7

    invoke-virtual {v1, v6, v8, v9, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v5, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v5, v6

    invoke-virtual {v1, p1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;
    .registers 10

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mContext:Landroid/content/Context;

    const v2, 0x1080586

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    :cond_15
    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v2, v3, v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/SimpleIconFactory;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F

    move-result v0

    instance-of v3, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v3, :cond_42

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;

    invoke-virtual {v3, p1}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v0}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->setScale(F)V

    move-object p1, v1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/SimpleIconFactory;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperBackgroundColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_42
    aput v0, p3, v2

    return-object p1
.end method

.method public static obtain(Landroid/content/Context;)Lcom/android/internal/app/SimpleIconFactory;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/android/internal/app/SimpleIconFactory;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/SimpleIconFactory;

    if-nez v0, :cond_2c

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-nez v1, :cond_16

    const/4 v2, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    :goto_1a
    invoke-static {p0}, Lcom/android/internal/app/SimpleIconFactory;->getIconSizeFromContext(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lcom/android/internal/app/SimpleIconFactory;->getBadgeSizeFromContext(Landroid/content/Context;)I

    move-result v4

    new-instance v5, Lcom/android/internal/app/SimpleIconFactory;

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/android/internal/app/SimpleIconFactory;-><init>(Landroid/content/Context;III)V

    move-object v0, v5

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/android/internal/app/SimpleIconFactory;->setWrapperBackgroundColor(I)V

    :cond_2c
    return-object v0
.end method

.method private declared-synchronized recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/BlurMaskFilter;IILandroid/graphics/Canvas;)V
    .registers 13

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, v1, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    aget v2, v0, v2

    int-to-float v2, v2

    aget v3, v0, v4

    int-to-float v3, v3

    const v4, 0x3caaaaab

    iget v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    iget-object v4, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p5, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_46
    .catchall {:try_start_2 .. :try_end_46} :catchall_48

    monitor-exit p0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/app/SimpleIconFactory;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    const/16 v3, 0x1e

    const/16 v4, 0x3d

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/SimpleIconFactory;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/BlurMaskFilter;IILandroid/graphics/Canvas;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public createAppBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_8

    iget v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mFillResIconDpi:I

    invoke-static {v0}, Lcom/android/internal/app/SimpleIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-le v1, v0, :cond_1b

    if-lez v0, :cond_1b

    int-to-float v3, v1

    int-to-float v4, v0

    div-float v2, v3, v4

    goto :goto_23

    :cond_1b
    if-le v0, v1, :cond_23

    if-lez v1, :cond_23

    int-to-float v3, v0

    int-to-float v4, v1

    div-float v2, v3, v4

    :cond_23
    :goto_23
    invoke-direct {p0, p1, v2}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmapNoInsetOrMask(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/app/SimpleIconFactory;->maskBitmapToCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p1, v4

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/internal/app/SimpleIconFactory;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v5, v6}, Lcom/android/internal/app/SimpleIconFactory;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    if-eqz p2, :cond_65

    iget v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mBadgeBitmapSize:I

    const/4 v6, 0x0

    invoke-static {p2, v5, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    iget v6, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    iget v7, p0, Lcom/android/internal/app/SimpleIconFactory;->mBadgeBitmapSize:I

    sub-int v8, v6, v7

    int-to-float v8, v8

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, p2, v8, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_65
    iget-object v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v3
.end method

.method createUserBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [F

    if-nez p1, :cond_b

    iget v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mFillResIconDpi:I

    invoke-static {v1}, Lcom/android/internal/app/SimpleIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/SimpleIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v2

    instance-of v3, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/app/SimpleIconFactory;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_2e
    if-eqz p2, :cond_4e

    new-instance v1, Lcom/android/internal/app/SimpleIconFactory$FixedSizeBitmapDrawable;

    invoke-direct {v1, v2}, Lcom/android/internal/app/SimpleIconFactory$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v4, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_47

    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_4d

    :cond_47
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v4}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_4d
    goto :goto_4f

    :cond_4e
    move-object v4, v2

    :goto_4f
    return-object v4
.end method

.method public synthetic lambda$createIconBitmap$0$SimpleIconFactory(Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public synthetic lambda$createIconBitmap$1$SimpleIconFactory(Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public recycle()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/SimpleIconFactory;->setWrapperBackgroundColor(I)V

    sget-object v0, Lcom/android/internal/app/SimpleIconFactory;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method setWrapperBackgroundColor(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_a

    const/4 v0, -0x1

    goto :goto_b

    :cond_a
    move v0, p1

    :goto_b
    iput v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperBackgroundColor:I

    return-void
.end method
