.class public Landroid/renderscript/Matrix4f;
.super Ljava/lang/Object;
.source "Matrix4f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>([F)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private computeCofactor(II)F
    .registers 15

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, p1, 0x2

    rem-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p1, 0x3

    rem-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, p2, 0x1

    rem-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, p2, 0x2

    rem-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, p2, 0x3

    rem-int/lit8 v5, v5, 0x4

    iget-object v6, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v7, v3, 0x4

    add-int/2addr v7, v0

    aget v7, v6, v7

    mul-int/lit8 v8, v4, 0x4

    add-int/2addr v8, v1

    aget v8, v6, v8

    mul-int/lit8 v9, v5, 0x4

    add-int/2addr v9, v2

    aget v9, v6, v9

    mul-float/2addr v8, v9

    mul-int/lit8 v9, v5, 0x4

    add-int/2addr v9, v1

    aget v9, v6, v9

    mul-int/lit8 v10, v4, 0x4

    add-int/2addr v10, v2

    aget v10, v6, v10

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    mul-int/lit8 v8, v4, 0x4

    add-int/2addr v8, v0

    aget v8, v6, v8

    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v1

    aget v9, v6, v9

    mul-int/lit8 v10, v5, 0x4

    add-int/2addr v10, v2

    aget v10, v6, v10

    mul-float/2addr v9, v10

    mul-int/lit8 v10, v5, 0x4

    add-int/2addr v10, v1

    aget v10, v6, v10

    mul-int/lit8 v11, v3, 0x4

    add-int/2addr v11, v2

    aget v11, v6, v11

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-int/lit8 v8, v5, 0x4

    add-int/2addr v8, v0

    aget v8, v6, v8

    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v1

    aget v9, v6, v9

    mul-int/lit8 v10, v4, 0x4

    add-int/2addr v10, v2

    aget v10, v6, v10

    mul-float/2addr v9, v10

    mul-int/lit8 v10, v4, 0x4

    add-int/2addr v10, v1

    aget v10, v6, v10

    mul-int/lit8 v11, v3, 0x4

    add-int/2addr v11, v2

    aget v6, v6, v11

    mul-float/2addr v10, v6

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int v6, p1, p2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7b

    neg-float v6, v7

    goto :goto_7c

    :cond_7b
    move v6, v7

    :goto_7c
    return v6
.end method


# virtual methods
.method public get(II)F
    .registers 5

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public getArray()[F
    .registers 2

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    return-object v0
.end method

.method public inverse()Z
    .registers 10

    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    const/4 v1, 0x0

    :goto_6
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1d

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_1a

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v3

    invoke-direct {p0, v1, v3}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1d
    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v3, 0x0

    aget v4, v1, v3

    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v6, v5, v3

    mul-float/2addr v4, v6

    aget v2, v1, v2

    const/4 v6, 0x1

    aget v7, v5, v6

    mul-float/2addr v2, v7

    add-float/2addr v4, v2

    const/16 v2, 0x8

    aget v2, v1, v2

    const/4 v7, 0x2

    aget v7, v5, v7

    mul-float/2addr v2, v7

    add-float/2addr v4, v2

    const/16 v2, 0xc

    aget v1, v1, v2

    const/4 v2, 0x3

    aget v2, v5, v2

    mul-float/2addr v1, v2

    add-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v7, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v1, v1, v7

    if-gez v1, :cond_4f

    return v3

    :cond_4f
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v4

    const/4 v2, 0x0

    :goto_53
    const/16 v3, 0x10

    if-ge v2, v3, :cond_63

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v2

    mul-float/2addr v4, v1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_63
    return v6
.end method

.method public inverseTranspose()Z
    .registers 8

    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    const/4 v1, 0x0

    :goto_6
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1d

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_1a

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v5, v3, 0x4

    add-int/2addr v5, v1

    invoke-direct {p0, v1, v3}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1d
    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v3, 0x0

    aget v4, v1, v3

    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v6, v5, v3

    mul-float/2addr v4, v6

    aget v6, v1, v2

    aget v2, v5, v2

    mul-float/2addr v6, v2

    add-float/2addr v4, v6

    const/16 v2, 0x8

    aget v6, v1, v2

    aget v2, v5, v2

    mul-float/2addr v6, v2

    add-float/2addr v4, v6

    const/16 v2, 0xc

    aget v1, v1, v2

    aget v2, v5, v2

    mul-float/2addr v1, v2

    add-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v1, v1, v5

    if-gez v1, :cond_4c

    return v3

    :cond_4c
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v4

    const/4 v2, 0x0

    :goto_50
    const/16 v3, 0x10

    if-ge v2, v3, :cond_60

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v2

    mul-float/2addr v4, v1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :cond_60
    const/4 v2, 0x1

    return v2
.end method

.method public load(Landroid/renderscript/Matrix3f;)V
    .registers 7

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v3, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v3, v1

    const/4 v3, 0x4

    aput v1, v0, v3

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v3

    const/4 v3, 0x5

    aput v1, v0, v3

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v3

    const/4 v3, 0x6

    aput v1, v0, v3

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    iget-object v4, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v3, v4, v3

    const/16 v4, 0x8

    aput v3, v0, v4

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v3, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v3, v1

    const/16 v3, 0x9

    aput v1, v0, v3

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v4

    const/16 v3, 0xa

    aput v1, v0, v3

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    aput v2, v0, v1

    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    return-void
.end method

.method public load(Landroid/renderscript/Matrix4f;)V
    .registers 6

    invoke-virtual {p1}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public loadFrustum(FFFFFF)V
    .registers 11

    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, p5, v1

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    const/4 v3, 0x0

    aput v2, v0, v3

    mul-float/2addr v1, p5

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    add-float v1, p2, p1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    const/16 v2, 0x8

    aput v1, v0, v2

    add-float v1, p4, p3

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/16 v2, 0x9

    aput v1, v0, v2

    add-float v1, p6, p5

    neg-float v1, v1

    sub-float v2, p6, p5

    div-float/2addr v1, v2

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0xb

    const/high16 v2, -0x40800000    # -1.0f

    aput v2, v0, v1

    const/high16 v1, -0x40000000    # -2.0f

    mul-float/2addr v1, p6

    mul-float/2addr v1, p5

    sub-float v2, p6, p5

    div-float/2addr v1, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public loadIdentity()V
    .registers 5

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V
    .registers 15

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3d

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_9
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v6, v1, :cond_2e

    invoke-virtual {p2, v0, v6}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v11

    invoke-virtual {p1, v6, v9}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v9

    mul-float/2addr v9, v11

    add-float/2addr v2, v9

    invoke-virtual {p1, v6, v10}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v9

    mul-float/2addr v9, v11

    add-float/2addr v3, v9

    invoke-virtual {p1, v6, v8}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v8

    mul-float/2addr v8, v11

    add-float/2addr v4, v8

    invoke-virtual {p1, v6, v7}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v11

    add-float/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_2e
    invoke-virtual {p0, v0, v9, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    invoke-virtual {p0, v0, v10, v3}, Landroid/renderscript/Matrix4f;->set(IIF)V

    invoke-virtual {p0, v0, v8, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    invoke-virtual {p0, v0, v7, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3d
    return-void
.end method

.method public loadOrtho(FFFFFF)V
    .registers 11

    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    sub-float v1, p2, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v1, v2, v1

    const/4 v3, 0x0

    aput v1, v0, v3

    sub-float v1, p4, p3

    div-float/2addr v2, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    sub-float v1, p6, p5

    const/high16 v2, -0x40000000    # -2.0f

    div-float/2addr v2, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    add-float v1, p2, p1

    neg-float v1, v1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    const/16 v2, 0xc

    aput v1, v0, v2

    add-float v1, p4, p3

    neg-float v1, v1

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/16 v2, 0xd

    aput v1, v0, v2

    add-float v1, p6, p5

    neg-float v1, v1

    sub-float v2, p6, p5

    div-float/2addr v1, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    return-void
.end method

.method public loadOrthoWindow(II)V
    .registers 10

    int-to-float v2, p1

    int-to-float v3, p2

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    return-void
.end method

.method public loadPerspective(FFFF)V
    .registers 16

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p3

    neg-float v8, v0

    mul-float v9, v8, p2

    mul-float v10, v0, p2

    move-object v1, p0

    move v2, v9

    move v3, v10

    move v4, v8

    move v5, v0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    return-void
.end method

.method public loadProjectionNormalized(II)V
    .registers 13

    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    new-instance v1, Landroid/renderscript/Matrix4f;

    invoke-direct {v1}, Landroid/renderscript/Matrix4f;-><init>()V

    move-object v8, v1

    if-le p1, p2, :cond_20

    int-to-float v1, p1

    int-to-float v2, p2

    div-float v9, v1, v2

    neg-float v2, v9

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x42c80000    # 100.0f

    move-object v1, v0

    move v3, v9

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    goto :goto_32

    :cond_20
    int-to-float v1, p2

    int-to-float v2, p1

    div-float v9, v1, v2

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    neg-float v4, v9

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x42c80000    # 100.0f

    move-object v1, v0

    move v5, v9

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    :goto_32
    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v8, v1, v2, v3, v2}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    invoke-virtual {v0, v0, v8}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v8, v1, v4, v3}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    invoke-virtual {v0, v0, v8}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    invoke-virtual {v8, v2, v2, v4}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    invoke-virtual {v0, v0, v8}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public loadRotate(FFFF)V
    .registers 23

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v3, v1, v2

    const/16 v2, 0xb

    aput v3, v1, v2

    const/16 v2, 0xc

    aput v3, v1, v2

    const/16 v2, 0xd

    aput v3, v1, v2

    const/16 v2, 0xe

    aput v3, v1, v2

    const/16 v2, 0xf

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const v1, 0x3c8efa35

    mul-float v1, v1, p1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v5, p2, p2

    mul-float v6, p3, p3

    add-float/2addr v5, v6

    mul-float v6, p4, p4

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    cmpl-float v6, v5, v3

    if-nez v6, :cond_4d

    div-float v6, v3, v5

    mul-float v7, p2, v6

    mul-float v8, p3, v6

    mul-float v9, p4, v6

    goto :goto_53

    :cond_4d
    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    :goto_53
    sub-float/2addr v3, v2

    mul-float v6, v7, v8

    mul-float v10, v8, v9

    mul-float v11, v9, v7

    mul-float v12, v7, v4

    mul-float v13, v8, v4

    mul-float v14, v9, v4

    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v16, 0x0

    mul-float v17, v7, v7

    mul-float v17, v17, v3

    add-float v17, v17, v2

    aput v17, v15, v16

    const/16 v16, 0x4

    mul-float v17, v6, v3

    sub-float v17, v17, v14

    aput v17, v15, v16

    const/16 v16, 0x8

    mul-float v17, v11, v3

    add-float v17, v17, v13

    aput v17, v15, v16

    const/16 v16, 0x1

    mul-float v17, v6, v3

    add-float v17, v17, v14

    aput v17, v15, v16

    const/16 v16, 0x5

    mul-float v17, v8, v8

    mul-float v17, v17, v3

    add-float v17, v17, v2

    aput v17, v15, v16

    const/16 v16, 0x9

    mul-float v17, v10, v3

    sub-float v17, v17, v12

    aput v17, v15, v16

    const/16 v16, 0x2

    mul-float v17, v11, v3

    sub-float v17, v17, v13

    aput v17, v15, v16

    const/16 v16, 0x6

    mul-float v17, v10, v3

    add-float v17, v17, v12

    aput v17, v15, v16

    const/16 v16, 0xa

    mul-float v17, v9, v9

    mul-float v17, v17, v3

    add-float v17, v17, v2

    aput v17, v15, v16

    return-void
.end method

.method public loadScale(FFF)V
    .registers 6

    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p2, v0, v1

    const/16 v1, 0xa

    aput p3, v0, v1

    return-void
.end method

.method public loadTranslate(FFF)V
    .registers 6

    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    const/16 v1, 0xd

    aput p2, v0, v1

    const/16 v1, 0xe

    aput p3, v0, v1

    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix4f;)V
    .registers 3

    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public rotate(FFFF)V
    .registers 6

    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public scale(FFF)V
    .registers 5

    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public set(IIF)V
    .registers 6

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aput p3, v0, v1

    return-void
.end method

.method public translate(FFF)V
    .registers 5

    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public transpose()V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_25

    add-int/lit8 v1, v0, 0x1

    :goto_6
    const/4 v2, 0x4

    if-ge v1, v2, :cond_22

    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v1

    aget v3, v2, v3

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v1

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v0

    aget v5, v2, v5

    aput v5, v2, v4

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v0

    aput v3, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method
