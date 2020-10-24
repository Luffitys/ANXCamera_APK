.class public Lmiui/animation/styles/PropertyStyle;
.super Ljava/lang/Object;
.source ""


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
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mValues:[F

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mIntValues:[I

    const/4 v0, 0x2

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    iput-object p1, p0, Lmiui/animation/styles/PropertyStyle;->mToTag:Ljava/lang/Object;

    iput-object p2, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    instance-of p1, p2, Lmiui/animation/property/IIntValueProperty;

    iput-boolean p1, p0, Lmiui/animation/styles/PropertyStyle;->mUseIntValue:Z

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private applyDelayedAnimConfig(FD)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    const/4 v2, 0x0

    aget-wide v9, v1, v2

    const/4 v11, 0x1

    aget-wide v12, v1, v11

    move v3, p1

    move-wide/from16 v4, p2

    invoke-direct {p0, v1, p1, v4, v5}, Lmiui/animation/styles/PropertyStyle;->doPhysicsCalculation([DFD)V

    iget-object v3, v0, Lmiui/animation/styles/PropertyStyle;->mConfig:Lmiui/animation/base/AnimConfigLink;

    iget-object v4, v0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    iget-object v1, v0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    aget-wide v7, v1, v2

    move-wide v5, v9

    invoke-virtual/range {v3 .. v8}, Lmiui/animation/base/AnimConfigLink;->getEaseEffectFromValue(Lmiui/animation/property/FloatProperty;DD)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lmiui/animation/styles/PropertyStyle;->setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)V

    :cond_0
    iget-object v0, v0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    aput-wide v9, v0, v2

    aput-wide v12, v0, v11

    return-void
.end method

.method private createPhyOperator(Lmiui/animation/utils/EaseManager$EaseStyle;)Lmiui/animation/physics/PhysicsOperator;
    .locals 2

    invoke-direct {p0, p1}, Lmiui/animation/styles/PropertyStyle;->getFactors(Lmiui/animation/utils/EaseManager$EaseStyle;)[F

    move-result-object p0

    iget p1, p1, Lmiui/animation/utils/EaseManager$EaseStyle;->style:I

    const/4 v0, -0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lmiui/animation/physics/SpringOperator;

    aget v0, p0, v1

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-direct {p1, v0, p0}, Lmiui/animation/physics/SpringOperator;-><init>(FF)V

    return-object p1

    :cond_1
    new-instance p1, Lmiui/animation/physics/AccelerateOperator;

    aget p0, p0, v1

    invoke-direct {p1, p0}, Lmiui/animation/physics/AccelerateOperator;-><init>(F)V

    return-object p1

    :cond_2
    new-instance p1, Lmiui/animation/physics/FrictionOperator;

    aget p0, p0, v1

    invoke-direct {p1, p0}, Lmiui/animation/physics/FrictionOperator;-><init>(F)V

    return-object p1
.end method

.method private doFinishProcess()V
    .locals 11

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mPhyOperator:Lmiui/animation/physics/PhysicsOperator;

    instance-of v0, v0, Lmiui/animation/physics/SpringOperator;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->setFinishVV()V

    return-void

    :cond_0
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

    move-result-wide v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    cmpg-double v2, v6, v8

    const/4 v8, 0x1

    if-gez v2, :cond_2

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    aput-object v9, v2, v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ratio = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v8

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "targetValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    aget-wide v6, v6, v3

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "diff = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frameCount = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmiui/animation/styles/PropertyStyle;->mFrameCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "doFinishProcess"

    invoke-static {v0, v2}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->setFinishVV()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "doFinishProcess, start spring back"

    invoke-static {v1, v0}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    sget-object v0, Lmiui/animation/utils/CommonUtils;->sDefEase:Lmiui/animation/utils/EaseManager$EaseStyle;

    invoke-direct {p0, v0}, Lmiui/animation/styles/PropertyStyle;->setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)V

    iput-boolean v8, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    :goto_0
    return-void
.end method

.method private doPhysicsCalculation([DFD)V
    .locals 8

    invoke-virtual {p0, p3, p4}, Lmiui/animation/styles/PropertyStyle;->processTargetValue(D)D

    move-result-wide p3

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lmiui/animation/styles/PropertyStyle;->processCurrentValue(D)D

    move-result-wide v1

    iget-object v3, p0, Lmiui/animation/styles/PropertyStyle;->mPhyOperator:Lmiui/animation/physics/PhysicsOperator;

    const/4 v4, 0x1

    aget-wide v5, p1, v4

    const/4 v7, 0x2

    new-array v7, v7, [D

    aput-wide p3, v7, v0

    aput-wide v1, v7, v4

    invoke-interface {v3, v5, v6, p2, v7}, Lmiui/animation/physics/PhysicsOperator;->updateVelocity(DF[D)D

    move-result-wide p3

    aput-wide p3, p1, v4

    aget-wide p3, p1, v4

    float-to-double v3, p2

    mul-double/2addr p3, v3

    add-double/2addr v1, p3

    invoke-virtual {p0, v1, v2}, Lmiui/animation/styles/PropertyStyle;->toAnimValue(D)D

    move-result-wide p2

    aput-wide p2, p1, v0

    return-void
.end method

.method private getDiff(DD)D
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmiui/animation/styles/PropertyStyle;->processTargetValue(D)D

    move-result-wide p1

    invoke-virtual {p0, p3, p4}, Lmiui/animation/styles/PropertyStyle;->processCurrentValue(D)D

    move-result-wide p3

    sub-double/2addr p1, p3

    return-wide p1
.end method

.method private getFactors(Lmiui/animation/utils/EaseManager$EaseStyle;)[F
    .locals 2

    iget-object v0, p1, Lmiui/animation/utils/EaseManager$EaseStyle;->factors:[F

    array-length v0, v0

    if-nez v0, :cond_3

    iget v0, p1, Lmiui/animation/utils/EaseManager$EaseStyle;->style:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_2

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object p0, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p1, p0}, Lmiui/animation/IAnimTarget;->getVelocity(Lmiui/animation/property/FloatProperty;)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    const/4 p1, 0x2

    if-lez p0, :cond_1

    new-array p0, p1, [F

    fill-array-data p0, :array_0

    return-object p0

    :cond_1
    new-array p0, p1, [F

    fill-array-data p0, :array_1

    return-object p0

    :cond_2
    const/4 p0, 0x1

    new-array p0, p0, [F

    const/4 p1, 0x0

    const v0, 0x3ef3cf3e

    aput v0, p0, p1

    return-object p0

    :cond_3
    :goto_0
    iget-object p0, p1, Lmiui/animation/utils/EaseManager$EaseStyle;->factors:[F

    return-object p0

    :array_0
    .array-data 4
        0x3f266666    # 0.65f
        0x3eb33333    # 0.35f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method private getTargetDoubleValue()D
    .locals 2

    iget-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mUseIntValue:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->getTargetIntValue()I

    move-result p0

    int-to-double v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->getTargetValue()F

    move-result p0

    float-to-double v0, p0

    :goto_0
    return-wide v0
.end method

.method private setAnimValue(D)V
    .locals 2

    iget-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mUseIntValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object p0, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    check-cast p0, Lmiui/animation/property/IIntValueProperty;

    double-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Lmiui/animation/IAnimTarget;->setIntValue(Lmiui/animation/property/IIntValueProperty;I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object p0, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, p0}, Lmiui/animation/IAnimTarget;->shouldUseIntValue(Lmiui/animation/property/FloatProperty;)Z

    move-result v1

    if-eqz v1, :cond_1

    double-to-int p1, p1

    int-to-float p1, p1

    goto :goto_0

    :cond_1
    double-to-float p1, p1

    :goto_0
    invoke-virtual {v0, p0, p1}, Lmiui/animation/IAnimTarget;->setValue(Lmiui/animation/property/FloatProperty;F)V

    :goto_1
    return-void
.end method

.method private setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)V
    .locals 5

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ".setEase"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

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

    :cond_0
    iget v0, p1, Lmiui/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiui/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lmiui/animation/styles/PropertyStyle;->createPhyOperator(Lmiui/animation/utils/EaseManager$EaseStyle;)Lmiui/animation/physics/PhysicsOperator;

    move-result-object p1

    iput-object p1, p0, Lmiui/animation/styles/PropertyStyle;->mPhyOperator:Lmiui/animation/physics/PhysicsOperator;

    iget-object p1, p0, Lmiui/animation/styles/PropertyStyle;->mEquilibrium:Lmiui/animation/physics/EquilibriumChecker;

    if-nez p1, :cond_2

    new-instance p1, Lmiui/animation/physics/EquilibriumChecker;

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-direct {p1, v0, v1}, Lmiui/animation/physics/EquilibriumChecker;-><init>(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)V

    iput-object p1, p0, Lmiui/animation/styles/PropertyStyle;->mEquilibrium:Lmiui/animation/physics/EquilibriumChecker;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    if-eqz v0, :cond_2

    check-cast p1, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;

    invoke-static {p1}, Lmiui/animation/utils/EaseManager;->getInterpolator(Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mInterpolator:Landroid/animation/TimeInterpolator;

    iget-wide v0, p1, Lmiui/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    iput-wide v0, p0, Lmiui/animation/styles/PropertyStyle;->mDuration:J

    :cond_2
    :goto_0
    return-void
.end method

.method private setEquilibriumChecker()V
    .locals 3

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mEquilibrium:Lmiui/animation/physics/EquilibriumChecker;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->getTargetDoubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/animation/physics/EquilibriumChecker;->setTargetValue(D)V

    :cond_0
    return-void
.end method

.method private setFinishVV()V
    .locals 4

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lmiui/animation/IAnimTarget;->setVelocity(Lmiui/animation/property/FloatProperty;D)V

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mPhyOperator:Lmiui/animation/physics/PhysicsOperator;

    instance-of v0, v0, Lmiui/animation/physics/SpringOperator;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->getTargetDoubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lmiui/animation/styles/PropertyStyle;->setAnimValue(D)V

    return-void
.end method

.method private updateInterpolatorAnim()V
    .locals 6

    iget-wide v0, p0, Lmiui/animation/styles/PropertyStyle;->mTotalTime:J

    iget-wide v2, p0, Lmiui/animation/styles/PropertyStyle;->mDuration:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mInterpolator:Landroid/animation/TimeInterpolator;

    iget-wide v3, p0, Lmiui/animation/styles/PropertyStyle;->mTotalTime:J

    long-to-float v3, v3

    iget-wide v4, p0, Lmiui/animation/styles/PropertyStyle;->mDuration:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v0, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lmiui/animation/styles/PropertyStyle;->regulateProgress(F)F

    move-result v0

    iget-object v3, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    instance-of v3, v3, Lmiui/animation/property/IIntValueProperty;

    if-eqz v3, :cond_2

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

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v2, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    check-cast v2, Lmiui/animation/property/IIntValueProperty;

    int-to-double v3, v0

    invoke-virtual {p0, v3, v4}, Lmiui/animation/styles/PropertyStyle;->toAnimValue(D)D

    move-result-wide v3

    double-to-int p0, v3

    invoke-virtual {v1, v2, p0}, Lmiui/animation/IAnimTarget;->setIntValue(Lmiui/animation/property/IIntValueProperty;I)V

    goto :goto_2

    :cond_2
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

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v2, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    float-to-double v3, v0

    invoke-virtual {p0, v3, v4}, Lmiui/animation/styles/PropertyStyle;->toAnimValue(D)D

    move-result-wide v3

    double-to-float p0, v3

    invoke-virtual {v1, v2, p0}, Lmiui/animation/IAnimTarget;->setValue(Lmiui/animation/property/FloatProperty;F)V

    :goto_2
    return-void
.end method

.method private updatePhysicsAnim(J)V
    .locals 8

    iget v0, p0, Lmiui/animation/styles/PropertyStyle;->mFrameCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/animation/styles/PropertyStyle;->mFrameCount:I

    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->updateVV()V

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->getTargetDoubleValue()D

    move-result-wide v2

    iget-object p2, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    invoke-direct {p0, p2, p1, v2, v3}, Lmiui/animation/styles/PropertyStyle;->doPhysicsCalculation([DFD)V

    iget-object p2, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    const/4 v0, 0x0

    aget-wide v4, p2, v0

    aget-wide v6, p2, v1

    invoke-virtual {p0, v4, v5, v6, v7}, Lmiui/animation/styles/PropertyStyle;->isAnimRunning(DD)Z

    move-result p2

    iput-boolean p2, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v4, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    iget-object v5, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    aget-wide v5, v5, v1

    invoke-virtual {p2, v4, v5, v6}, Lmiui/animation/IAnimTarget;->setVelocity(Lmiui/animation/property/FloatProperty;D)V

    iget-object p2, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    aget-wide v0, p2, v0

    invoke-direct {p0, v0, v1}, Lmiui/animation/styles/PropertyStyle;->setAnimValue(D)V

    invoke-direct {p0, p1, v2, v3}, Lmiui/animation/styles/PropertyStyle;->applyDelayedAnimConfig(FD)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->doFinishProcess()V

    :goto_0
    return-void
.end method

.method private updateVV()V
    .locals 9

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mPhyOperator:Lmiui/animation/physics/PhysicsOperator;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mUseIntValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    check-cast v1, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {v0, v1}, Lmiui/animation/IAnimTarget;->getIntValue(Lmiui/animation/property/IIntValueProperty;)I

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Lmiui/animation/IAnimTarget;->getValue(Lmiui/animation/property/FloatProperty;)F

    move-result v0

    float-to-double v0, v0

    :goto_0
    iget-boolean v2, p0, Lmiui/animation/styles/PropertyStyle;->mUseIntValue:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v5, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v2, v5}, Lmiui/animation/IAnimTarget;->shouldUseIntValue(Lmiui/animation/property/FloatProperty;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v3

    :goto_2
    if-eqz v2, :cond_3

    iget-object v2, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    aget-wide v5, v2, v4

    sub-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v5, v7

    if-lez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    aput-wide v0, v2, v4

    :cond_4
    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mVV:[D

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object p0, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v1, p0}, Lmiui/animation/IAnimTarget;->getVelocity(Lmiui/animation/property/FloatProperty;)D

    move-result-wide v1

    aput-wide v1, v0, v3

    :cond_5
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->onEnd()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

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
    .locals 0

    return-void
.end method

.method public end()V
    .locals 3

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    instance-of v0, v0, Lmiui/animation/property/IIntValueProperty;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->getTargetIntValue()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v2, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    check-cast v2, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {v1, v2, v0}, Lmiui/animation/IAnimTarget;->setIntValue(Lmiui/animation/property/IIntValueProperty;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->getTargetValue()F

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v2, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v1, v2, v0}, Lmiui/animation/IAnimTarget;->setValue(Lmiui/animation/property/FloatProperty;F)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->cancel()V

    return-void
.end method

.method public getCurrentIntValue()I
    .locals 2

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    instance-of v1, v0, Lmiui/animation/property/IIntValueProperty;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    check-cast v0, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {p0, v0}, Lmiui/animation/IAnimTarget;->getIntValue(Lmiui/animation/property/IIntValueProperty;)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7fffffff

    return p0
.end method

.method public getCurrentValue()F
    .locals 1

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object p0, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, p0}, Lmiui/animation/IAnimTarget;->getValue(Lmiui/animation/property/FloatProperty;)F

    move-result p0

    return p0
.end method

.method protected getEvaluator()Landroid/animation/TypeEvaluator;
    .locals 0

    iget-object p0, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    instance-of p0, p0, Lmiui/animation/property/IIntValueProperty;

    if-eqz p0, :cond_0

    new-instance p0, Landroid/animation/IntEvaluator;

    invoke-direct {p0}, Landroid/animation/IntEvaluator;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Landroid/animation/FloatEvaluator;

    invoke-direct {p0}, Landroid/animation/FloatEvaluator;-><init>()V

    return-object p0
.end method

.method public getRunningTime()J
    .locals 2

    iget-wide v0, p0, Lmiui/animation/styles/PropertyStyle;->mTotalTime:J

    return-wide v0
.end method

.method public getTarget()Lmiui/animation/IAnimTarget;
    .locals 0

    iget-object p0, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    return-object p0
.end method

.method public getTargetIntValue()I
    .locals 2

    iget-object p0, p0, Lmiui/animation/styles/PropertyStyle;->mIntValues:[I

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    aget p0, p0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    aget p0, p0, v0

    :goto_0
    return p0

    :cond_2
    :goto_1
    const p0, 0x7fffffff

    return p0
.end method

.method public getTargetValue()F
    .locals 2

    iget-object p0, p0, Lmiui/animation/styles/PropertyStyle;->mValues:[F

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    aget p0, p0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    aget p0, p0, v0

    :goto_0
    return p0

    :cond_2
    :goto_1
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0
.end method

.method protected isAnimRunning(DD)Z
    .locals 0

    iget-object p0, p0, Lmiui/animation/styles/PropertyStyle;->mEquilibrium:Lmiui/animation/physics/EquilibriumChecker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiui/animation/physics/EquilibriumChecker;->isAtEquilibrium(DD)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    return p0
.end method

.method protected onEnd()V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onUpdate()V
    .locals 0

    return-void
.end method

.method protected processCurrentValue(D)D
    .locals 0

    return-wide p1
.end method

.method protected processTargetValue(D)D
    .locals 0

    return-wide p1
.end method

.method protected regulateProgress(F)F
    .locals 0

    return p1
.end method

.method public resetRunningTime()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/animation/styles/PropertyStyle;->mTotalTime:J

    return-void
.end method

.method public final setConfig(Lmiui/animation/base/AnimConfigLink;)V
    .locals 1

    iput-object p1, p0, Lmiui/animation/styles/PropertyStyle;->mConfig:Lmiui/animation/base/AnimConfigLink;

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mProperty:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p1, v0}, Lmiui/animation/base/AnimConfigLink;->getEase(Lmiui/animation/property/FloatProperty;)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/animation/styles/PropertyStyle;->setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)V

    invoke-virtual {p0, p1}, Lmiui/animation/styles/PropertyStyle;->doSetConfig(Lmiui/animation/base/AnimConfigLink;)V

    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->getCurrentIntValue()I

    move-result v3

    aput v3, v0, v2

    aget v3, p1, v2

    aput v3, v0, v1

    iput-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mIntValues:[I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lmiui/animation/styles/PropertyStyle;->mIntValues:[I

    :goto_0
    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PropertyStyle.setIntValues, values = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->setEquilibriumChecker()V

    return-void
.end method

.method public setTarget(Lmiui/animation/IAnimTarget;)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/styles/PropertyStyle;->mTarget:Lmiui/animation/IAnimTarget;

    return-void
.end method

.method public varargs setValues([F)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->getCurrentValue()F

    move-result v3

    aput v3, v0, v2

    aget v3, p1, v2

    aput v3, v0, v1

    iput-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mValues:[F

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lmiui/animation/styles/PropertyStyle;->mValues:[F

    :goto_0
    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PropertyStyle.setValues, values = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->setEquilibriumChecker()V

    return-void
.end method

.method public start()V
    .locals 2

    iget-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mPhyOperator:Lmiui/animation/physics/PhysicsOperator;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/animation/styles/PropertyStyle;->mTotalTime:J

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->onStart()V

    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->setEquilibriumChecker()V

    :cond_1
    return-void
.end method

.method protected toAnimValue(D)D
    .locals 0

    return-wide p1
.end method

.method public update(J)V
    .locals 2

    iget-boolean v0, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lmiui/animation/styles/PropertyStyle;->mTotalTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/animation/styles/PropertyStyle;->mTotalTime:J

    iget-object v0, p0, Lmiui/animation/styles/PropertyStyle;->mPhyOperator:Lmiui/animation/physics/PhysicsOperator;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lmiui/animation/styles/PropertyStyle;->updatePhysicsAnim(J)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiui/animation/styles/PropertyStyle;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lmiui/animation/styles/PropertyStyle;->updateInterpolatorAnim()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->onUpdate()V

    iget-boolean p1, p0, Lmiui/animation/styles/PropertyStyle;->mIsRunning:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->onEnd()V

    :cond_3
    return-void
.end method
