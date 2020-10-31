.class final Lmiui/animation/physics/FlingAnimation$DragForce;
.super Ljava/lang/Object;
.source "FlingAnimation.java"

# interfaces
.implements Lmiui/animation/physics/Force;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/physics/FlingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DragForce"
.end annotation


# static fields
.field private static final DEFAULT_FRICTION:F = -4.2f

.field private static final VELOCITY_THRESHOLD_MULTIPLIER:F = 62.5f


# instance fields
.field private mFriction:F

.field private final mMassState:Lmiui/animation/physics/DynamicAnimation$MassState;

.field private mVelocityThreshold:F


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x3f79999a    # -4.2f

    iput v0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mFriction:F

    new-instance v0, Lmiui/animation/physics/DynamicAnimation$MassState;

    invoke-direct {v0}, Lmiui/animation/physics/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiui/animation/physics/DynamicAnimation$MassState;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/animation/physics/FlingAnimation$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/animation/physics/FlingAnimation$DragForce;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcceleration(FF)F
    .registers 4

    iget v0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mFriction:F

    mul-float/2addr v0, p2

    return v0
.end method

.method getFrictionScalar()F
    .registers 3

    iget v0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mFriction:F

    const v1, -0x3f79999a    # -4.2f

    div-float/2addr v0, v1

    return v0
.end method

.method public isAtEquilibrium(FF)Z
    .registers 5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mVelocityThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method setFrictionScalar(F)V
    .registers 3

    const v0, -0x3f79999a    # -4.2f

    mul-float/2addr v0, p1

    iput v0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mFriction:F

    return-void
.end method

.method setValueThreshold(F)V
    .registers 3

    const/high16 v0, 0x427a0000    # 62.5f

    mul-float/2addr v0, p1

    iput v0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mVelocityThreshold:F

    return-void
.end method

.method updateValueAndVelocity(FFJ)Lmiui/animation/physics/DynamicAnimation$MassState;
    .registers 14

    iget-object v0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiui/animation/physics/DynamicAnimation$MassState;

    float-to-double v1, p2

    long-to-float v3, p3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    iget v5, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mFriction:F

    mul-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    mul-double/2addr v1, v5

    double-to-float v1, v1

    iput v1, v0, Lmiui/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    iget-object v0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiui/animation/physics/DynamicAnimation$MassState;

    iget v1, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mFriction:F

    div-float v2, p2, v1

    sub-float v2, p1, v2

    float-to-double v2, v2

    div-float v5, p2, v1

    float-to-double v5, v5

    long-to-float v7, p3

    mul-float/2addr v1, v7

    div-float/2addr v1, v4

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v2, v5

    double-to-float v1, v2

    iput v1, v0, Lmiui/animation/physics/DynamicAnimation$MassState;->mValue:F

    iget-object v0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiui/animation/physics/DynamicAnimation$MassState;

    iget v0, v0, Lmiui/animation/physics/DynamicAnimation$MassState;->mValue:F

    iget-object v1, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiui/animation/physics/DynamicAnimation$MassState;

    iget v1, v1, Lmiui/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    invoke-virtual {p0, v0, v1}, Lmiui/animation/physics/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiui/animation/physics/DynamicAnimation$MassState;

    const/4 v1, 0x0

    iput v1, v0, Lmiui/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    :cond_3f
    iget-object v0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiui/animation/physics/DynamicAnimation$MassState;

    return-object v0
.end method
