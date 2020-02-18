.class public Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;
.super Landroid/util/Spline;
.source "CameraBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraBrightness;
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
    .locals 12

    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_7

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    array-length v0, p1

    add-int/lit8 v2, v0, -0x1

    new-array v3, v2, [F

    new-array v4, v0, [F

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x0

    if-ge v6, v2, :cond_1

    add-int/lit8 v8, v6, 0x1

    aget v9, p1, v8

    aget v10, p1, v6

    sub-float/2addr v9, v10

    cmpg-float v7, v9, v7

    if-lez v7, :cond_0

    aget v7, p2, v8

    aget v10, p2, v6

    sub-float/2addr v7, v10

    div-float/2addr v7, v9

    aput v7, v3, v6

    move v6, v8

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The control points must all have strictly increasing X values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    aget v6, v3, v5

    aput v6, v4, v5

    const/4 v6, 0x1

    :goto_1
    if-ge v6, v2, :cond_2

    add-int/lit8 v8, v6, -0x1

    aget v8, v3, v8

    aget v9, v3, v6

    add-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    aput v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr v0, v1

    aget v0, v3, v0

    aput v0, v4, v2

    :goto_2
    if-ge v5, v2, :cond_6

    aget v0, v3, v5

    cmpl-float v0, v0, v7

    if-nez v0, :cond_3

    aput v7, v4, v5

    add-int/lit8 v0, v5, 0x1

    aput v7, v4, v0

    goto :goto_3

    :cond_3
    aget v0, v4, v5

    aget v1, v3, v5

    div-float/2addr v0, v1

    add-int/lit8 v1, v5, 0x1

    aget v6, v4, v1

    aget v8, v3, v5

    div-float/2addr v6, v8

    cmpg-float v8, v0, v7

    if-ltz v8, :cond_5

    cmpg-float v8, v6, v7

    if-ltz v8, :cond_5

    float-to-double v8, v0

    float-to-double v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x41100000    # 9.0f

    cmpl-float v9, v8, v9

    if-lez v9, :cond_4

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v9, v8

    mul-float/2addr v0, v9

    aget v8, v3, v5

    mul-float/2addr v0, v8

    aput v0, v4, v5

    mul-float/2addr v9, v6

    aget v0, v3, v5

    mul-float/2addr v9, v0

    aput v9, v4, v1

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The control points must have monotonic Y values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iput-object p1, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mX:[F

    iput-object p2, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mY:[F

    iput-object v4, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mM:[F

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public interpolate(F)F
    .locals 8

    iget-object v0, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mX:[F

    array-length v0, v0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mX:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    iget-object p0, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mY:[F

    aget p0, p0, v2

    return p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    iget-object p0, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mY:[F

    aget p0, p0, v0

    return p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mX:[F

    add-int/lit8 v1, v2, 0x1

    aget v3, v0, v1

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_4

    aget v0, v0, v1

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mY:[F

    aget p0, p0, v1

    return p0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    aget v3, v0, v1

    aget v4, v0, v2

    sub-float/2addr v3, v4

    aget v0, v0, v2

    sub-float/2addr p1, v0

    div-float/2addr p1, v3

    iget-object v0, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mY:[F

    aget v4, v0, v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, p1

    const/high16 v6, 0x3f800000    # 1.0f

    add-float v7, v5, v6

    mul-float/2addr v4, v7

    iget-object p0, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mM:[F

    aget v2, p0, v2

    mul-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v4, v2

    sub-float v2, v6, p1

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    aget v0, v0, v1

    const/high16 v2, 0x40400000    # 3.0f

    sub-float/2addr v2, v5

    mul-float/2addr v0, v2

    aget p0, p0, v1

    mul-float/2addr v3, p0

    sub-float p0, p1, v6

    mul-float/2addr v3, p0

    add-float/2addr v0, v3

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v4, v0

    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mX:[F

    array-length v1, v1

    const-string v2, "MonotoneCubicSpline{["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    const-string v3, ", "

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mX:[F

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mY:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mM:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
