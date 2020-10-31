.class public Landroid/graphics/ColorMatrix;
.super Ljava/lang/Object;
.source "ColorMatrix.java"


# instance fields
.field private final mArray:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v2, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([F)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    instance-of v0, p1, Landroid/graphics/ColorMatrix;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/graphics/ColorMatrix;

    iget-object v0, v0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v2, 0x0

    :goto_c
    const/16 v3, 0x14

    if-ge v2, v3, :cond_1e

    aget v3, v0, v2

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aget v4, v4, v2

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1b

    return v1

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1e
    const/4 v1, 0x1

    return v1
.end method

.method public final getArray()[F
    .registers 2

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    return-object v0
.end method

.method public postConcat(Landroid/graphics/ColorMatrix;)V
    .registers 2

    invoke-virtual {p0, p1, p0}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public preConcat(Landroid/graphics/ColorMatrix;)V
    .registers 2

    invoke-virtual {p0, p0, p1}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public reset()V
    .registers 4

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    const/16 v1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public set(Landroid/graphics/ColorMatrix;)V
    .registers 6

    iget-object v0, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public set([F)V
    .registers 5

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V
    .registers 14

    const/16 v0, 0x14

    if-eq p1, p0, :cond_a

    if-ne p2, p0, :cond_7

    goto :goto_a

    :cond_7
    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    goto :goto_c

    :cond_a
    :goto_a
    new-array v1, v0, [F

    :goto_c
    iget-object v2, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v3, p2, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v0, :cond_79

    const/4 v6, 0x0

    :goto_15
    const/4 v7, 0x4

    if-ge v6, v7, :cond_47

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v8, v5, 0x0

    aget v8, v2, v8

    add-int/lit8 v9, v6, 0x0

    aget v9, v3, v9

    mul-float/2addr v8, v9

    add-int/lit8 v9, v5, 0x1

    aget v9, v2, v9

    add-int/lit8 v10, v6, 0x5

    aget v10, v3, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    add-int/lit8 v9, v5, 0x2

    aget v9, v2, v9

    add-int/lit8 v10, v6, 0xa

    aget v10, v3, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    add-int/lit8 v9, v5, 0x3

    aget v9, v2, v9

    add-int/lit8 v10, v6, 0xf

    aget v10, v3, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    aput v8, v1, v4

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_15

    :cond_47
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v8, v5, 0x0

    aget v8, v2, v8

    aget v7, v3, v7

    mul-float/2addr v8, v7

    add-int/lit8 v7, v5, 0x1

    aget v7, v2, v7

    const/16 v9, 0x9

    aget v9, v3, v9

    mul-float/2addr v7, v9

    add-float/2addr v8, v7

    add-int/lit8 v7, v5, 0x2

    aget v7, v2, v7

    const/16 v9, 0xe

    aget v9, v3, v9

    mul-float/2addr v7, v9

    add-float/2addr v8, v7

    add-int/lit8 v7, v5, 0x3

    aget v7, v2, v7

    const/16 v9, 0x13

    aget v9, v3, v9

    mul-float/2addr v7, v9

    add-float/2addr v8, v7

    add-int/lit8 v7, v5, 0x4

    aget v7, v2, v7

    add-float/2addr v8, v7

    aput v8, v1, v4

    add-int/lit8 v5, v5, 0x5

    move v4, v6

    goto :goto_12

    :cond_79
    iget-object v5, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    if-eq v1, v5, :cond_81

    const/4 v6, 0x0

    invoke-static {v1, v6, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_81
    return-void
.end method

.method public setRGB2YUV()V
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x0

    const v2, 0x3e991687    # 0.299f

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x3f1645a2    # 0.587f

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x3de978d5    # 0.114f

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, -0x41d335d2    # -0.16874f

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x41566517    # -0.33126f

    aput v2, v0, v1

    const/4 v1, 0x7

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, -0x4129a177    # -0.41869f

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x42597a25    # -0.08131f

    aput v2, v0, v1

    return-void
.end method

.method public setRotate(IF)V
    .registers 12

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    float-to-double v0, p2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/16 v4, 0xc

    const/4 v5, 0x6

    if-eqz p1, :cond_47

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq p1, v8, :cond_39

    if-ne p1, v7, :cond_33

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v2, v4, v5

    aput v2, v4, v6

    aput v3, v4, v8

    const/4 v5, 0x5

    neg-float v6, v3

    aput v6, v4, v5

    goto :goto_56

    :cond_33
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    :cond_39
    iget-object v5, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v2, v5, v4

    aput v2, v5, v6

    neg-float v4, v3

    aput v4, v5, v7

    const/16 v4, 0xa

    aput v3, v5, v4

    goto :goto_56

    :cond_47
    iget-object v6, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v2, v6, v4

    aput v2, v6, v5

    const/4 v4, 0x7

    aput v3, v6, v4

    const/16 v4, 0xb

    neg-float v5, v3

    aput v5, v6, v4

    nop

    :goto_56
    return-void
.end method

.method public setSaturation(F)V
    .registers 9

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const v2, 0x3e5a1cac    # 0.213f

    mul-float/2addr v2, v1

    const v3, 0x3f370a3d    # 0.715f

    mul-float/2addr v3, v1

    const v4, 0x3d9374bc    # 0.072f

    mul-float/2addr v4, v1

    add-float v5, v2, p1

    const/4 v6, 0x0

    aput v5, v0, v6

    const/4 v5, 0x1

    aput v3, v0, v5

    const/4 v5, 0x2

    aput v4, v0, v5

    const/4 v5, 0x5

    aput v2, v0, v5

    add-float v5, v3, p1

    const/4 v6, 0x6

    aput v5, v0, v6

    const/4 v5, 0x7

    aput v4, v0, v5

    const/16 v5, 0xa

    aput v2, v0, v5

    const/16 v5, 0xb

    aput v3, v0, v5

    add-float v5, v4, p1

    const/16 v6, 0xc

    aput v5, v0, v6

    return-void
.end method

.method public setScale(FFFF)V
    .registers 8

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v1, 0x13

    :goto_4
    if-lez v1, :cond_c

    const/4 v2, 0x0

    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_c
    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p2, v0, v1

    const/16 v1, 0xc

    aput p3, v0, v1

    const/16 v1, 0x12

    aput p4, v0, v1

    return-void
.end method

.method public setYUV2RGB()V
    .registers 5

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x2

    const v2, 0x3fb374bc    # 1.402f

    aput v2, v0, v1

    const/4 v1, 0x5

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x6

    const v3, -0x414fcce2    # -0.34414f

    aput v3, v0, v1

    const/4 v1, 0x7

    const v3, -0x40c92e1f    # -0.71414f

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x3fe2d0e5    # 1.772f

    aput v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method
