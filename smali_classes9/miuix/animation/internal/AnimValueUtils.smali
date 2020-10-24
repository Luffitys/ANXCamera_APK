.class public Lmiuix/animation/internal/AnimValueUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs applyProperty(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;[J)V
    .locals 6

    if-eqz p1, :cond_4

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    array-length v0, p2

    const-wide/16 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-wide v3, p2, v0

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p1, v0}, Lmiuix/animation/controller/AnimState;->isEnabled(Lmiuix/animation/property/FloatProperty;)Z

    move-result v5

    if-eqz v5, :cond_2

    cmp-long v5, v3, v1

    if-eqz v5, :cond_3

    invoke-virtual {p1, v0, v3, v4}, Lmiuix/animation/controller/AnimState;->hasFlags(Lmiuix/animation/property/FloatProperty;J)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_3
    invoke-static {p0, p1, v0}, Lmiuix/animation/internal/AnimValueUtils;->setDeltaValues(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private static getRealValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;F)F
    .locals 3

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x49742400    # 1000000.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getType(Lmiuix/animation/property/FloatProperty;)I

    move-result p1

    invoke-static {p0, p1}, Lmiuix/animation/utils/CommonUtils;->getSize(Lmiuix/animation/IAnimTarget;I)F

    move-result p0

    mul-float/2addr v0, p0

    return v0

    :cond_0
    sget v2, Lmiuix/animation/controller/AnimState;->VIEW_POS:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result p0

    mul-float/2addr p0, v0

    return p0

    :cond_1
    return p2
.end method

.method public static getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;F)F
    .locals 1

    instance-of v0, p1, Lmiuix/animation/property/ISpecificProperty;

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/animation/property/ISpecificProperty;

    invoke-interface {p1, p2}, Lmiuix/animation/property/ISpecificProperty;->getSpecificValue(F)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lmiuix/animation/internal/AnimValueUtils;->getRealValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;F)F

    move-result p0

    :goto_0
    return p0
.end method

.method private static logValues(Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toValue = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    aput-object p3, v0, p0

    const-string p0, "setValues"

    invoke-static {p0, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static setDeltaValues(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;)V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->hasFlags(Lmiuix/animation/property/FloatProperty;J)Z

    move-result v0

    instance-of v1, p2, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Lmiuix/animation/controller/AnimState;->getInt(Lmiuix/animation/property/FloatProperty;)I

    move-result p1

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lmiuix/animation/property/IIntValueProperty;

    invoke-virtual {p0, v0}, Lmiuix/animation/IAnimTarget;->getIntValue(Lmiuix/animation/property/IIntValueProperty;)I

    move-result v0

    add-int/2addr p1, v0

    :cond_0
    check-cast p2, Lmiuix/animation/property/IIntValueProperty;

    invoke-virtual {p0, p2, p1}, Lmiuix/animation/IAnimTarget;->setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0, p2}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)F

    move-result p1

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v0

    add-float/2addr p1, v0

    :cond_2
    invoke-virtual {p0, p2, p1}, Lmiuix/animation/IAnimTarget;->setValue(Lmiuix/animation/property/FloatProperty;F)V

    :goto_0
    return-void
.end method

.method static setFloatValues(Lmiuix/animation/IAnimTarget;Lmiuix/animation/styles/PropertyStyle;Lmiuix/animation/internal/AnimRunningInfo;Ljava/lang/Number;J)Z
    .locals 3

    iget-object v0, p2, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p0, v0}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v0

    iget-object v1, p2, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    invoke-static {p0, v1, p3}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;F)F

    move-result p0

    const-wide/16 v1, 0x1

    invoke-static {p4, p5, v1, v2}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result p3

    if-eqz p3, :cond_0

    add-float/2addr p0, v0

    :cond_0
    invoke-virtual {p2}, Lmiuix/animation/internal/AnimRunningInfo;->isPhysicsWithVelocity()Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_1

    cmpl-float p3, v0, p0

    if-nez p3, :cond_1

    iget-object p1, p2, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string p3, "same pos"

    invoke-static {p1, p2, p0, p3}, Lmiuix/animation/internal/AnimValueUtils;->logValues(Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return p4

    :cond_1
    iget-object p2, p2, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    const/4 v1, 0x0

    invoke-static {p2, p3, p5, v1}, Lmiuix/animation/internal/AnimValueUtils;->logValues(Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    aput v0, p2, p4

    const/4 p3, 0x1

    aput p0, p2, p3

    invoke-virtual {p1, p2}, Lmiuix/animation/styles/PropertyStyle;->setValues([F)V

    return p3
.end method

.method static setIntValues(Lmiuix/animation/IAnimTarget;Lmiuix/animation/styles/PropertyStyle;Lmiuix/animation/internal/AnimRunningInfo;Ljava/lang/Number;J)Z
    .locals 2

    iget-object v0, p2, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    check-cast v0, Lmiuix/animation/property/IIntValueProperty;

    invoke-virtual {p0, v0}, Lmiuix/animation/IAnimTarget;->getIntValue(Lmiuix/animation/property/IIntValueProperty;)I

    move-result p0

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    const-wide/16 v0, 0x1

    invoke-static {p4, p5, v0, v1}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result p4

    if-eqz p4, :cond_0

    add-int/2addr p3, p0

    :cond_0
    invoke-virtual {p2}, Lmiuix/animation/internal/AnimRunningInfo;->isPhysicsWithVelocity()Z

    move-result p4

    const/4 p5, 0x0

    if-nez p4, :cond_1

    if-ne p0, p3, :cond_1

    iget-object p1, p2, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "same pos"

    invoke-static {p1, p0, p2, p3}, Lmiuix/animation/internal/AnimValueUtils;->logValues(Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return p5

    :cond_1
    iget-object p2, p2, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, p4, v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->logValues(Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    aput p0, p2, p5

    const/4 p0, 0x1

    aput p3, p2, p0

    invoke-virtual {p1, p2}, Lmiuix/animation/styles/PropertyStyle;->setIntValues([I)V

    return p0
.end method
