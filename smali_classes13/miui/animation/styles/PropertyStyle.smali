.class public Lmiui/animation/styles/PropertyStyle;
.super Ljava/lang/Object;
.source "PropertyStyle.java"


# static fields
.field private static final DIFF_RATIO_THRESHOLD:I = 0x3


# instance fields
.field private mConfig:Lmiui/animation/base/AnimConfigLink;

.field private mDuration:J

.field mEquilibrium:Lmiui/animation/physics/EquilibriumChecker;

.field private mFrameCount:I

.field mIntValues:[I

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mIsRunning:Z

.field private mPhyOperator:Lmiui/animation/physics/PhysicsOperator;

.field mProperty:Lmiui/animation/property/FloatProperty;

.field mTarget:Lmiui/animation/IAnimTarget;

.field mToTag:Ljava/lang/Object;

.field private mTotalTime:J

.field mUseIntValue:Z

.field private mVV:[D

.field mValues:[F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mValues:[F

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mIntValues:[I

    const/4 v0, 0x2

    new-array v0, v0, [D

    fill-array-data v0, :array_1e

    iput-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    iput-object p1, p0, Lmiui/animation/styles/PropertyStyle;->mToTag:Ljava/lang/Object;

    iput-object p2, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    instance-of v0, p2, Lmiui/animation/property/IIntValueProperty;

    iput-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mUseIntValue:Z

    return-void

    nop

    :array_1e
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private applyDelayedAnimConfig(FD)V
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    const/4 v2, 0x0

    aget-wide v9, v1, v2

    const/4 v11, 0x1

    aget-wide v12, v1, v11

    move/from16 v14, p1

    move-wide/from16 v7, p2

    invoke-direct {v0, v1, v14, v7, v8}, Lmiui/animation/styles/PropertyStyle;->doPhysicsCalculation([DFD)V

    iget-object v3, v0, Lmiui/animation/styles/PropertyStyle;->mConfig:Lmiui/animation/base/AnimConfigLink;

    iget-object v4, v0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    iget-object v1, v0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    aget-wide v15, v1, v2

    move-wide v5, v9

    move-wide v7, v15

    invoke-virtual/range {v3 .. v8}, Lmiui/animation/base/AnimConfigLink;->getEaseEffectFromValue(Lmiui/animation/property/FloatProperty;DD)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-direct {v0, v1}, Lmiui/animation/styles/PropertyStyle;->setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)V

    :cond_24
    iget-object v3, v0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    aput-wide v9, v3, v2

    aput-wide v12, v3, v11

    return-void
.end method

.method private createPhyOperator(Lmiui/animation/utils/EaseManager$EaseStyle;)Lmiui/animation/physics/PhysicsOperator;
    .registers 6

    invoke-direct {p0, p1}, Lmiui/animation/styles/PropertyStyle;->getFactors(Lmiui/animation/utils/EaseManager$EaseStyle;)[F

    move-result-object v0

    iget v1, p1, Lmiui/animation/utils/EaseManager$EaseStyle;->style:I

    const/4 v2, -0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_25

    const/4 v2, -0x3

    if-eq v1, v2, :cond_1d

    const/4 v2, -0x2

    if-eq v1, v2, :cond_12

    const/4 v1, 0x0

    return-object v1

    :cond_12
    new-instance v1, Lmiui/animation/physics/SpringOperator;

    aget v2, v0, v3

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Lmiui/animation/physics/SpringOperator;-><init>(FF)V

    return-object v1

    :cond_1d
    new-instance v1, Lmiui/animation/physics/AccelerateOperator;

    aget v2, v0, v3

    invoke-direct {v1, v2}, Lmiui/animation/physics/AccelerateOperator;-><init>(F)V

    return-object v1

    :cond_25
    new-instance v1, Lmiui/animation/physics/FrictionOperator;

    aget v2, v0, v3

    invoke-direct {v1, v2}, Lmiui/animation/physics/FrictionOperator;-><init>(F)V

    return-object v1
.end method

.method private doFinishProcess()V
    .registers 15

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mPhyOperator:Lmiui/animation/physics/PhysicsOperator;

    instance-of v0, v0, Lmiui/animation/physics/SpringOperator;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->setFinishVV()V

    return-void

    :cond_a
    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->getTargetDoubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    invoke-direct {p0, v0, v1, v4, v5}, Lmiui/animation/styles/PropertyStyle;->getDiff(DD)D

    move-result-wide v4

    iget-object v2, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v6, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v2, v6}, Lmiui/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result v2

    float-to-double v6, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    cmpg-double v2, v8, v10

    const/4 v10, 0x1

    if-gez v2, :cond_af

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_ab

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v11, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    aput-object v11, v2, v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ratio = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    const/4 v10, 0x2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "targetValue = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    const/4 v10, 0x3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    aget-wide v12, v12, v3

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "diff = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v3

    const/4 v3, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "frameCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lmiui/animation/styles/PropertyStyle;->mFrameCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v3

    const-string v3, "doFinishProcess"

    invoke-static {v3, v2}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_ab
    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->setFinishVV()V

    goto :goto_c3

    :cond_af
    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_bc

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "doFinishProcess, start spring back"

    invoke-static {v3, v2}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_bc
    sget-object v2, Lmiui/animation/utils/CommonUtils;->sDefEase:Lmiui/animation/utils/EaseManager$EaseStyle;

    invoke-direct {p0, v2}, Lmiui/animation/styles/PropertyStyle;->setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)V

    iput-boolean v10, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    :goto_c3
    return-void
.end method

.method private doPhysicsCalculation([DFD)V
    .registers 15

    invoke-virtual {p0, p3, p4}, Lmiui/animation/styles/PropertyStyle;->processTargetValue(D)D

    move-result-wide v0

    const/4 v2, 0x0

    aget-wide v3, p1, v2

    invoke-virtual {p0, v3, v4}, Lmiui/animation/styles/PropertyStyle;->processCurrentValue(D)D

    move-result-wide v3

    iget-object v5, p0, Lmiui/animation/styles/PropertyStyle;->mPhyOperator:Lmiui/animation/physics/PhysicsOperator;

    const/4 v6, 0x1

    aget-wide v7, p1, v6

    const/4 v9, 0x2

    new-array v9, v9, [D

    aput-wide v0, v9, v2

    aput-wide v3, v9, v6

    invoke-interface {v5, v7, v8, p2, v9}, Lmiui/animation/physics/PhysicsOperator;->updateVelocity(DF[D)D

    move-result-wide v7

    aput-wide v7, p1, v6

    aget-wide v5, p1, v6

    float-to-double v7, p2

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lmiui/animation/styles/PropertyStyle;->toAnimValue(D)D

    move-result-wide v5

    aput-wide v5, p1, v2

    return-void
.end method

.method private getDiff(DD)D
    .registers 11

    invoke-virtual {p0, p1, p2}, Lmiui/animation/styles/PropertyStyle;->processTargetValue(D)D

    move-result-wide v0

    invoke-virtual {p0, p3, p4}, Lmiui/animation/styles/PropertyStyle;->processCurrentValue(D)D

    move-result-wide v2

    sub-double v4, v0, v2

    return-wide v4
.end method

.method private getFactors(Lmiui/animation/utils/EaseManager$EaseStyle;)[F
    .registers 6

    iget-object v0, p1, Lmiui/animation/utils/EaseManager$EaseStyle;->factors:[F

    array-length v0, v0

    if-nez v0, :cond_33

    iget v0, p1, Lmiui/animation/utils/EaseManager$EaseStyle;->style:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_29

    const/4 v1, -0x2

    if-eq v0, v1, :cond_e

    goto :goto_33

    :cond_e
    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Lmiui/animation/IAnimTarget;->getVelocity(Lmiui/animation/property/FloatProperty;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const/4 v3, 0x2

    if-lez v2, :cond_23

    new-array v2, v3, [F

    fill-array-data v2, :array_36

    return-object v2

    :cond_23
    new-array v2, v3, [F

    fill-array-data v2, :array_3e

    return-object v2

    :cond_29
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const v2, 0x3ef3cf3e

    aput v2, v0, v1

    return-object v0

    :cond_33
    :goto_33
    iget-object v0, p1, Lmiui/animation/utils/EaseManager$EaseStyle;->factors:[F

    return-object v0

    :array_36
    .array-data 4
        0x3f266666    # 0.65f
        0x3eb33333    # 0.35f
    .end array-data

    :array_3e
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method private getTargetDoubleValue()D
    .registers 3

    iget-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mUseIntValue:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->getTargetIntValue()I

    move-result v0

    int-to-double v0, v0

    goto :goto_f

    :cond_a
    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->getTargetValue()F

    move-result v0

    float-to-double v0, v0

    :goto_f
    return-wide v0
.end method

.method private setAnimValue(D)V
    .registers 6

    iget-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mUseIntValue:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    check-cast v1, Lmiui/animation/property/IIntValueProperty;

    double-to-int v2, p1

    invoke-virtual {v0, v1, v2}, Lmiui/animation/IAnimTarget;->setIntValue(Lmiui/animation/property/IIntValueProperty;I)V

    goto :goto_20

    :cond_f
    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Lmiui/animation/IAnimTarget;->shouldUseIntValue(Lmiui/animation/property/FloatProperty;)Z

    move-result v2

    if-eqz v2, :cond_1c

    double-to-int v2, p1

    int-to-float v2, v2

    goto :goto_1d

    :cond_1c
    double-to-float v2, p1

    :goto_1d
    invoke-virtual {v0, v1, v2}, Lmiui/animation/IAnimTarget;->setValue(Lmiui/animation/property/FloatProperty;F)V

    :goto_20
    return-void
.end method

.method private setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)V
    .registers 7

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ".setEase"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v3}, Lmiui/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ease = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_32
    iget v0, p1, Lmiui/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiui/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-direct {p0, p1}, Lmiui/animation/styles/PropertyStyle;->createPhyOperator(Lmiui/animation/utils/EaseManager$EaseStyle;)Lmiui/animation/physics/PhysicsOperator;

    move-result-object v0

    iput-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mPhyOperator:Lmiui/animation/physics/PhysicsOperator;

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mEquilibrium:Lmiui/animation/physics/EquilibriumChecker;

    if-nez v0, :cond_64

    new-instance v0, Lmiui/animation/physics/EquilibriumChecker;

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v2, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {v0, v1, v2}, Lmiui/animation/physics/EquilibriumChecker;-><init>(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)V

    iput-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mEquilibrium:Lmiui/animation/physics/EquilibriumChecker;

    goto :goto_64

    :cond_50
    instance-of v0, p1, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    if-eqz v0, :cond_64

    move-object v0, p1

    check-cast v0, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    invoke-static {v0}, Lmiui/animation/utils/EaseManager;->getInterpolator(Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mInterpolator:Landroid/animation/TimeInterpolator;

    move-object v0, p1

    check-cast v0, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    iget-wide v0, v0, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    iput-wide v0, p0, Lmiui/animation/styles/PropertyStyle;->mDuration:J

    :cond_64
    :goto_64
    return-void
.end method

.method private setEquilibriumChecker()V
    .registers 4

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mEquilibrium:Lmiui/animation/physics/EquilibriumChecker;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->getTargetDoubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/animation/physics/EquilibriumChecker;->setTargetValue(D)V

    :cond_b
    return-void
.end method

.method private setFinishVV()V
    .registers 5

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lmiui/animation/IAnimTarget;->setVelocity(Lmiui/animation/property/FloatProperty;D)V

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mPhyOperator:Lmiui/animation/physics/PhysicsOperator;

    instance-of v0, v0, Lmiui/animation/physics/SpringOperator;

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->getTargetDoubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lmiui/animation/styles/PropertyStyle;->setAnimValue(D)V

    goto :goto_1f

    :cond_17
    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-direct {p0, v0, v1}, Lmiui/animation/styles/PropertyStyle;->setAnimValue(D)V

    :goto_1f
    return-void
.end method

.method private updateInterpolatorAnim()V
    .registers 7

    iget-wide v0, p0, Lmiui/animation/styles/PropertyStyle;->mTotalTime:J

    iget-wide v2, p0, Lmiui/animation/styles/PropertyStyle;->mDuration:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    iput-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    if-nez v0, :cond_14

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_21

    :cond_14
    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mInterpolator:Landroid/animation/TimeInterpolator;

    iget-wide v3, p0, Lmiui/animation/styles/PropertyStyle;->mTotalTime:J

    long-to-float v3, v3

    iget-wide v4, p0, Lmiui/animation/styles/PropertyStyle;->mDuration:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v0, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    :goto_21
    nop

    invoke-virtual {p0, v0}, Lmiui/animation/styles/PropertyStyle;->regulateProgress(F)F

    move-result v0

    iget-object v3, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    instance-of v3, v3, Lmiui/animation/property/IIntValueProperty;

    if-eqz v3, :cond_5a

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->getEvaluator()Landroid/animation/TypeEvaluator;

    move-result-object v3

    iget-object v4, p0, Lmiui/animation/styles/PropertyStyle;->mIntValues:[I

    aget v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lmiui/animation/styles/PropertyStyle;->mIntValues:[I

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v0, v2, v1}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v3, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    check-cast v3, Lmiui/animation/property/IIntValueProperty;

    int-to-double v4, v1

    invoke-virtual {p0, v4, v5}, Lmiui/animation/styles/PropertyStyle;->toAnimValue(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lmiui/animation/IAnimTarget;->setIntValue(Lmiui/animation/property/IIntValueProperty;I)V

    goto :goto_85

    :cond_5a
    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->getEvaluator()Landroid/animation/TypeEvaluator;

    move-result-object v3

    iget-object v4, p0, Lmiui/animation/styles/PropertyStyle;->mValues:[F

    aget v2, v4, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v4, p0, Lmiui/animation/styles/PropertyStyle;->mValues:[F

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v3, v0, v2, v1}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v3, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    float-to-double v4, v1

    invoke-virtual {p0, v4, v5}, Lmiui/animation/styles/PropertyStyle;->toAnimValue(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lmiui/animation/IAnimTarget;->setValue(Lmiui/animation/property/FloatProperty;F)V

    :goto_85
    return-void
.end method

.method private updatePhysicsAnim(J)V
    .registers 13

    iget v0, p0, Lmiui/animation/styles/PropertyStyle;->mFrameCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/animation/styles/PropertyStyle;->mFrameCount:I

    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->updateVV()V

    long-to-float v0, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->getTargetDoubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    invoke-direct {p0, v4, v0, v2, v3}, Lmiui/animation/styles/PropertyStyle;->doPhysicsCalculation([DFD)V

    iget-object v4, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    aget-wide v8, v4, v1

    invoke-virtual {p0, v6, v7, v8, v9}, Lmiui/animation/styles/PropertyStyle;->isAnimRunning(DD)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v6, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    iget-object v7, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    aget-wide v7, v7, v1

    invoke-virtual {v4, v6, v7, v8}, Lmiui/animation/IAnimTarget;->setVelocity(Lmiui/animation/property/FloatProperty;D)V

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    aget-wide v4, v1, v5

    invoke-direct {p0, v4, v5}, Lmiui/animation/styles/PropertyStyle;->setAnimValue(D)V

    invoke-direct {p0, v0, v2, v3}, Lmiui/animation/styles/PropertyStyle;->applyDelayedAnimConfig(FD)V

    goto :goto_3e

    :cond_3b
    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->doFinishProcess()V

    :goto_3e
    return-void
.end method

.method private updateVV()V
    .registers 10

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mPhyOperator:Lmiui/animation/physics/PhysicsOperator;

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mUseIntValue:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    check-cast v1, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {v0, v1}, Lmiui/animation/IAnimTarget;->getIntValue(Lmiui/animation/property/IIntValueProperty;)I

    move-result v0

    int-to-double v0, v0

    goto :goto_1d

    :cond_14
    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Lmiui/animation/IAnimTarget;->getValue(Lmiui/animation/property/FloatProperty;)F

    move-result v0

    float-to-double v0, v0

    :goto_1d
    nop

    iget-boolean v2, p0, Lmiui/animation/styles/PropertyStyle;->mUseIntValue:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_31

    iget-object v2, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v5, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v2, v5}, Lmiui/animation/IAnimTarget;->shouldUseIntValue(Lmiui/animation/property/FloatProperty;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_31

    :cond_2f
    move v2, v4

    goto :goto_32

    :cond_31
    :goto_31
    move v2, v3

    :goto_32
    if-eqz v2, :cond_43

    iget-object v5, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    aget-wide v5, v5, v4

    sub-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_47

    :cond_43
    iget-object v5, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    aput-wide v0, v5, v4

    :cond_47
    iget-object v4, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    iget-object v5, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v6, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v5, v6}, Lmiui/animation/IAnimTarget;->getVelocity(Lmiui/animation/property/FloatProperty;)D

    move-result-wide v5

    aput-wide v5, v4, v3

    :cond_53
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->onEnd()V

    :cond_a
    return-void
.end method

.method public clear()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mConfig:Lmiui/animation/base/AnimConfigLink;

    iput-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mValues:[F

    iput-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mIntValues:[I

    iput-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mPhyOperator:Lmiui/animation/physics/PhysicsOperator;

    iput-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mEquilibrium:Lmiui/animation/physics/EquilibriumChecker;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/animation/styles/PropertyStyle;->mTotalTime:J

    return-void
.end method

.method protected doSetConfig(Lmiui/animation/base/AnimConfigLink;)V
    .registers 2

    return-void
.end method

.method public end()V
    .registers 4

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    instance-of v0, v0, Lmiui/animation/property/IIntValueProperty;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->getTargetIntValue()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_18

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v2, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    check-cast v2, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {v1, v2, v0}, Lmiui/animation/IAnimTarget;->setIntValue(Lmiui/animation/property/IIntValueProperty;I)V

    :cond_18
    goto :goto_2b

    :cond_19
    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->getTargetValue()F

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v2, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v1, v2, v0}, Lmiui/animation/IAnimTarget;->setValue(Lmiui/animation/property/FloatProperty;F)V

    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->cancel()V

    return-void
.end method

.method public getCurrentIntValue()I
    .registers 3

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    instance-of v1, v0, Lmiui/animation/property/IIntValueProperty;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    check-cast v0, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {v1, v0}, Lmiui/animation/IAnimTarget;->getIntValue(Lmiui/animation/property/IIntValueProperty;)I

    move-result v0

    return v0

    :cond_f
    const v0, 0x7fffffff

    return v0
.end method

.method public getCurrentValue()F
    .registers 3

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Lmiui/animation/IAnimTarget;->getValue(Lmiui/animation/property/FloatProperty;)F

    move-result v0

    return v0
.end method

.method protected getEvaluator()Landroid/animation/TypeEvaluator;
    .registers 2

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    instance-of v0, v0, Lmiui/animation/property/IIntValueProperty;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    return-object v0

    :cond_c
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    return-object v0
.end method

.method public getRunningTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/animation/styles/PropertyStyle;->mTotalTime:J

    return-wide v0
.end method

.method public getTarget()Lmiui/animation/IAnimTarget;
    .registers 2

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    return-object v0
.end method

.method public getTargetIntValue()I
    .registers 4

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mIntValues:[I

    if-eqz v0, :cond_13

    array-length v1, v0

    if-nez v1, :cond_8

    goto :goto_13

    :cond_8
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_f

    aget v0, v0, v2

    goto :goto_12

    :cond_f
    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_12
    return v0

    :cond_13
    :goto_13
    const v0, 0x7fffffff

    return v0
.end method

.method public getTargetValue()F
    .registers 4

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mValues:[F

    if-eqz v0, :cond_13

    array-length v1, v0

    if-nez v1, :cond_8

    goto :goto_13

    :cond_8
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_f

    aget v0, v0, v2

    goto :goto_12

    :cond_f
    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_12
    return v0

    :cond_13
    :goto_13
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0
.end method

.method protected isAnimRunning(DD)Z
    .registers 6

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mEquilibrium:Lmiui/animation/physics/EquilibriumChecker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/animation/physics/EquilibriumChecker;->isAtEquilibrium(DD)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRunning()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    return v0
.end method

.method protected onEnd()V
    .registers 1

    return-void
.end method

.method protected onStart()V
    .registers 1

    return-void
.end method

.method protected onUpdate()V
    .registers 1

    return-void
.end method

.method protected processCurrentValue(D)D
    .registers 3

    return-wide p1
.end method

.method protected processTargetValue(D)D
    .registers 3

    return-wide p1
.end method

.method protected regulateProgress(F)F
    .registers 2

    return p1
.end method

.method public resetRunningTime()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/animation/styles/PropertyStyle;->mTotalTime:J

    return-void
.end method

.method public final setConfig(Lmiui/animation/base/AnimConfigLink;)V
    .registers 3

    iput-object p1, p0, Lmiui/animation/styles/PropertyStyle;->mConfig:Lmiui/animation/base/AnimConfigLink;

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p1, v0}, Lmiui/animation/base/AnimConfigLink;->getEase(Lmiui/animation/property/FloatProperty;)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/animation/styles/PropertyStyle;->setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)V

    invoke-virtual {p0, p1}, Lmiui/animation/styles/PropertyStyle;->doSetConfig(Lmiui/animation/base/AnimConfigLink;)V

    return-void
.end method

.method public varargs setIntValues([I)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->getCurrentIntValue()I

    move-result v3

    aput v3, v0, v2

    aget v3, p1, v2

    aput v3, v0, v1

    iput-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mIntValues:[I

    goto :goto_17

    :cond_15
    iput-object p1, p0, Lmiui/animation/styles/PropertyStyle;->mIntValues:[I

    :goto_17
    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PropertyStyle.setIntValues, values = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_33
    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->setEquilibriumChecker()V

    return-void
.end method

.method public setTarget(Lmiui/animation/IAnimTarget;)V
    .registers 2

    iput-object p1, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    return-void
.end method

.method public varargs setValues([F)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->getCurrentValue()F

    move-result v3

    aput v3, v0, v2

    aget v3, p1, v2

    aput v3, v0, v1

    iput-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mValues:[F

    goto :goto_17

    :cond_15
    iput-object p1, p0, Lmiui/animation/styles/PropertyStyle;->mValues:[F

    :goto_17
    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PropertyStyle.setValues, values = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_33
    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->setEquilibriumChecker()V

    return-void
.end method

.method public start()V
    .registers 3

    iget-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_c

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mPhyOperator:Lmiui/animation/physics/PhysicsOperator;

    if-eqz v0, :cond_19

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/animation/styles/PropertyStyle;->mTotalTime:J

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->onStart()V

    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->setEquilibriumChecker()V

    :cond_19
    return-void
.end method

.method protected toAnimValue(D)D
    .registers 3

    return-wide p1
.end method

.method public update(J)V
    .registers 5

    iget-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-wide v0, p0, Lmiui/animation/styles/PropertyStyle;->mTotalTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/animation/styles/PropertyStyle;->mTotalTime:J

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mPhyOperator:Lmiui/animation/physics/PhysicsOperator;

    if-eqz v0, :cond_12

    invoke-direct {p0, p1, p2}, Lmiui/animation/styles/PropertyStyle;->updatePhysicsAnim(J)V

    goto :goto_19

    :cond_12
    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->updateInterpolatorAnim()V

    :cond_19
    :goto_19
    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->onUpdate()V

    iget-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->onEnd()V

    :cond_23
    return-void
.end method
