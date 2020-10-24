.class public final Lmiui/animation/physics/FlingAnimation;
.super Lmiui/animation/physics/DynamicAnimation;
.source ""


# instance fields
.field private final mFlingForce:Lmiui/animation/physics/FlingAnimation$DragForce;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/animation/physics/DynamicAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)V

    new-instance p1, Lmiui/animation/physics/FlingAnimation$DragForce;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lmiui/animation/physics/FlingAnimation$DragForce;-><init>(Lmiui/animation/physics/FlingAnimation$1;)V

    iput-object p1, p0, Lmiui/animation/physics/FlingAnimation;->mFlingForce:Lmiui/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {p0}, Lmiui/animation/physics/DynamicAnimation;->getValueThreshold()F

    move-result p0

    invoke-virtual {p1, p0}, Lmiui/animation/physics/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method

.method public constructor <init>(Lmiui/animation/property/FloatValueHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Lmiui/animation/physics/DynamicAnimation;-><init>(Lmiui/animation/property/FloatValueHolder;)V

    new-instance p1, Lmiui/animation/physics/FlingAnimation$DragForce;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lmiui/animation/physics/FlingAnimation$DragForce;-><init>(Lmiui/animation/physics/FlingAnimation$1;)V

    iput-object p1, p0, Lmiui/animation/physics/FlingAnimation;->mFlingForce:Lmiui/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {p0}, Lmiui/animation/physics/DynamicAnimation;->getValueThreshold()F

    move-result p0

    invoke-virtual {p1, p0}, Lmiui/animation/physics/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method


# virtual methods
.method getAcceleration(FF)F
    .locals 0

    iget-object p0, p0, Lmiui/animation/physics/FlingAnimation;->mFlingForce:Lmiui/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {p0, p1, p2}, Lmiui/animation/physics/FlingAnimation$DragForce;->getAcceleration(FF)F

    move-result p0

    return p0
.end method

.method public getFriction()F
    .locals 0

    iget-object p0, p0, Lmiui/animation/physics/FlingAnimation;->mFlingForce:Lmiui/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {p0}, Lmiui/animation/physics/FlingAnimation$DragForce;->getFrictionScalar()F

    move-result p0

    return p0
.end method

.method isAtEquilibrium(FF)Z
    .locals 1

    iget v0, p0, Lmiui/animation/physics/DynamicAnimation;->mMaxValue:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lmiui/animation/physics/DynamicAnimation;->mMinValue:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lmiui/animation/physics/FlingAnimation;->mFlingForce:Lmiui/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {p0, p1, p2}, Lmiui/animation/physics/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setFriction(F)Lmiui/animation/physics/FlingAnimation;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lmiui/animation/physics/FlingAnimation;->mFlingForce:Lmiui/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Lmiui/animation/physics/FlingAnimation$DragForce;->setFrictionScalar(F)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Friction must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic setMaxValue(F)Lmiui/animation/physics/DynamicAnimation;
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/animation/physics/FlingAnimation;->setMaxValue(F)Lmiui/animation/physics/FlingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public setMaxValue(F)Lmiui/animation/physics/FlingAnimation;
    .locals 0

    invoke-super {p0, p1}, Lmiui/animation/physics/DynamicAnimation;->setMaxValue(F)Lmiui/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setMinValue(F)Lmiui/animation/physics/DynamicAnimation;
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/animation/physics/FlingAnimation;->setMinValue(F)Lmiui/animation/physics/FlingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public setMinValue(F)Lmiui/animation/physics/FlingAnimation;
    .locals 0

    invoke-super {p0, p1}, Lmiui/animation/physics/DynamicAnimation;->setMinValue(F)Lmiui/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setStartVelocity(F)Lmiui/animation/physics/DynamicAnimation;
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/animation/physics/FlingAnimation;->setStartVelocity(F)Lmiui/animation/physics/FlingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public setStartVelocity(F)Lmiui/animation/physics/FlingAnimation;
    .locals 0

    invoke-super {p0, p1}, Lmiui/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiui/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method setValueThreshold(F)V
    .locals 0

    iget-object p0, p0, Lmiui/animation/physics/FlingAnimation;->mFlingForce:Lmiui/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {p0, p1}, Lmiui/animation/physics/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method

.method updateValueAndVelocity(J)Z
    .locals 3

    iget-object v0, p0, Lmiui/animation/physics/FlingAnimation;->mFlingForce:Lmiui/animation/physics/FlingAnimation$DragForce;

    iget v1, p0, Lmiui/animation/physics/DynamicAnimation;->mValue:F

    iget v2, p0, Lmiui/animation/physics/DynamicAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v2, p1, p2}, Lmiui/animation/physics/FlingAnimation$DragForce;->updateValueAndVelocity(FFJ)Lmiui/animation/physics/DynamicAnimation$MassState;

    move-result-object p1

    iget p2, p1, Lmiui/animation/physics/DynamicAnimation$MassState;->mValue:F

    iput p2, p0, Lmiui/animation/physics/DynamicAnimation;->mValue:F

    iget p1, p1, Lmiui/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    iput p1, p0, Lmiui/animation/physics/DynamicAnimation;->mVelocity:F

    iget v0, p0, Lmiui/animation/physics/DynamicAnimation;->mMinValue:F

    cmpg-float v1, p2, v0

    const/4 v2, 0x1

    if-gez v1, :cond_0

    iput v0, p0, Lmiui/animation/physics/DynamicAnimation;->mValue:F

    return v2

    :cond_0
    iget v0, p0, Lmiui/animation/physics/DynamicAnimation;->mMaxValue:F

    cmpl-float v1, p2, v0

    if-lez v1, :cond_1

    iput v0, p0, Lmiui/animation/physics/DynamicAnimation;->mValue:F

    return v2

    :cond_1
    invoke-virtual {p0, p2, p1}, Lmiui/animation/physics/FlingAnimation;->isAtEquilibrium(FF)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
