.class public Lmiui/view/animation/ElasticEaseInOutInterpolator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mAmplitude:F

.field private final mPeriod:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lmiui/view/animation/ElasticEaseInOutInterpolator;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/view/animation/ElasticEaseInOutInterpolator;->mAmplitude:F

    iput p2, p0, Lmiui/view/animation/ElasticEaseInOutInterpolator;->mPeriod:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 12

    iget v0, p0, Lmiui/view/animation/ElasticEaseInOutInterpolator;->mPeriod:F

    iget p0, p0, Lmiui/view/animation/ElasticEaseInOutInterpolator;->mAmplitude:F

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    div-float/2addr p1, v2

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v2, p1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_1

    return v3

    :cond_1
    cmpl-float v2, v0, v1

    if-nez v2, :cond_2

    const v0, 0x3ee66667    # 0.45000002f

    :cond_2
    cmpl-float v1, p0, v1

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    if-eqz v1, :cond_4

    cmpg-float v1, p0, v3

    if-gez v1, :cond_3

    goto :goto_0

    :cond_3
    float-to-double v1, v0

    div-double/2addr v1, v4

    div-float v6, v3, p0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    mul-double/2addr v1, v6

    double-to-float v1, v1

    goto :goto_1

    :cond_4
    :goto_0
    const/high16 p0, 0x40800000    # 4.0f

    div-float v1, v0, p0

    move p0, v3

    :goto_1
    cmpg-float v2, p1, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-float/2addr p1, v3

    if-gez v2, :cond_5

    const/high16 v2, -0x41000000    # -0.5f

    float-to-double v8, p0

    const/high16 p0, 0x41200000    # 10.0f

    mul-float/2addr p0, p1

    float-to-double v10, p0

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

    :cond_5
    float-to-double v2, p0

    const/high16 p0, -0x3ee00000    # -10.0f

    mul-float/2addr p0, p1

    float-to-double v8, p0

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
