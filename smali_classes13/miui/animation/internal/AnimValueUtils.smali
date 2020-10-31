.class public Lmiui/animation/internal/AnimValueUtils;
.super Ljava/lang/Object;
.source "AnimValueUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs applyProperty(Lmiui/animation/IAnimTarget;Lmiui/animation/controller/AnimState;[J)V
    .registers 10

    if-eqz p1, :cond_38

    if-nez p0, :cond_5

    goto :goto_38

    :cond_5
    array-length v0, p2

    const-wide/16 v1, 0x0

    if-lez v0, :cond_e

    const/4 v0, 0x0

    aget-wide v3, p2, v0

    goto :goto_f

    :cond_e
    move-wide v3, v1

    :goto_f
    invoke-virtual {p1}, Lmiui/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/animation/property/FloatProperty;

    invoke-virtual {p1, v5}, Lmiui/animation/controller/AnimState;->isEnabled(Lmiui/animation/property/FloatProperty;)Z

    move-result v6

    if-eqz v6, :cond_36

    cmp-long v6, v3, v1

    if-eqz v6, :cond_33

    invoke-virtual {p1, v5, v3, v4}, Lmiui/animation/controller/AnimState;->hasFlags(Lmiui/animation/property/FloatProperty;J)Z

    move-result v6

    if-eqz v6, :cond_36

    :cond_33
    invoke-static {p0, p1, v5}, Lmiui/animation/internal/AnimValueUtils;->setDeltaValues(Lmiui/animation/IAnimTarget;Lmiui/animation/controller/AnimState;Lmiui/animation/property/FloatProperty;)V

    :cond_36
    goto :goto_17

    :cond_37
    return-void

    :cond_38
    :goto_38
    return-void
.end method

.method private static getRealValue(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;F)F
    .registers 7

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x49742400    # 1000000.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_19

    invoke-virtual {p0, p1}, Lmiui/animation/IAnimTarget;->getType(Lmiui/animation/property/FloatProperty;)I

    move-result v2

    invoke-static {p0, v2}, Lmiui/animation/utils/CommonUtils;->getSize(Lmiui/animation/IAnimTarget;I)F

    move-result v2

    mul-float/2addr v2, v0

    return v2

    :cond_19
    sget v2, Lmiui/animation/controller/AnimState;->VIEW_POS:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-nez v2, :cond_27

    invoke-virtual {p0, p1}, Lmiui/animation/IAnimTarget;->getValue(Lmiui/animation/property/FloatProperty;)F

    move-result v2

    mul-float v3, v2, v0

    return v3

    :cond_27
    return p2
.end method

.method public static getValue(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;F)F
    .registers 4

    instance-of v0, p1, Lmiui/animation/property/ISpecificProperty;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lmiui/animation/property/ISpecificProperty;

    invoke-interface {v0, p2}, Lmiui/animation/property/ISpecificProperty;->getSpecificValue(F)F

    move-result v0

    goto :goto_10

    :cond_c
    invoke-static {p0, p1, p2}, Lmiui/animation/internal/AnimValueUtils;->getRealValue(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;F)F

    move-result v0

    :goto_10
    return v0
.end method

.method private static logValues(Lmiui/animation/property/FloatProperty;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiui/animation/property/FloatProperty;",
            "TT;TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmiui/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fromValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    if-eqz p3, :cond_3d

    move-object v2, p3

    goto :goto_3f

    :cond_3d
    const-string v2, ""

    :goto_3f
    aput-object v2, v0, v1

    const-string v1, "setValues"

    invoke-static {v1, v0}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_46
    return-void
.end method

.method private static setDeltaValues(Lmiui/animation/IAnimTarget;Lmiui/animation/controller/AnimState;Lmiui/animation/property/FloatProperty;)V
    .registers 6

    const-wide/16 v0, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lmiui/animation/controller/AnimState;->hasFlags(Lmiui/animation/property/FloatProperty;J)Z

    move-result v0

    instance-of v1, p2, Lmiui/animation/property/IIntValueProperty;

    if-eqz v1, :cond_1f

    invoke-virtual {p1, p2}, Lmiui/animation/controller/AnimState;->getInt(Lmiui/animation/property/FloatProperty;)I

    move-result v1

    if-eqz v0, :cond_18

    move-object v2, p2

    check-cast v2, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {p0, v2}, Lmiui/animation/IAnimTarget;->getIntValue(Lmiui/animation/property/IIntValueProperty;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_18
    move-object v2, p2

    check-cast v2, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {p0, v2, v1}, Lmiui/animation/IAnimTarget;->setIntValue(Lmiui/animation/property/IIntValueProperty;I)V

    goto :goto_2d

    :cond_1f
    invoke-virtual {p1, p0, p2}, Lmiui/animation/controller/AnimState;->get(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)F

    move-result v1

    if-eqz v0, :cond_2a

    invoke-virtual {p0, p2}, Lmiui/animation/IAnimTarget;->getValue(Lmiui/animation/property/FloatProperty;)F

    move-result v2

    add-float/2addr v1, v2

    :cond_2a
    invoke-virtual {p0, p2, v1}, Lmiui/animation/IAnimTarget;->setValue(Lmiui/animation/property/FloatProperty;F)V

    :goto_2d
    return-void
.end method

.method static setFloatValues(Lmiui/animation/IAnimTarget;Lmiui/animation/styles/PropertyStyle;Lmiui/animation/internal/AnimRunningInfo;Ljava/lang/Number;J)Z
    .registers 13

    iget-object v0, p2, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p0, v0}, Lmiui/animation/IAnimTarget;->getValue(Lmiui/animation/property/FloatProperty;)F

    move-result v0

    iget-object v1, p2, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {p0, v1, v2}, Lmiui/animation/internal/AnimValueUtils;->getValue(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;F)F

    move-result v1

    const-wide/16 v2, 0x1

    invoke-static {p4, p5, v2, v3}, Lmiui/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result v2

    if-eqz v2, :cond_19

    add-float/2addr v1, v0

    :cond_19
    invoke-virtual {p2}, Lmiui/animation/internal/AnimRunningInfo;->isPhysicsWithVelocity()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_34

    cmpl-float v2, v0, v1

    if-nez v2, :cond_34

    iget-object v2, p2, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "same pos"

    invoke-static {v2, v4, v5, v6}, Lmiui/animation/internal/AnimValueUtils;->logValues(Lmiui/animation/property/FloatProperty;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_34
    iget-object v2, p2, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6}, Lmiui/animation/internal/AnimValueUtils;->logValues(Lmiui/animation/property/FloatProperty;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-virtual {p1, v2}, Lmiui/animation/styles/PropertyStyle;->setValues([F)V

    return v3
.end method

.method static setIntValues(Lmiui/animation/IAnimTarget;Lmiui/animation/styles/PropertyStyle;Lmiui/animation/internal/AnimRunningInfo;Ljava/lang/Number;J)Z
    .registers 13

    iget-object v0, p2, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    check-cast v0, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {p0, v0}, Lmiui/animation/IAnimTarget;->getIntValue(Lmiui/animation/property/IIntValueProperty;)I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-wide/16 v2, 0x1

    invoke-static {p4, p5, v2, v3}, Lmiui/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result v2

    if-eqz v2, :cond_15

    add-int/2addr v1, v0

    :cond_15
    invoke-virtual {p2}, Lmiui/animation/internal/AnimRunningInfo;->isPhysicsWithVelocity()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2e

    if-ne v0, v1, :cond_2e

    iget-object v2, p2, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "same pos"

    invoke-static {v2, v4, v5, v6}, Lmiui/animation/internal/AnimValueUtils;->logValues(Lmiui/animation/property/FloatProperty;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_2e
    iget-object v2, p2, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6}, Lmiui/animation/internal/AnimValueUtils;->logValues(Lmiui/animation/property/FloatProperty;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-virtual {p1, v2}, Lmiui/animation/styles/PropertyStyle;->setIntValues([I)V

    return v3
.end method

.method static setStateValue(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;Lmiui/animation/styles/PropertyStyle;Lmiui/animation/controller/AnimState;)V
    .registers 7

    instance-of v0, p1, Lmiui/animation/property/IIntValueProperty;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    new-array v0, v2, [I

    invoke-virtual {p3, p1}, Lmiui/animation/controller/AnimState;->getInt(Lmiui/animation/property/FloatProperty;)I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p2, v0}, Lmiui/animation/styles/PropertyStyle;->setIntValues([I)V

    goto :goto_1d

    :cond_12
    new-array v0, v2, [F

    invoke-virtual {p3, p0, p1}, Lmiui/animation/controller/AnimState;->get(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)F

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p2, v0}, Lmiui/animation/styles/PropertyStyle;->setValues([F)V

    :goto_1d
    return-void
.end method
