.class public Lmiui/animation/physics/EquilibriumChecker;
.super Ljava/lang/Object;
.source "EquilibriumChecker.java"


# static fields
.field public static final MIN_VISIBLE_CHANGE_ALPHA:F = 0.00390625f

.field public static final MIN_VISIBLE_CHANGE_PIXELS:F = 1.0f

.field public static final MIN_VISIBLE_CHANGE_ROTATION_DEGREES:F = 0.1f

.field public static final MIN_VISIBLE_CHANGE_SCALE:F = 0.002f

.field private static final THRESHOLD_MULTIPLIER:F = 0.75f

.field private static final VELOCITY_THRESHOLD_MULTIPLIER:F = 16.666666f


# instance fields
.field private mTargetValue:D

.field private mValueThreshold:F

.field private mVelocityThreshold:F


# direct methods
.method public constructor <init>(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lmiui/animation/physics/EquilibriumChecker;->mTargetValue:D

    invoke-virtual {p1, p2}, Lmiui/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/animation/physics/EquilibriumChecker;->mValueThreshold:F

    const v1, 0x41855555

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/animation/physics/EquilibriumChecker;->mVelocityThreshold:F

    return-void
.end method

.method private isAt(DD)Z
    .registers 9

    iget-wide v0, p0, Lmiui/animation/physics/EquilibriumChecker;->mTargetValue:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1f

    sub-double v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget v2, p0, Lmiui/animation/physics/EquilibriumChecker;->mValueThreshold:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    return v0
.end method


# virtual methods
.method public isAtEquilibrium(DD)Z
    .registers 9

    iget-wide v0, p0, Lmiui/animation/physics/EquilibriumChecker;->mTargetValue:D

    invoke-direct {p0, p1, p2, v0, v1}, Lmiui/animation/physics/EquilibriumChecker;->isAt(DD)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget v2, p0, Lmiui/animation/physics/EquilibriumChecker;->mVelocityThreshold:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public setTargetValue(D)V
    .registers 3

    iput-wide p1, p0, Lmiui/animation/physics/EquilibriumChecker;->mTargetValue:D

    return-void
.end method
