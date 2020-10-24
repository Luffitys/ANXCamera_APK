.class public Lmiuix/animation/styles/ColorStyle;
.super Lmiuix/animation/styles/PropertyStyle;
.source ""


# instance fields
.field private mIsAtTarget:Z

.field private mProgress:F


# direct methods
.method constructor <init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/animation/styles/PropertyStyle;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    return-void
.end method


# virtual methods
.method protected getEvaluator()Landroid/animation/TypeEvaluator;
    .locals 0

    sget-object p0, Lmiuix/animation/utils/CommonUtils;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object p0
.end method

.method protected isAnimRunning(DD)Z
    .locals 2

    invoke-virtual {p0}, Lmiuix/animation/styles/PropertyStyle;->getTargetDoubleValue()D

    move-result-wide v0

    cmpl-double p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lmiuix/animation/styles/ColorStyle;->mIsAtTarget:Z

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/animation/styles/ColorStyle;->mIsAtTarget:Z

    goto :goto_0

    :cond_1
    iput-boolean p2, p0, Lmiuix/animation/styles/ColorStyle;->mIsAtTarget:Z

    :goto_0
    iget-object p1, p0, Lmiuix/animation/styles/PropertyStyle;->mEquilibrium:Lmiuix/animation/physics/EquilibriumChecker;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lmiuix/animation/physics/EquilibriumChecker;->setTargetValue(D)V

    iget p1, p0, Lmiuix/animation/styles/ColorStyle;->mProgress:F

    float-to-double p1, p1

    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/animation/styles/PropertyStyle;->isAnimRunning(DD)Z

    move-result p0

    return p0
.end method

.method protected onStart()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/animation/styles/ColorStyle;->mProgress:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/animation/styles/ColorStyle;->mIsAtTarget:Z

    iget-object v0, p0, Lmiuix/animation/styles/PropertyStyle;->mTarget:Lmiuix/animation/IAnimTarget;

    iget-object p0, p0, Lmiuix/animation/styles/PropertyStyle;->mProperty:Lmiuix/animation/property/FloatProperty;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lmiuix/animation/IAnimTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    return-void
.end method

.method protected processCurrentValue(D)D
    .locals 0

    iget p0, p0, Lmiuix/animation/styles/ColorStyle;->mProgress:F

    float-to-double p0, p0

    return-wide p0
.end method

.method protected processTargetValue(D)D
    .locals 0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0
.end method

.method protected regulateProgress(F)F
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p0

    if-lez v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gez v0, :cond_1

    return p0

    :cond_1
    return p1
.end method

.method protected toAnimValue(D)D
    .locals 2

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Lmiuix/animation/styles/ColorStyle;->regulateProgress(F)F

    move-result p1

    iput p1, p0, Lmiuix/animation/styles/ColorStyle;->mProgress:F

    invoke-virtual {p0}, Lmiuix/animation/styles/ColorStyle;->getEvaluator()Landroid/animation/TypeEvaluator;

    move-result-object p1

    iget p2, p0, Lmiuix/animation/styles/ColorStyle;->mProgress:F

    iget-object v0, p0, Lmiuix/animation/styles/PropertyStyle;->mIntValues:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lmiuix/animation/styles/PropertyStyle;->mIntValues:[I

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p2, v0, p0}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double p0, p0

    return-wide p0
.end method
