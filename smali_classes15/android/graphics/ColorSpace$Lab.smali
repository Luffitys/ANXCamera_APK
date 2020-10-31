.class final Landroid/graphics/ColorSpace$Lab;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Lab"
.end annotation


# static fields
.field private static final A:F = 0.008856452f

.field private static final B:F = 7.787037f

.field private static final C:F = 0.13793103f

.field private static final D:F = 0.20689656f


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    sget-object v0, Landroid/graphics/ColorSpace$Model;->LAB:Landroid/graphics/ColorSpace$Model;

    invoke-direct {p0, p1, v0, p2}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Lab;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static clamp(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move v0, p1

    goto :goto_d

    :cond_6
    cmpl-float v0, p0, p2

    if-lez v0, :cond_c

    move v0, p2

    goto :goto_d

    :cond_c
    move v0, p0

    :goto_d
    return v0
.end method


# virtual methods
.method public fromXyz([F)[F
    .registers 16

    const/4 v0, 0x0

    aget v1, p1, v0

    # getter for: Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1000()[F

    move-result-object v2

    aget v2, v2, v0

    div-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p1, v2

    # getter for: Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1000()[F

    move-result-object v4

    aget v4, v4, v2

    div-float/2addr v3, v4

    const/4 v4, 0x2

    aget v5, p1, v4

    # getter for: Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1000()[F

    move-result-object v6

    aget v6, v6, v4

    div-float/2addr v5, v6

    const v6, 0x3c111aa7

    cmpl-float v7, v1, v6

    const-wide v8, 0x3fd5555555555555L    # 0.3333333333333333

    const v10, 0x3e0d3dcb

    const v11, 0x40f92f68

    if-lez v7, :cond_37

    float-to-double v12, v1

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v7, v12

    goto :goto_3a

    :cond_37
    mul-float v7, v1, v11

    add-float/2addr v7, v10

    :goto_3a
    cmpl-float v12, v3, v6

    if-lez v12, :cond_45

    float-to-double v12, v3

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v12, v12

    goto :goto_48

    :cond_45
    mul-float v12, v3, v11

    add-float/2addr v12, v10

    :goto_48
    cmpl-float v6, v5, v6

    if-lez v6, :cond_53

    float-to-double v10, v5

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v6, v8

    goto :goto_56

    :cond_53
    mul-float/2addr v11, v5

    add-float v6, v11, v10

    :goto_56
    const/high16 v8, 0x42e80000    # 116.0f

    mul-float/2addr v8, v12

    const/high16 v9, 0x41800000    # 16.0f

    sub-float/2addr v8, v9

    const/high16 v9, 0x43fa0000    # 500.0f

    sub-float v10, v7, v12

    mul-float/2addr v10, v9

    const/high16 v9, 0x43480000    # 200.0f

    sub-float v11, v12, v6

    mul-float/2addr v11, v9

    const/4 v9, 0x0

    const/high16 v13, 0x42c80000    # 100.0f

    invoke-static {v8, v9, v13}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v9

    aput v9, p1, v0

    const/high16 v0, -0x3d000000    # -128.0f

    const/high16 v9, 0x43000000    # 128.0f

    invoke-static {v10, v0, v9}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v13

    aput v13, p1, v2

    invoke-static {v11, v0, v9}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v0

    aput v0, p1, v4

    return-object p1
.end method

.method public getMaxValue(I)F
    .registers 3

    if-nez p1, :cond_5

    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_7

    :cond_5
    const/high16 v0, 0x43000000    # 128.0f

    :goto_7
    return v0
.end method

.method public getMinValue(I)F
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    const/high16 v0, -0x3d000000    # -128.0f

    :goto_6
    return v0
.end method

.method public isWideGamut()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toXyz([F)[F
    .registers 13

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v1, v2, v3}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v1

    aput v1, p1, v0

    const/4 v1, 0x1

    aget v2, p1, v1

    const/high16 v3, -0x3d000000    # -128.0f

    const/high16 v4, 0x43000000    # 128.0f

    invoke-static {v2, v3, v4}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v2

    aput v2, p1, v1

    const/4 v2, 0x2

    aget v5, p1, v2

    invoke-static {v5, v3, v4}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v3

    aput v3, p1, v2

    aget v3, p1, v0

    const/high16 v4, 0x41800000    # 16.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x42e80000    # 116.0f

    div-float/2addr v3, v4

    aget v4, p1, v1

    const v5, 0x3b03126f    # 0.002f

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    aget v5, p1, v2

    const v6, 0x3ba3d70a    # 0.005f

    mul-float/2addr v5, v6

    sub-float v5, v3, v5

    const v6, 0x3e53dcb1

    cmpl-float v7, v4, v6

    const v8, 0x3e0d3dcb

    const v9, 0x3e038027

    if-lez v7, :cond_4a

    mul-float v7, v4, v4

    mul-float/2addr v7, v4

    goto :goto_4d

    :cond_4a
    sub-float v7, v4, v8

    mul-float/2addr v7, v9

    :goto_4d
    cmpl-float v10, v3, v6

    if-lez v10, :cond_55

    mul-float v10, v3, v3

    mul-float/2addr v10, v3

    goto :goto_58

    :cond_55
    sub-float v10, v3, v8

    mul-float/2addr v10, v9

    :goto_58
    cmpl-float v6, v5, v6

    if-lez v6, :cond_60

    mul-float v6, v5, v5

    mul-float/2addr v6, v5

    goto :goto_63

    :cond_60
    sub-float v6, v5, v8

    mul-float/2addr v6, v9

    :goto_63
    # getter for: Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1000()[F

    move-result-object v8

    aget v8, v8, v0

    mul-float/2addr v8, v7

    aput v8, p1, v0

    # getter for: Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1000()[F

    move-result-object v0

    aget v0, v0, v1

    mul-float/2addr v0, v10

    aput v0, p1, v1

    # getter for: Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1000()[F

    move-result-object v0

    aget v0, v0, v2

    mul-float/2addr v0, v6

    aput v0, p1, v2

    return-object p1
.end method
