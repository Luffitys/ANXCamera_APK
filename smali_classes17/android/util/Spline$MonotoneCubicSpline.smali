.class public Landroid/util/Spline$MonotoneCubicSpline;
.super Landroid/util/Spline;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Spline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonotoneCubicSpline"
.end annotation


# instance fields
.field private mM:[F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>([F[F)V
    .registers 14

    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    if-eqz p1, :cond_af

    if-eqz p2, :cond_af

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_af

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_af

    array-length v0, p1

    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [F

    new-array v2, v0, [F

    const/4 v3, 0x0

    :goto_17
    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    if-ge v3, v4, :cond_3c

    add-int/lit8 v4, v3, 0x1

    aget v4, p1, v4

    aget v6, p1, v3

    sub-float/2addr v4, v6

    cmpg-float v5, v4, v5

    if-lez v5, :cond_34

    add-int/lit8 v5, v3, 0x1

    aget v5, p2, v5

    aget v6, p2, v3

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_34
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The control points must all have strictly increasing X values."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3c
    const/4 v3, 0x0

    aget v4, v1, v3

    aput v4, v2, v3

    const/4 v3, 0x1

    :goto_42
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_55

    add-int/lit8 v4, v3, -0x1

    aget v4, v1, v4

    aget v6, v1, v3

    add-float/2addr v4, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_55
    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v4, v0, -0x2

    aget v4, v1, v4

    aput v4, v2, v3

    const/4 v3, 0x0

    :goto_5e
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_a8

    aget v4, v1, v3

    cmpl-float v4, v4, v5

    if-nez v4, :cond_6f

    aput v5, v2, v3

    add-int/lit8 v4, v3, 0x1

    aput v5, v2, v4

    goto :goto_9d

    :cond_6f
    aget v4, v2, v3

    aget v6, v1, v3

    div-float/2addr v4, v6

    add-int/lit8 v6, v3, 0x1

    aget v6, v2, v6

    aget v7, v1, v3

    div-float/2addr v6, v7

    cmpg-float v7, v4, v5

    if-ltz v7, :cond_a0

    cmpg-float v7, v6, v5

    if-ltz v7, :cond_a0

    float-to-double v7, v4

    float-to-double v9, v6

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    const/high16 v8, 0x40400000    # 3.0f

    cmpl-float v9, v7, v8

    if-lez v9, :cond_9d

    div-float/2addr v8, v7

    aget v9, v2, v3

    mul-float/2addr v9, v8

    aput v9, v2, v3

    add-int/lit8 v9, v3, 0x1

    aget v10, v2, v9

    mul-float/2addr v10, v8

    aput v10, v2, v9

    :cond_9d
    :goto_9d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    :cond_a0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "The control points must have monotonic Y values."

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_a8
    iput-object p1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    iput-object p2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    iput-object v2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    return-void

    :cond_af
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public interpolate(F)F
    .registers 12

    iget-object v0, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    array-length v0, v0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_a

    return p1

    :cond_a
    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_18

    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v1, v1, v2

    return v1

    :cond_18
    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_27

    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    return v1

    :cond_27
    const/4 v1, 0x0

    :cond_28
    iget-object v2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    add-int/lit8 v3, v1, 0x1

    aget v3, v2, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_3f

    add-int/lit8 v1, v1, 0x1

    aget v2, v2, v1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_28

    iget-object v2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v2, v2, v1

    return v2

    :cond_3f
    add-int/lit8 v3, v1, 0x1

    aget v3, v2, v3

    aget v4, v2, v1

    sub-float/2addr v3, v4

    aget v2, v2, v1

    sub-float v2, p1, v2

    div-float/2addr v2, v3

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v5, v4, v1

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v2, v6

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    mul-float/2addr v5, v7

    iget-object v7, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    aget v9, v7, v1

    mul-float/2addr v9, v3

    mul-float/2addr v9, v2

    add-float/2addr v5, v9

    sub-float v9, v8, v2

    mul-float/2addr v5, v9

    sub-float v9, v8, v2

    mul-float/2addr v5, v9

    add-int/lit8 v9, v1, 0x1

    aget v4, v4, v9

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v6, v2

    sub-float/2addr v9, v6

    mul-float/2addr v4, v9

    add-int/lit8 v6, v1, 0x1

    aget v6, v7, v6

    mul-float/2addr v6, v3

    sub-float v7, v2, v8

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    add-float/2addr v5, v4

    return v5
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    array-length v1, v1

    const-string v2, "MonotoneCubicSpline{["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_41

    const-string v3, ", "

    if-eqz v2, :cond_17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_41
    const-string v2, "]}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
