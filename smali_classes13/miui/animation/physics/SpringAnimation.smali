.class public final Lmiui/animation/physics/SpringAnimation;
.super Lmiui/animation/physics/DynamicAnimation;
.source "SpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/physics/DynamicAnimation<",
        "Lmiui/animation/physics/SpringAnimation;",
        ">;"
    }
.end annotation


# static fields
.field private static final UNSET:F = 3.4028235E38f


# instance fields
.field private mEndRequested:Z

.field private mPendingPosition:F

.field private mSpring:Lmiui/animation/physics/SpringForce;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)V
    .registers 4
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

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/animation/physics/SpringAnimation;->mPendingPosition:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/animation/physics/SpringAnimation;->mEndRequested:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lmiui/animation/property/FloatProperty<",
            "TK;>;F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lmiui/animation/physics/DynamicAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/animation/physics/SpringAnimation;->mPendingPosition:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/animation/physics/SpringAnimation;->mEndRequested:Z

    new-instance v0, Lmiui/animation/physics/SpringForce;

    invoke-direct {v0, p3}, Lmiui/animation/physics/SpringForce;-><init>(F)V

    iput-object v0, p0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    return-void
.end method

.method public constructor <init>(Lmiui/animation/property/FloatValueHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/animation/physics/DynamicAnimation;-><init>(Lmiui/animation/property/FloatValueHolder;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/animation/physics/SpringAnimation;->mPendingPosition:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/animation/physics/SpringAnimation;->mEndRequested:Z

    return-void
.end method

.method private sanityCheck()V
    .registers 5

    iget-object v0, p0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lmiui/animation/physics/SpringForce;->getFinalPosition()F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Lmiui/animation/physics/SpringAnimation;->mMaxValue:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_20

    iget v2, p0, Lmiui/animation/physics/SpringAnimation;->mMinValue:F

    float-to-double v2, v2

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_18

    return-void

    :cond_18
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Final position of the spring cannot be less than the min value."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_20
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Final position of the spring cannot be greater than the max value."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public animateToFinalPosition(F)V
    .registers 3

    invoke-virtual {p0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    iput p1, p0, Lmiui/animation/physics/SpringAnimation;->mPendingPosition:F

    goto :goto_1c

    :cond_9
    iget-object v0, p0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    if-nez v0, :cond_14

    new-instance v0, Lmiui/animation/physics/SpringForce;

    invoke-direct {v0, p1}, Lmiui/animation/physics/SpringForce;-><init>(F)V

    iput-object v0, p0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    :cond_14
    iget-object v0, p0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    invoke-virtual {v0, p1}, Lmiui/animation/physics/SpringForce;->setFinalPosition(F)Lmiui/animation/physics/SpringForce;

    invoke-virtual {p0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :goto_1c
    return-void
.end method

.method public canSkipToEnd()Z
    .registers 5

    iget-object v0, p0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    iget-wide v0, v0, Lmiui/animation/physics/SpringForce;->mDampingRatio:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method getAcceleration(FF)F
    .registers 4

    iget-object v0, p0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    invoke-virtual {v0, p1, p2}, Lmiui/animation/physics/SpringForce;->getAcceleration(FF)F

    move-result v0

    return v0
.end method

.method public getSpring()Lmiui/animation/physics/SpringForce;
    .registers 2

    iget-object v0, p0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    return-object v0
.end method

.method isAtEquilibrium(FF)Z
    .registers 4

    iget-object v0, p0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    invoke-virtual {v0, p1, p2}, Lmiui/animation/physics/SpringForce;->isAtEquilibrium(FF)Z

    move-result v0

    return v0
.end method

.method public setSpring(Lmiui/animation/physics/SpringForce;)Lmiui/animation/physics/SpringAnimation;
    .registers 2

    iput-object p1, p0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    return-object p0
.end method

.method setValueThreshold(F)V
    .registers 2

    return-void
.end method

.method public skipToEnd()V
    .registers 3

    invoke-virtual {p0}, Lmiui/animation/physics/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_18

    iget-boolean v0, p0, Lmiui/animation/physics/SpringAnimation;->mRunning:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/animation/physics/SpringAnimation;->mEndRequested:Z

    :cond_17
    return-void

    :cond_18
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Spring animations can only come to an end when there is damping"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .registers 4

    invoke-direct {p0}, Lmiui/animation/physics/SpringAnimation;->sanityCheck()V

    iget-object v0, p0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    invoke-virtual {p0}, Lmiui/animation/physics/SpringAnimation;->getValueThreshold()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/animation/physics/SpringForce;->setValueThreshold(D)V

    invoke-super {p0}, Lmiui/animation/physics/DynamicAnimation;->start()V

    return-void
.end method

.method updateValueAndVelocity(J)Z
    .registers 22

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmiui/animation/physics/SpringAnimation;->mEndRequested:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_26

    iget v1, v0, Lmiui/animation/physics/SpringAnimation;->mPendingPosition:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_19

    iget-object v3, v0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    invoke-virtual {v3, v1}, Lmiui/animation/physics/SpringForce;->setFinalPosition(F)Lmiui/animation/physics/SpringForce;

    iput v2, v0, Lmiui/animation/physics/SpringAnimation;->mPendingPosition:F

    :cond_19
    iget-object v1, v0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    invoke-virtual {v1}, Lmiui/animation/physics/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Lmiui/animation/physics/SpringAnimation;->mValue:F

    iput v10, v0, Lmiui/animation/physics/SpringAnimation;->mVelocity:F

    iput-boolean v9, v0, Lmiui/animation/physics/SpringAnimation;->mEndRequested:Z

    return v8

    :cond_26
    iget v1, v0, Lmiui/animation/physics/SpringAnimation;->mPendingPosition:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_64

    iget-object v1, v0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    invoke-virtual {v1}, Lmiui/animation/physics/SpringForce;->getFinalPosition()F

    move-result v1

    float-to-double v3, v1

    iget-object v11, v0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    iget v1, v0, Lmiui/animation/physics/SpringAnimation;->mValue:F

    float-to-double v12, v1

    iget v1, v0, Lmiui/animation/physics/SpringAnimation;->mVelocity:F

    float-to-double v14, v1

    const-wide/16 v5, 0x2

    div-long v16, p1, v5

    invoke-virtual/range {v11 .. v17}, Lmiui/animation/physics/SpringForce;->updateValues(DDJ)Lmiui/animation/physics/DynamicAnimation$MassState;

    move-result-object v1

    iget-object v7, v0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    iget v11, v0, Lmiui/animation/physics/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v7, v11}, Lmiui/animation/physics/SpringForce;->setFinalPosition(F)Lmiui/animation/physics/SpringForce;

    iput v2, v0, Lmiui/animation/physics/SpringAnimation;->mPendingPosition:F

    iget-object v12, v0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    iget v2, v1, Lmiui/animation/physics/DynamicAnimation$MassState;->mValue:F

    float-to-double v13, v2

    iget v2, v1, Lmiui/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    float-to-double v8, v2

    div-long v17, p1, v5

    move-wide v15, v8

    invoke-virtual/range {v12 .. v18}, Lmiui/animation/physics/SpringForce;->updateValues(DDJ)Lmiui/animation/physics/DynamicAnimation$MassState;

    move-result-object v1

    iget v2, v1, Lmiui/animation/physics/DynamicAnimation$MassState;->mValue:F

    iput v2, v0, Lmiui/animation/physics/SpringAnimation;->mValue:F

    iget v2, v1, Lmiui/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    iput v2, v0, Lmiui/animation/physics/SpringAnimation;->mVelocity:F

    goto :goto_7a

    :cond_64
    iget-object v1, v0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    iget v2, v0, Lmiui/animation/physics/SpringAnimation;->mValue:F

    float-to-double v2, v2

    iget v4, v0, Lmiui/animation/physics/SpringAnimation;->mVelocity:F

    float-to-double v4, v4

    move-wide/from16 v6, p1

    invoke-virtual/range {v1 .. v7}, Lmiui/animation/physics/SpringForce;->updateValues(DDJ)Lmiui/animation/physics/DynamicAnimation$MassState;

    move-result-object v1

    iget v2, v1, Lmiui/animation/physics/DynamicAnimation$MassState;->mValue:F

    iput v2, v0, Lmiui/animation/physics/SpringAnimation;->mValue:F

    iget v2, v1, Lmiui/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    iput v2, v0, Lmiui/animation/physics/SpringAnimation;->mVelocity:F

    :goto_7a
    iget v1, v0, Lmiui/animation/physics/SpringAnimation;->mValue:F

    iget v2, v0, Lmiui/animation/physics/SpringAnimation;->mMinValue:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lmiui/animation/physics/SpringAnimation;->mValue:F

    iget v1, v0, Lmiui/animation/physics/SpringAnimation;->mValue:F

    iget v2, v0, Lmiui/animation/physics/SpringAnimation;->mMaxValue:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lmiui/animation/physics/SpringAnimation;->mValue:F

    iget v1, v0, Lmiui/animation/physics/SpringAnimation;->mValue:F

    iget v2, v0, Lmiui/animation/physics/SpringAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v2}, Lmiui/animation/physics/SpringAnimation;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_a4

    iget-object v1, v0, Lmiui/animation/physics/SpringAnimation;->mSpring:Lmiui/animation/physics/SpringForce;

    invoke-virtual {v1}, Lmiui/animation/physics/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Lmiui/animation/physics/SpringAnimation;->mValue:F

    iput v10, v0, Lmiui/animation/physics/SpringAnimation;->mVelocity:F

    const/4 v1, 0x1

    return v1

    :cond_a4
    const/4 v1, 0x0

    return v1
.end method
