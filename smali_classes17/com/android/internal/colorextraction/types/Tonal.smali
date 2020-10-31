.class public Lcom/android/internal/colorextraction/types/Tonal;
.super Ljava/lang/Object;
.source "Tonal.java"

# interfaces
.implements Lcom/android/internal/colorextraction/types/ExtractionType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;,
        Lcom/android/internal/colorextraction/types/Tonal$ColorRange;,
        Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FIT_WEIGHT_H:F = 1.0f

.field private static final FIT_WEIGHT_L:F = 10.0f

.field private static final FIT_WEIGHT_S:F = 1.0f

.field public static final MAIN_COLOR_DARK:I = -0xdfdedc

.field public static final MAIN_COLOR_LIGHT:I = -0x252320

.field public static final MAIN_COLOR_REGULAR:I = -0x1000000

.field private static final TAG:Ljava/lang/String; = "Tonal"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

.field private mTmpHSL:[F

.field private final mTonalPalettes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    new-instance v0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;

    invoke-direct {v0, p1}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->getTonalPalettes()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    invoke-virtual {p0, p1, p4}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    return-void
.end method

.method private static bestFit(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;FFF)I
    .registers 10

    const/4 v0, -0x1

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v2, 0x0

    :goto_4
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    array-length v3, v3

    if-ge v2, v3, :cond_39

    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    aget v3, v3, v2

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    aget v5, v5, v2

    sub-float v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    aget v5, v5, v2

    sub-float v5, p3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    cmpg-float v4, v3, v1

    if-gez v4, :cond_36

    move v1, v3

    move v0, v2

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_39
    return v0
.end method

.method private findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .registers 11

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    return-object v0

    :cond_a
    const/4 v0, 0x0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_d3

    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_2d

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_2d

    move-object v0, v4

    goto/16 :goto_d3

    :cond_2d
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    const/4 v7, 0x0

    if-lez v5, :cond_47

    cmpl-float v5, p1, v7

    if-ltz v5, :cond_47

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_47

    move-object v0, v4

    goto/16 :goto_d3

    :cond_47
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_5e

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_5e

    cmpg-float v5, p1, v6

    if-gtz v5, :cond_5e

    move-object v0, v4

    goto/16 :goto_d3

    :cond_5e
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_71

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    sub-float/2addr v5, p1

    cmpg-float v5, v5, v1

    if-gez v5, :cond_71

    move-object v0, v4

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    sub-float/2addr v5, p1

    move v1, v5

    goto :goto_cf

    :cond_71
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_85

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    sub-float v5, p1, v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_85

    move-object v0, v4

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    sub-float v1, p1, v5

    goto :goto_cf

    :cond_85
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_ab

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_ab

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float v5, p1, v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_ab

    move-object v0, v4

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float v1, p1, v5

    goto :goto_cf

    :cond_ab
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_cf

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_cf

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float/2addr v5, p1

    cmpg-float v5, v5, v1

    if-gez v5, :cond_cf

    move-object v0, v4

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float/2addr v5, p1

    move v1, v5

    :cond_cf
    :goto_cf
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_14

    :cond_d3
    :goto_d3
    return-object v0
.end method

.method private static fit([FFIFF)[F
    .registers 9

    array-length v0, p0

    new-array v0, v0, [F

    aget v1, p0, p2

    sub-float v1, p1, v1

    const/4 v2, 0x0

    :goto_8
    array-length v3, p0

    if-ge v2, v3, :cond_17

    aget v3, p0, v2

    add-float/2addr v3, v1

    invoke-static {v3, p3, p4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    return-object v0
.end method

.method private static fract(F)F
    .registers 3

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, p0, v0

    return v0
.end method

.method private getColorInt(I[F[F[F)I
    .registers 8

    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v1, p2, p1

    invoke-static {v1}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v1, p3, p1

    const/4 v2, 0x1

    aput v1, v0, v2

    aget v1, p4, p1

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {v0}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v0

    return v0
.end method

.method private getColorPalette(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;)[I
    .registers 5

    iget-object v0, p1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    iget-object v1, p1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    iget-object v2, p1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/colorextraction/types/Tonal;->getColorPalette([F[F[F)[I

    move-result-object v0

    return-object v0
.end method

.method private getColorPalette([F[F[F)[I
    .registers 7

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_10

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    return-object v0
.end method

.method private runTonalExtraction(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    if-nez p1, :cond_c

    return v4

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v7

    and-int/lit8 v8, v7, 0x1

    const/4 v9, 0x1

    if-eqz v8, :cond_1f

    move v8, v9

    goto :goto_20

    :cond_1f
    move v8, v4

    :goto_20
    if-nez v6, :cond_23

    return v4

    :cond_23
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Color;

    invoke-virtual {v10}, Landroid/graphics/Color;->toArgb()I

    move-result v11

    const/4 v12, 0x3

    new-array v13, v12, [F

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v14

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v15

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    invoke-static {v14, v15, v12, v13}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    aget v12, v13, v4

    const/high16 v14, 0x43b40000    # 360.0f

    div-float/2addr v12, v14

    aput v12, v13, v4

    aget v12, v13, v4

    aget v14, v13, v9

    invoke-direct {v0, v12, v14}, Lcom/android/internal/colorextraction/types/Tonal;->findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    move-result-object v12

    const-string v14, "Tonal"

    if-nez v12, :cond_58

    const-string v9, "Could not find a tonal palette!"

    invoke-static {v14, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_58
    aget v15, v13, v4

    aget v4, v13, v9

    const/4 v9, 0x2

    move-object/from16 v19, v5

    aget v5, v13, v9

    invoke-static {v12, v15, v4, v5}, Lcom/android/internal/colorextraction/types/Tonal;->bestFit(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;FFF)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6f

    const-string v5, "Could not find best fit!"

    invoke-static {v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5

    :cond_6f
    const/4 v5, 0x0

    iget-object v15, v12, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    aget v9, v13, v5

    const/high16 v5, -0x800000    # Float.NEGATIVE_INFINITY

    move/from16 v21, v6

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v15, v9, v4, v5, v6}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v5

    iget-object v6, v12, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    const/4 v9, 0x1

    aget v15, v13, v9

    const/4 v9, 0x0

    move/from16 v22, v7

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v15, v4, v9, v7}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v6

    iget-object v15, v12, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    move-object/from16 v23, v10

    const/16 v20, 0x2

    aget v10, v13, v20

    invoke-static {v15, v10, v4, v9, v7}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Lcom/android/internal/colorextraction/types/Tonal;->getColorPalette([F[F[F)[I

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v11

    const-string v11, "Tonal Palette - index: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ". Main color: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\nColors: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_ca
    array-length v15, v5

    if-ge v11, v15, :cond_e7

    invoke-direct {v0, v11, v5, v6, v7}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v5

    const/16 v18, 0x1

    add-int/lit8 v15, v15, -0x1

    if-ge v11, v15, :cond_e4

    const-string v15, ", "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e4
    add-int/lit8 v11, v11, 0x1

    goto :goto_ca

    :cond_e7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v4

    invoke-direct {v0, v10, v5, v6, v7}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v11

    iget-object v15, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    invoke-static {v11, v15}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    iget-object v15, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    const/16 v20, 0x2

    aget v25, v15, v20

    move/from16 v26, v10

    const v10, -0x252320

    invoke-static {v10, v15}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    iget-object v10, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v15, v10, v20

    cmpl-float v27, v25, v15

    if-lez v27, :cond_111

    const/16 v17, 0x0

    return v17

    :cond_111
    const/16 v17, 0x0

    move-object/from16 v27, v12

    const v12, -0xdfdedc

    invoke-static {v12, v10}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    iget-object v10, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v10, v10, v20

    cmpg-float v12, v25, v10

    if-gez v12, :cond_124

    return v17

    :cond_124
    invoke-virtual {v1, v11}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    invoke-virtual {v1, v11}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    invoke-virtual {v1, v9}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setColorPalette([I)V

    if-eqz v8, :cond_135

    array-length v12, v5

    const/16 v16, 0x1

    add-int/lit8 v12, v12, -0x1

    goto :goto_13f

    :cond_135
    const/4 v12, 0x2

    if-ge v4, v12, :cond_13a

    const/4 v12, 0x0

    goto :goto_13f

    :cond_13a
    const/4 v12, 0x3

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    :goto_13f
    invoke-direct {v0, v12, v5, v6, v7}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    invoke-virtual {v2, v11}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    invoke-virtual {v2, v9}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setColorPalette([I)V

    if-eqz v8, :cond_156

    move/from16 v16, v10

    array-length v10, v5

    const/16 v17, 0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_15e

    :cond_156
    move/from16 v16, v10

    const/4 v10, 0x2

    if-ge v4, v10, :cond_15d

    const/4 v10, 0x0

    goto :goto_15e

    :cond_15d
    const/4 v10, 0x2

    :goto_15e
    invoke-direct {v0, v10, v5, v6, v7}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    invoke-virtual {v3, v11}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    invoke-virtual {v3, v9}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setColorPalette([I)V

    invoke-virtual {v1, v8}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    invoke-virtual {v2, v8}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    invoke-virtual {v3, v8}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Gradients: \n\tNormal "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n\tDark "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n\tExtra dark: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_d

    move v2, v1

    goto :goto_e

    :cond_d
    move v2, v0

    :goto_e
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1a

    move v3, v1

    goto :goto_1b

    :cond_1a
    move v3, v0

    :goto_1b
    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2f

    move v4, v1

    goto :goto_30

    :cond_2f
    move v4, v0

    :goto_30
    if-eqz v2, :cond_36

    const v5, -0x252320

    goto :goto_41

    :cond_36
    if-nez v3, :cond_3e

    if-eqz v4, :cond_3b

    goto :goto_3e

    :cond_3b
    const/high16 v5, -0x1000000

    goto :goto_41

    :cond_3e
    :goto_3e
    const v5, -0xdfdedc

    :goto_41
    const/4 v6, 0x3

    new-array v6, v6, [F

    invoke-static {v5, v6}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    invoke-virtual {p2, v5}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    invoke-virtual {p2, v5}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    invoke-virtual {p2, v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    aget v0, v6, v0

    aget v1, v6, v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/colorextraction/types/Tonal;->findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/colorextraction/types/Tonal;->getColorPalette(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;)[I

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setColorPalette([I)V

    return-void
.end method

.method public extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/Tonal;->runTonalExtraction(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    :cond_9
    return-void
.end method
