.class public Lmiui/animation/styles/ColorStyle;
.super Lmiui/animation/styles/PropertyStyle;
.source "ColorStyle.java"


# instance fields
.field private mProgress:F


# direct methods
.method constructor <init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/animation/styles/PropertyStyle;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)V

    return-void
.end method


# virtual methods
.method protected getEvaluator()Landroid/animation/TypeEvaluator;
    .registers 2

    sget-object v0, Lmiui/animation/utils/CommonUtils;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object v0
.end method

.method protected isAnimRunning(DD)Z
    .registers 8

    iget-object v0, p0, Lmiui/animation/styles/ColorStyle;->mEquilibrium:Lmiui/animation/physics/EquilibriumChecker;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lmiui/animation/physics/EquilibriumChecker;->setTargetValue(D)V

    iget-object v0, p0, Lmiui/animation/styles/ColorStyle;->mEquilibrium:Lmiui/animation/physics/EquilibriumChecker;

    iget v1, p0, Lmiui/animation/styles/ColorStyle;->mProgress:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2, p3, p4}, Lmiui/animation/physics/EquilibriumChecker;->isAtEquilibrium(DD)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onStart()V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lmiui/animation/styles/ColorStyle;->mProgress:F

    iget-object v0, p0, Lmiui/animation/styles/ColorStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v1, p0, Lmiui/animation/styles/ColorStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lmiui/animation/IAnimTarget;->setVelocity(Lmiui/animation/property/FloatProperty;D)V

    return-void
.end method

.method protected processCurrentValue(D)D
    .registers 5

    iget v0, p0, Lmiui/animation/styles/ColorStyle;->mProgress:F

    float-to-double v0, v0

    return-wide v0
.end method

.method protected processTargetValue(D)D
    .registers 5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method protected regulateProgress(F)F
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_7

    return v0

    :cond_7
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_d

    return v0

    :cond_d
    return p1
.end method

.method protected toAnimValue(D)D
    .registers 8

    double-to-float v0, p1

    invoke-virtual {p0, v0}, Lmiui/animation/styles/ColorStyle;->regulateProgress(F)F

    move-result v0

    iput v0, p0, Lmiui/animation/styles/ColorStyle;->mProgress:F

    invoke-virtual {p0}, Lmiui/animation/styles/ColorStyle;->getEvaluator()Landroid/animation/TypeEvaluator;

    move-result-object v0

    iget v1, p0, Lmiui/animation/styles/ColorStyle;->mProgress:F

    iget-object v2, p0, Lmiui/animation/styles/ColorStyle;->mIntValues:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lmiui/animation/styles/ColorStyle;->mIntValues:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method
