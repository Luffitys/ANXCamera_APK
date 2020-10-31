.class public Landroid/renderscript/Matrix3f;
.super Ljava/lang/Object;
.source "Matrix3f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>([F)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public get(II)F
    .registers 5

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public getArray()[F
    .registers 2

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    return-object v0
.end method

.method public load(Landroid/renderscript/Matrix3f;)V
    .registers 6

    invoke-virtual {p1}, Landroid/renderscript/Matrix3f;->getArray()[F

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public loadIdentity()V
    .registers 5

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

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

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V
    .registers 13

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_32

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_8
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v5, v1, :cond_26

    invoke-virtual {p2, v0, v5}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v9

    invoke-virtual {p1, v5, v7}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v7

    mul-float/2addr v7, v9

    add-float/2addr v2, v7

    invoke-virtual {p1, v5, v8}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v7

    mul-float/2addr v7, v9

    add-float/2addr v3, v7

    invoke-virtual {p1, v5, v6}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v6

    mul-float/2addr v6, v9

    add-float/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_26
    invoke-virtual {p0, v0, v7, v2}, Landroid/renderscript/Matrix3f;->set(IIF)V

    invoke-virtual {p0, v0, v8, v3}, Landroid/renderscript/Matrix3f;->set(IIF)V

    invoke-virtual {p0, v0, v6, v4}, Landroid/renderscript/Matrix3f;->set(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_32
    return-void
.end method

.method public loadRotate(F)V
    .registers 7

    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    neg-float v3, v1

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v3, 0x4

    aput v0, v2, v3

    return-void
.end method

.method public loadRotate(FFFF)V
    .registers 23

    const v0, 0x3c8efa35

    mul-float v0, v0, p1

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v3, p2, p2

    mul-float v4, p3, p3

    add-float/2addr v3, v4

    mul-float v4, p4, p4

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-nez v5, :cond_2e

    div-float v5, v4, v3

    mul-float v6, p2, v5

    mul-float v7, p3, v5

    mul-float v8, p4, v5

    goto :goto_34

    :cond_2e
    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    :goto_34
    sub-float/2addr v4, v1

    mul-float v5, v6, v7

    mul-float v9, v7, v8

    mul-float v10, v8, v6

    mul-float v11, v6, v2

    mul-float v12, v7, v2

    mul-float v13, v8, v2

    move-object/from16 v14, p0

    iget-object v15, v14, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x0

    mul-float v17, v6, v6

    mul-float v17, v17, v4

    add-float v17, v17, v1

    aput v17, v15, v16

    const/16 v16, 0x3

    mul-float v17, v5, v4

    sub-float v17, v17, v13

    aput v17, v15, v16

    const/16 v16, 0x6

    mul-float v17, v10, v4

    add-float v17, v17, v12

    aput v17, v15, v16

    const/16 v16, 0x1

    mul-float v17, v5, v4

    add-float v17, v17, v13

    aput v17, v15, v16

    const/16 v16, 0x4

    mul-float v17, v7, v7

    mul-float v17, v17, v4

    add-float v17, v17, v1

    aput v17, v15, v16

    const/16 v16, 0x7

    mul-float v17, v9, v4

    sub-float v17, v17, v11

    aput v17, v15, v16

    const/16 v16, 0x2

    mul-float v17, v10, v4

    sub-float v17, v17, v12

    aput v17, v15, v16

    const/16 v16, 0x5

    mul-float v17, v9, v4

    add-float v17, v17, v11

    aput v17, v15, v16

    const/16 v16, 0x8

    mul-float v17, v8, v8

    mul-float v17, v17, v4

    add-float v17, v17, v1

    aput v17, v15, v16

    return-void
.end method

.method public loadScale(FF)V
    .registers 5

    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p2, v0, v1

    return-void
.end method

.method public loadScale(FFF)V
    .registers 6

    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p2, v0, v1

    const/16 v1, 0x8

    aput p3, v0, v1

    return-void
.end method

.method public loadTranslate(FF)V
    .registers 5

    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 v1, 0x7

    aput p2, v0, v1

    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix3f;)V
    .registers 3

    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix3f;->loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->load(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public rotate(F)V
    .registers 3

    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix3f;->loadRotate(F)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public rotate(FFFF)V
    .registers 6

    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix3f;->loadRotate(FFFF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public scale(FF)V
    .registers 4

    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix3f;->loadScale(FF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public scale(FFF)V
    .registers 5

    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix3f;->loadScale(FFF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public set(IIF)V
    .registers 6

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aput p3, v0, v1

    return-void
.end method

.method public translate(FF)V
    .registers 4

    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix3f;->loadTranslate(FF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public transpose()V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_25

    add-int/lit8 v1, v0, 0x1

    :goto_6
    const/4 v2, 0x3

    if-ge v1, v2, :cond_22

    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v3, v0, 0x3

    add-int/2addr v3, v1

    aget v3, v2, v3

    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v1

    mul-int/lit8 v5, v1, 0x3

    add-int/2addr v5, v0

    aget v5, v2, v5

    aput v5, v2, v4

    mul-int/lit8 v4, v1, 0x3

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
