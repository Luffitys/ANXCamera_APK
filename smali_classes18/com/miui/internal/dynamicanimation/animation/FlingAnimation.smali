.class public final Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;
.super Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
.source "FlingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<",
        "Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;


# direct methods
.method public constructor <init>(Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-direct {v0}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {p0}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->getValueThreshold()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-direct {v0}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {p0}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->getValueThreshold()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method

.method private predictTimeWithVelocity(F)F
    .registers 6

    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    div-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    # getter for: Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F
    invoke-static {v2}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->access$000(Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method getAcceleration(FF)F
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->getAcceleration(FF)F

    move-result v0

    return v0
.end method

.method public getFriction()F
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->getFrictionScalar()F

    move-result v0

    return v0
.end method

.method isAtEquilibrium(FF)Z
    .registers 4

    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_17

    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

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

.method public predictDuration()F
    .registers 3

    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    # getter for: Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F
    invoke-static {v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->access$100(Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->predictTimeWithVelocity(F)F

    move-result v0

    return v0
.end method

.method public predictNaturalDest()F
    .registers 6

    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget v2, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v3, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    iget-object v4, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    # getter for: Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F
    invoke-static {v4}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->access$000(Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    move-result v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    # getter for: Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F
    invoke-static {v3}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->access$100(Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    move-result v3

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    # getter for: Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F
    invoke-static {v4}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->access$000(Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    return v2
.end method

.method public predictTimeTo(F)F
    .registers 5

    iget v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    iget-object v2, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    # getter for: Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F
    invoke-static {v2}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->access$000(Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    # getter for: Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F
    invoke-static {v1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->access$000(Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->predictTimeWithVelocity(F)F

    move-result v1

    return v1
.end method

.method public setFriction(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->setFrictionScalar(F)V

    return-object p0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Friction must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setMaxValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setMaxValue(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;
    .registers 2

    invoke-super {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setMinValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setMinValue(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;
    .registers 2

    invoke-super {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setStartVelocity(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p1

    return-object p1
.end method

.method public setStartVelocity(F)Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;
    .registers 2

    invoke-super {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method setValueThreshold(F)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-virtual {v0, p1}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method

.method updateValueAndVelocity(J)Z
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v2, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation$DragForce;->updateValueAndVelocity(FFJ)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v0

    iget v1, v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v1, v0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v2, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-gez v1, :cond_20

    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mMinValue:F

    iput v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    return v2

    :cond_20
    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v3, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2d

    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mMaxValue:F

    iput v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    return v2

    :cond_2d
    iget v1, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mValue:F

    iget v3, p0, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->mVelocity:F

    invoke-virtual {p0, v1, v3}, Lcom/miui/internal/dynamicanimation/animation/FlingAnimation;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_38

    return v2

    :cond_38
    const/4 v1, 0x0

    return v1
.end method
