.class final Lmiui/animation/physics/FlingAnimation$DragForce;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/animation/physics/Force;


# static fields
.field private static final DEFAULT_FRICTION:F = -4.2f

.field private static final VELOCITY_THRESHOLD_MULTIPLIER:F = 62.5f


# instance fields
.field private mFriction:F

.field private final mMassState:Lmiui/animation/physics/DynamicAnimation$MassState;

.field private mVelocityThreshold:F


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x3f79999a    # -4.2f

    iput v0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mFriction:F

    new-instance v0, Lmiui/animation/physics/DynamicAnimation$MassState;

    invoke-direct {v0}, Lmiui/animation/physics/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiui/animation/physics/DynamicAnimation$MassState;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/animation/physics/FlingAnimation$1;)V
    .locals 0

    invoke-direct {p0}, Lmiui/animation/physics/FlingAnimation$DragForce;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcceleration(FF)F
    .locals 0

    iget p0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mFriction:F

    mul-float/2addr p2, p0

    return p2
.end method

.method getFrictionScalar()F
    .locals 1

    iget p0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mFriction:F

    const v0, -0x3f79999a    # -4.2f

    div-float/2addr p0, v0

    return p0
.end method

.method public isAtEquilibrium(FF)Z
    .locals 0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mVelocityThreshold:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method setFrictionScalar(F)V
    .locals 1

    const v0, -0x3f79999a    # -4.2f

    mul-float/2addr p1, v0

    iput p1, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mFriction:F

    return-void
.end method

.method setValueThreshold(F)V
    .locals 1

    const/high16 v0, 0x427a0000    # 62.5f

    mul-float/2addr p1, v0

    iput p1, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mVelocityThreshold:F

    return-void
.end method

.method updateValueAndVelocity(FFJ)Lmiui/animation/physics/DynamicAnimation$MassState;
    .locals 5

    iget-object v0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiui/animation/physics/DynamicAnimation$MassState;

    float-to-double v1, p2

    long-to-float p3, p3

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float v3, p3, p4

    iget v4, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mFriction:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lmiui/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    iget-object v0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiui/animation/physics/DynamicAnimation$MassState;

    iget v1, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mFriction:F

    div-float v2, p2, v1

    sub-float/2addr p1, v2

    float-to-double v2, p1

    div-float/2addr p2, v1

    float-to-double p1, p2

    mul-float/2addr v1, p3

    div-float/2addr v1, p4

    float-to-double p3, v1

    invoke-static {p3, p4}, Ljava/lang/Math;->exp(D)D

    move-result-wide p3

    mul-double/2addr p1, p3

    add-double/2addr v2, p1

    double-to-float p1, v2

    iput p1, v0, Lmiui/animation/physics/DynamicAnimation$MassState;->mValue:F

    iget-object p1, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiui/animation/physics/DynamicAnimation$MassState;

    iget p2, p1, Lmiui/animation/physics/DynamicAnimation$MassState;->mValue:F

    iget p1, p1, Lmiui/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    invoke-virtual {p0, p2, p1}, Lmiui/animation/physics/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiui/animation/physics/DynamicAnimation$MassState;

    const/4 p2, 0x0

    iput p2, p1, Lmiui/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    :cond_0
    iget-object p0, p0, Lmiui/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiui/animation/physics/DynamicAnimation$MassState;

    return-object p0
.end method
