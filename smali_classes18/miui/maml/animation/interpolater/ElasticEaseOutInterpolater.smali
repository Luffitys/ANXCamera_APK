.class public Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;
.super Ljava/lang/Object;
.source "ElasticEaseOutInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mAmplitude:F

.field private mAmplitudeExp:Lmiui/maml/data/Expression;

.field private mPriod:F

.field private mPriodExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    iput p1, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    iput p2, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    return-void
.end method

.method public constructor <init>([Lmiui/maml/data/Expression;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    if-eqz p1, :cond_1d

    array-length v0, p1

    if-lez v0, :cond_15

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitudeExp:Lmiui/maml/data/Expression;

    :cond_15
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1d

    aget-object v0, p1, v1

    iput-object v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriodExp:Lmiui/maml/data/Expression;

    :cond_1d
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 13

    iget-object v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitudeExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    :cond_b
    iget-object v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriodExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    :cond_16
    iget v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_1e

    return v1

    :cond_1e
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-nez v2, :cond_25

    return v1

    :cond_25
    cmpg-float v2, v0, v1

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    if-gez v2, :cond_36

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    goto :goto_42

    :cond_36
    iget v2, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    float-to-double v5, v2

    div-double/2addr v5, v3

    div-float/2addr v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    mul-double/2addr v5, v1

    double-to-float v1, v5

    :goto_42
    float-to-double v5, v0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const/high16 v2, -0x3ee00000    # -10.0f

    mul-float/2addr v2, p1

    float-to-double v9, v2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sub-float v2, p1, v1

    float-to-double v7, v2

    mul-double/2addr v7, v3

    iget v2, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    float-to-double v2, v2

    div-double/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v5, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v2

    double-to-float v2, v5

    return v2
.end method
