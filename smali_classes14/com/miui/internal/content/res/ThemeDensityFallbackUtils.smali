.class public Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;
.super Ljava/lang/Object;
.source "ThemeDensityFallbackUtils.java"


# static fields
.field private static final DENSITIES:[I

.field private static final DENSITY_NONE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1e0
        0x140
        0xf0
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDensitySuffix(I)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_62

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5f

    const/16 v1, 0x78

    if-eq p0, v1, :cond_5c

    const/16 v1, 0xa0

    if-eq p0, v1, :cond_59

    const/16 v1, 0xf0

    if-eq p0, v1, :cond_56

    const/16 v1, 0x140

    if-eq p0, v1, :cond_53

    const/16 v1, 0x1b8

    if-eq p0, v1, :cond_50

    const/16 v1, 0x1e0

    if-eq p0, v1, :cond_4d

    const/16 v1, 0x280

    if-eq p0, v1, :cond_4a

    sget-object v1, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    :goto_27
    if-lez v0, :cond_41

    sget-object v2, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v2, v2, v0

    sub-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget-object v3, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v3, v3, v1

    sub-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_3e

    move v1, v0

    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    :cond_41
    sget-object v0, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v0, v0, v1

    invoke-static {v0}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4a
    const-string v0, "-xxxhdpi"

    return-object v0

    :cond_4d
    const-string v0, "-xxhdpi"

    return-object v0

    :cond_50
    const-string v0, "-nxhdpi"

    return-object v0

    :cond_53
    const-string v0, "-xhdpi"

    return-object v0

    :cond_56
    const-string v0, "-hdpi"

    return-object v0

    :cond_59
    const-string v0, "-mdpi"

    return-object v0

    :cond_5c
    const-string v0, "-ldpi"

    return-object v0

    :cond_5f
    const-string v0, "-nodpi"

    return-object v0

    :cond_62
    const-string v0, ""

    return-object v0
.end method

.method public static getFallbackOrder(I)[I
    .registers 11

    sget-object v0, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_5
    if-ltz v0, :cond_10

    sget-object v2, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v2, v2, v0

    if-gt v2, p0, :cond_10

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_10
    const/4 v2, 0x0

    :goto_11
    sget-object v3, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1d

    aget v3, v3, v2

    if-lt v3, p0, :cond_1d

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1d
    sget-object v3, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v3, v3

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    if-ne v4, v2, :cond_27

    move v4, v1

    goto :goto_28

    :cond_27
    move v4, v5

    :goto_28
    add-int/2addr v3, v4

    new-array v3, v3, [I

    aput p0, v3, v5

    const/4 v4, 0x1

    :goto_2e
    array-length v6, v3

    if-ge v4, v6, :cond_66

    const/4 v6, 0x0

    if-gez v0, :cond_36

    const/4 v6, 0x0

    goto :goto_4a

    :cond_36
    sget-object v7, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v8, v7

    if-ne v2, v8, :cond_3d

    const/4 v6, 0x1

    goto :goto_4a

    :cond_3d
    aget v8, v7, v0

    sub-int/2addr v8, p0

    aget v7, v7, v2

    sub-int v7, p0, v7

    if-ge v8, v7, :cond_48

    move v7, v1

    goto :goto_49

    :cond_48
    move v7, v5

    :goto_49
    move v6, v7

    :goto_4a
    if-eqz v6, :cond_59

    add-int/lit8 v7, v4, 0x1

    sget-object v8, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    add-int/lit8 v9, v0, -0x1

    aget v0, v8, v0

    aput v0, v3, v4

    move v4, v7

    move v0, v9

    goto :goto_65

    :cond_59
    add-int/lit8 v7, v4, 0x1

    sget-object v8, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    add-int/lit8 v9, v2, 0x1

    aget v2, v8, v2

    aput v2, v3, v4

    move v4, v7

    move v2, v9

    :goto_65
    goto :goto_2e

    :cond_66
    return-object v3
.end method

.method public static getScreenWidthSuffix(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_9

    const-string v0, "-sw720dp"

    return-object v0

    :cond_9
    const-string v0, ""

    return-object v0
.end method
