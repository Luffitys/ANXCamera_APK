.class public final Lcom/android/internal/graphics/palette/Palette;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/Palette$Filter;,
        Lcom/android/internal/graphics/palette/Palette$Builder;,
        Lcom/android/internal/graphics/palette/Palette$Swatch;,
        Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;
    }
.end annotation


# static fields
.field static final DEFAULT_CALCULATE_NUMBER_COLORS:I = 0x10

.field static final DEFAULT_FILTER:Lcom/android/internal/graphics/palette/Palette$Filter;

.field static final DEFAULT_RESIZE_BITMAP_AREA:I = 0x3100

.field static final LOG_TAG:Ljava/lang/String; = "Palette"

.field static final LOG_TIMINGS:Z = false

.field static final MIN_CONTRAST_BODY_TEXT:F = 4.5f

.field static final MIN_CONTRAST_TITLE_TEXT:F = 3.0f


# instance fields
.field private final mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

.field private final mSelectedSwatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/graphics/palette/Target;",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Target;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsedColors:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/graphics/palette/Palette$1;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/Palette$1;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/palette/Palette;->DEFAULT_FILTER:Lcom/android/internal/graphics/palette/Palette$Filter;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Target;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    iput-object p2, p0, Lcom/android/internal/graphics/palette/Palette;->mTargets:Ljava/util/List;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/graphics/palette/Palette;->findDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    return-void
.end method

.method private static copyHslValues(Lcom/android/internal/graphics/palette/Palette$Swatch;)[F
    .registers 5

    const/4 v0, 0x3

    new-array v1, v0, [F

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getHsl()[F

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private findDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .registers 7

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_a
    if-ge v2, v3, :cond_22

    iget-object v4, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-virtual {v4}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v5

    if-le v5, v0, :cond_1f

    move-object v1, v4

    invoke-virtual {v4}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v0

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_22
    return-object v1
.end method

.method public static from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;
    .registers 2

    new-instance v0, Lcom/android/internal/graphics/palette/Palette$Builder;

    invoke-direct {v0, p0}, Lcom/android/internal/graphics/palette/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static from(Ljava/util/List;)Lcom/android/internal/graphics/palette/Palette;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;)",
            "Lcom/android/internal/graphics/palette/Palette;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/graphics/palette/Palette$Builder;

    invoke-direct {v0, p0}, Lcom/android/internal/graphics/palette/Palette$Builder;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Landroid/graphics/Bitmap;I)Lcom/android/internal/graphics/palette/Palette;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object v0

    return-object v0
.end method

.method public static generateAsync(Landroid/graphics/Bitmap;ILcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I",
            "Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Lcom/android/internal/graphics/palette/Palette;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate(Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static generateAsync(Landroid/graphics/Bitmap;Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Lcom/android/internal/graphics/palette/Palette;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate(Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private generateScore(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Target;)F
    .registers 13

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getHsl()[F

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    const/4 v5, 0x1

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v4

    goto :goto_12

    :cond_11
    move v4, v5

    :goto_12
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getSaturationWeight()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    const/high16 v8, 0x3f800000    # 1.0f

    if-lez v6, :cond_30

    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getSaturationWeight()F

    move-result v6

    aget v5, v0, v5

    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getTargetSaturation()F

    move-result v9

    sub-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v8, v5

    mul-float v1, v6, v5

    :cond_30
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getLightnessWeight()F

    move-result v5

    cmpl-float v5, v5, v7

    if-lez v5, :cond_4b

    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getLightnessWeight()F

    move-result v5

    const/4 v6, 0x2

    aget v6, v0, v6

    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getTargetLightness()F

    move-result v9

    sub-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v8, v6

    mul-float v2, v5, v8

    :cond_4b
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getPopulationWeight()F

    move-result v5

    cmpl-float v5, v5, v7

    if-lez v5, :cond_60

    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getPopulationWeight()F

    move-result v5

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v4

    div-float/2addr v6, v7

    mul-float v3, v5, v6

    :cond_60
    add-float v5, v1, v2

    add-float/2addr v5, v3

    return v5
.end method

.method private generateScoredTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/internal/graphics/palette/Palette;->getMaxScoredSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Target;->isExclusive()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/internal/graphics/palette/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_16
    return-object v0
.end method

.method private getMaxScoredSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_9
    if-ge v2, v3, :cond_28

    iget-object v4, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-direct {p0, v4, p1}, Lcom/android/internal/graphics/palette/Palette;->shouldBeScoredForTarget(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Target;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-direct {p0, v4, p1}, Lcom/android/internal/graphics/palette/Palette;->generateScore(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Target;)F

    move-result v5

    if-eqz v1, :cond_23

    cmpl-float v6, v5, v0

    if-lez v6, :cond_25

    :cond_23
    move-object v1, v4

    move v0, v5

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_28
    return-object v1
.end method

.method private shouldBeScoredForTarget(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Target;)Z
    .registers 8

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getHsl()[F

    move-result-object v0

    const/4 v1, 0x1

    aget v2, v0, v1

    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getMinimumSaturation()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3b

    aget v2, v0, v1

    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getMaximumSaturation()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3b

    const/4 v2, 0x2

    aget v3, v0, v2

    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getMinimumLightness()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3b

    aget v2, v0, v2

    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getMaximumLightness()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3b

    iget-object v2, p0, Lcom/android/internal/graphics/palette/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    return v1
.end method


# virtual methods
.method generate()V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/graphics/palette/Palette;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_7
    if-ge v0, v1, :cond_20

    iget-object v2, p0, Lcom/android/internal/graphics/palette/Palette;->mTargets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/Target;->normalizeWeights()V

    iget-object v3, p0, Lcom/android/internal/graphics/palette/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/android/internal/graphics/palette/Palette;->generateScoredTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_20
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method public getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result v1

    goto :goto_c

    :cond_b
    move v1, p2

    :goto_c
    return v1
.end method

.method public getDarkMutedColor(I)I
    .registers 3

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result v0

    return v0
.end method

.method public getDarkMutedSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .registers 2

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getDarkVibrantColor(I)I
    .registers 3

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result v0

    return v0
.end method

.method public getDarkVibrantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .registers 2

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getDominantColor(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result v0

    goto :goto_a

    :cond_9
    move v0, p1

    :goto_a
    return v0
.end method

.method public getDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    return-object v0
.end method

.method public getLightMutedColor(I)I
    .registers 3

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result v0

    return v0
.end method

.method public getLightMutedSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .registers 2

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getLightVibrantColor(I)I
    .registers 3

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result v0

    return v0
.end method

.method public getLightVibrantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .registers 2

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getMutedColor(I)I
    .registers 3

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result v0

    return v0
.end method

.method public getMutedSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .registers 2

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/graphics/palette/Palette$Swatch;

    return-object v0
.end method

.method public getSwatches()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Target;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mTargets:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVibrantColor(I)I
    .registers 3

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result v0

    return v0
.end method

.method public getVibrantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .registers 2

    sget-object v0, Lcom/android/internal/graphics/palette/Target;->VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method
