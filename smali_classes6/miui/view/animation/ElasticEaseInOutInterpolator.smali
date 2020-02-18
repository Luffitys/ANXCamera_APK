.class public Lmiui/view/animation/ElasticEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final QT:F

.field private final RT:F


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lmiui/view/animation/ElasticEaseInOutInterpolator;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lmiui/view/animation/ElasticEaseInOutInterpolator;->QT:F

    .line 4
    iput p2, p0, Lmiui/view/animation/ElasticEaseInOutInterpolator;->RT:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 14

    .line 1
    iget v0, p0, Lmiui/view/animation/ElasticEaseInOutInterpolator;->RT:F

    .line 2
    iget p0, p0, Lmiui/view/animation/ElasticEaseInOutInterpolator;->QT:F

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_a

    return v1

    :cond_a
    const/high16 v2, 0x3f000000    # 0.5f

    div-float/2addr p1, v2

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v2, p1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_16

    return v3

    :cond_16
    cmpl-float v2, v0, v1

    if-nez v2, :cond_1d

    const v0, 0x3ee66667    # 0.45000002f

    :cond_1d
    cmpl-float v1, p0, v1

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    if-eqz v1, :cond_37

    cmpg-float v1, p0, v3

    if-gez v1, :cond_2b

    goto :goto_37

    :cond_2b
    float-to-double v1, v0

    div-double/2addr v1, v4

    div-float v6, v3, p0

    float-to-double v6, v6

    .line 3
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    mul-double/2addr v1, v6

    double-to-float v1, v1

    goto :goto_3c

    :cond_37
    :goto_37
    const/high16 p0, 0x40800000    # 4.0f

    div-float v1, v0, p0

    move p0, v3

    :goto_3c
    cmpg-float v2, p1, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    if-gez v2, :cond_5c

    sub-float/2addr p1, v3

    const/high16 v2, -0x41000000    # -0.5f

    float-to-double v8, p0

    const/high16 p0, 0x41200000    # 10.0f

    mul-float/2addr p0, p1

    float-to-double v10, p0

    .line 4
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v8, v6

    sub-float/2addr p1, v1

    float-to-double p0, p1

    mul-double/2addr p0, v4

    float-to-double v0, v0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v8, p0

    double-to-float p0, v8

    mul-float/2addr p0, v2

    return p0

    :cond_5c
    sub-float/2addr p1, v3

    float-to-double v2, p0

    const/high16 p0, -0x3ee00000    # -10.0f

    mul-float/2addr p0, p1

    float-to-double v8, p0

    .line 5
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v2, v6

    sub-float/2addr p1, v1

    float-to-double p0, p1

    mul-double/2addr p0, v4

    float-to-double v0, v0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v2, p0

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, p0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, p0

    double-to-float p0, v2

    return p0
.end method
