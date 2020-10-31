.class public final Landroid/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field private static final DEG_TO_RAD:F = 0.017453292f

.field private static final RAD_TO_DEG:F = 57.295784f


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abs(F)F
    .registers 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_7

    move v0, p0

    goto :goto_8

    :cond_7
    neg-float v0, p0

    :goto_8
    return v0
.end method

.method public static acos(F)F
    .registers 3

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static addOrThrow(II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_3

    return p0

    :cond_3
    if-lez p1, :cond_e

    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    if-gt p0, v0, :cond_e

    add-int v0, p0, p1

    return v0

    :cond_e
    if-gez p1, :cond_18

    const/high16 v0, -0x80000000

    sub-int/2addr v0, p1

    if-lt p0, v0, :cond_18

    add-int v0, p0, p1

    return v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Addition overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asin(F)F
    .registers 3

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static atan(F)F
    .registers 3

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static atan2(FF)F
    .registers 6

    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static constrain(FFF)F
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

.method public static constrain(III)I
    .registers 4

    if-ge p0, p1, :cond_4

    move v0, p1

    goto :goto_9

    :cond_4
    if-le p0, p2, :cond_8

    move v0, p2

    goto :goto_9

    :cond_8
    move v0, p0

    :goto_9
    return v0
.end method

.method public static constrain(JJJ)J
    .registers 8

    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    move-wide v0, p2

    goto :goto_d

    :cond_6
    cmp-long v0, p0, p4

    if-lez v0, :cond_c

    move-wide v0, p4

    goto :goto_d

    :cond_c
    move-wide v0, p0

    :goto_d
    return-wide v0
.end method

.method public static constrainedMap(FFFFF)F
    .registers 6

    invoke-static {p2, p3, p4}, Landroid/util/MathUtils;->lerpInvSat(FFF)F

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public static cross(FFFF)F
    .registers 6

    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method public static degrees(F)F
    .registers 2

    const v0, 0x42652ee2

    mul-float/2addr v0, p0

    return v0
.end method

.method public static dist(FFFF)F
    .registers 10

    sub-float v0, p2, p0

    sub-float v1, p3, p1

    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static dist(FFFFFF)F
    .registers 11

    sub-float v0, p3, p0

    sub-float v1, p4, p1

    sub-float v2, p5, p2

    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method public static dot(FFFF)F
    .registers 6

    mul-float v0, p0, p2

    mul-float v1, p1, p3

    add-float/2addr v0, v1

    return v0
.end method

.method public static exp(F)F
    .registers 3

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static fitRect(Landroid/graphics/Rect;I)V
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->scale(F)V

    return-void
.end method

.method public static lerp(FFF)F
    .registers 4

    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static lerpDeg(FFF)F
    .registers 6

    sub-float v0, p1, p0

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v0, v2

    sub-float/2addr v0, v1

    mul-float v1, v0, p2

    add-float/2addr v1, p0

    return v1
.end method

.method public static lerpInv(FFF)F
    .registers 5

    cmpl-float v0, p0, p1

    if-eqz v0, :cond_a

    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static lerpInvSat(FFF)F
    .registers 4

    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result v0

    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result v0

    return v0
.end method

.method public static log(F)F
    .registers 3

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static mag(FF)F
    .registers 6

    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static mag(FFF)F
    .registers 5

    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static map(FFFFF)F
    .registers 8

    sub-float v0, p3, p2

    sub-float v1, p4, p0

    sub-float v2, p1, p0

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method public static max(FF)F
    .registers 3

    cmpl-float v0, p0, p1

    if-lez v0, :cond_6

    move v0, p0

    goto :goto_7

    :cond_6
    move v0, p1

    :goto_7
    return v0
.end method

.method public static max(FFF)F
    .registers 4

    cmpl-float v0, p0, p1

    if-lez v0, :cond_a

    cmpl-float v0, p0, p2

    if-lez v0, :cond_10

    move v0, p0

    goto :goto_11

    :cond_a
    cmpl-float v0, p1, p2

    if-lez v0, :cond_10

    move v0, p1

    goto :goto_11

    :cond_10
    move v0, p2

    :goto_11
    return v0
.end method

.method public static max(II)F
    .registers 3

    if-le p0, p1, :cond_4

    int-to-float v0, p0

    goto :goto_5

    :cond_4
    int-to-float v0, p1

    :goto_5
    return v0
.end method

.method public static max(III)F
    .registers 4

    if-le p0, p1, :cond_6

    if-le p0, p2, :cond_a

    move v0, p0

    goto :goto_b

    :cond_6
    if-le p1, p2, :cond_a

    move v0, p1

    goto :goto_b

    :cond_a
    move v0, p2

    :goto_b
    int-to-float v0, v0

    return v0
.end method

.method public static min(FF)F
    .registers 3

    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move v0, p0

    goto :goto_7

    :cond_6
    move v0, p1

    :goto_7
    return v0
.end method

.method public static min(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_a

    cmpg-float v0, p0, p2

    if-gez v0, :cond_10

    move v0, p0

    goto :goto_11

    :cond_a
    cmpg-float v0, p1, p2

    if-gez v0, :cond_10

    move v0, p1

    goto :goto_11

    :cond_10
    move v0, p2

    :goto_11
    return v0
.end method

.method public static min(II)F
    .registers 3

    if-ge p0, p1, :cond_4

    int-to-float v0, p0

    goto :goto_5

    :cond_4
    int-to-float v0, p1

    :goto_5
    return v0
.end method

.method public static min(III)F
    .registers 4

    if-ge p0, p1, :cond_6

    if-ge p0, p2, :cond_a

    move v0, p0

    goto :goto_b

    :cond_6
    if-ge p1, p2, :cond_a

    move v0, p1

    goto :goto_b

    :cond_a
    move v0, p2

    :goto_b
    int-to-float v0, v0

    return v0
.end method

.method public static norm(FFF)F
    .registers 5

    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method public static pow(FF)F
    .registers 6

    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static radians(F)F
    .registers 2

    const v0, 0x3c8efa35

    mul-float/2addr v0, p0

    return v0
.end method

.method public static saturate(F)F
    .registers 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method public static smoothStep(FFF)F
    .registers 6

    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method public static sq(F)F
    .registers 2

    mul-float v0, p0, p0

    return v0
.end method

.method public static sqrt(F)F
    .registers 3

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static tan(F)F
    .registers 3

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
