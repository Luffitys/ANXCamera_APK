.class public final Lmiui/animation/physics/FlingAnimation;
.super Lmiui/animation/physics/DynamicAnimation;
.source "FlingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/physics/FlingAnimation$DragForce;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/physics/DynamicAnimation<",
        "Lmiui/animation/physics/FlingAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFlingForce:Lmiui/animation/physics/FlingAnimation$DragForce;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lmiui/animation/property/FloatProperty<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lmiui/animation/physics/DynamicAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)V

    new-instance v0, Lmiui/animation/physics/FlingAnimation$DragForce;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/animation/physics/FlingAnimation$DragForce;-><init>(Lmiui/animation/physics/FlingAnimation$1;)V

    iput-object v0, p0, Lmiui/animation/physics/FlingAnimation;->mFlingForce:Lmiui/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {p0}, Lmiui/animation/physics/FlingAnimation;->getValueThreshold()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/animation/physics/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method

.method public constructor <init>(Lmiui/animation/property/FloatValueHolder;)V
    .registers 4

    invoke-direct {p0, p1}, Lmiui/animation/physics/DynamicAnimation;-><init>(Lmiui/animation/property/FloatValueHolder;)V

    new-instance v0, Lmiui/animation/physics/FlingAnimation$DragForce;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/animation/physics/FlingAnimation$DragForce;-><init>(Lmiui/animation/physics/FlingAnimation$1;)V

    iput-object v0, p0, Lmiui/animation/physics/FlingAnimation;->mFlingForce:Lmiui/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {p0}, Lmiui/animation/physics/FlingAnimation;->getValueThreshold()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/animation/physics/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method


# virtual methods
.method getAcceleration(FF)F
    .registers 4

    iget-object v0, p0, Lmiui/animation/physics/FlingAnimation;->mFlingForce:Lmiui/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {v0, p1, p2}, Lmiui/animation/physics/FlingAnimation$DragForce;->getAcceleration(FF)F

    move-result v0

    return v0
.end method

.method public getFriction()F
    .registers 2

    iget-object v0, p0, Lmiui/animation/physics/FlingAnimation;->mFlingForce:Lmiui/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {v0}, Lmiui/animation/physics/FlingAnimation$DragForce;->getFrictionScalar()F

    move-result v0

    return v0
.end method

.method isAtEquilibrium(FF)Z
    .registers 4

    iget v0, p0, Lmiui/animation/physics/FlingAnimation;->mMaxValue:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_17

    iget v0, p0, Lmiui/animation/physics/FlingAnimation;->mMinValue:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lmiui/animation/physics/FlingAnimation;->mFlingForce:Lmiui/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {v0, p1, p2}, Lmiui/animation/physics/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public setFriction(F)Lmiui/animation/physics/FlingAnimation;
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lmiui/animation/physics/FlingAnimation;->mFlingForce:Lmiui/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Lmiui/animation/physics/FlingAnimation$DragForce;->setFrictionScalar(F)V

    return-object p0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Friction must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setMaxValue(F)Lmiui/animation/physics/DynamicAnimation;
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/animation/physics/FlingAnimation;->setMaxValue(F)Lmiui/animation/physics/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setMaxValue(F)Lmiui/animation/physics/FlingAnimation;
    .registers 2

    invoke-super {p0, p1}, Lmiui/animation/physics/DynamicAnimation;->setMaxValue(F)Lmiui/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setMinValue(F)Lmiui/animation/physics/DynamicAnimation;
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/animation/physics/FlingAnimation;->setMinValue(F)Lmiui/animation/physics/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setMinValue(F)Lmiui/animation/physics/FlingAnimation;
    .registers 2

    invoke-super {p0, p1}, Lmiui/animation/physics/DynamicAnimation;->setMinValue(F)Lmiui/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setStartVelocity(F)Lmiui/animation/physics/DynamicAnimation;
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/animation/physics/FlingAnimation;->setStartVelocity(F)Lmiui/animation/physics/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setStartVelocity(F)Lmiui/animation/physics/FlingAnimation;
    .registers 2

    invoke-super {p0, p1}, Lmiui/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiui/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method setValueThreshold(F)V
    .registers 3

    iget-object v0, p0, Lmiui/animation/physics/FlingAnimation;->mFlingForce:Lmiui/animation/physics/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Lmiui/animation/physics/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method

.method updateValueAndVelocity(J)Z
    .registers 7

    iget-object v0, p0, Lmiui/animation/physics/FlingAnimation;->mFlingForce:Lmiui/animation/physics/FlingAnimation$DragForce;

    iget v1, p0, Lmiui/animation/physics/FlingAnimation;->mValue:F

    iget v2, p0, Lmiui/animation/physics/FlingAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v2, p1, p2}, Lmiui/animation/physics/FlingAnimation$DragForce;->updateValueAndVelocity(FFJ)Lmiui/animation/physics/DynamicAnimation$MassState;

    move-result-object v0

    iget v1, v0, Lmiui/animation/physics/DynamicAnimation$MassState;->mValue:F

    iput v1, p0, Lmiui/animation/physics/FlingAnimation;->mValue:F

    iget v1, v0, Lmiui/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    iput v1, p0, Lmiui/animation/physics/FlingAnimation;->mVelocity:F

    iget v1, p0, Lmiui/animation/physics/FlingAnimation;->mValue:F

    iget v2, p0, Lmiui/animation/physics/FlingAnimation;->mMinValue:F

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-gez v1, :cond_20

    iget v1, p0, Lmiui/animation/physics/FlingAnimation;->mMinValue:F

    iput v1, p0, Lmiui/animation/physics/FlingAnimation;->mValue:F

    return v2

    :cond_20
    iget v1, p0, Lmiui/animation/physics/FlingAnimation;->mValue:F

    iget v3, p0, Lmiui/animation/physics/FlingAnimation;->mMaxValue:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2d

    iget v1, p0, Lmiui/animation/physics/FlingAnimation;->mMaxValue:F

    iput v1, p0, Lmiui/animation/physics/FlingAnimation;->mValue:F

    return v2

    :cond_2d
    iget v1, p0, Lmiui/animation/physics/FlingAnimation;->mValue:F

    iget v3, p0, Lmiui/animation/physics/FlingAnimation;->mVelocity:F

    invoke-virtual {p0, v1, v3}, Lmiui/animation/physics/FlingAnimation;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_38

    return v2

    :cond_38
    const/4 v1, 0x0

    return v1
.end method
