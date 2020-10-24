.class public Lmiuix/animation/internal/AnimRunningInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final STATUS_BEGIN:I = 0x0

.field private static final STATUS_PENDING:I = -0x1

.field static final STATUS_RUNNING:I = 0x1

.field static final STATUS_RUN_TO_MINIMUM:I = 0x2

.field static final STATUS_STOP:I = 0x3


# instance fields
.field public anim:Lmiuix/animation/styles/PropertyStyle;

.field public config:Lmiuix/animation/base/AnimConfigLink;

.field public ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public flags:J

.field private fromValue:Ljava/lang/Number;

.field initTime:J

.field private mUpdate:Lmiuix/animation/listener/UpdateInfo;

.field pending:Lmiuix/animation/internal/AnimRunningInfo;

.field public property:Lmiuix/animation/property/FloatProperty;

.field private startTime:J

.field public status:I

.field public target:Lmiuix/animation/IAnimTarget;

.field private toFlags:J

.field public toTag:Ljava/lang/Object;

.field toValue:Ljava/lang/Number;

.field transId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->status:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->startTime:J

    new-instance v0, Lmiuix/animation/listener/UpdateInfo;

    invoke-direct {v0}, Lmiuix/animation/listener/UpdateInfo;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->mUpdate:Lmiuix/animation/listener/UpdateInfo;

    return-void
.end method

.method private setFromValue()V
    .locals 3

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->fromValue:Ljava/lang/Number;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    instance-of v2, v1, Lmiuix/animation/property/IIntValueProperty;

    iget-object p0, p0, Lmiuix/animation/internal/AnimRunningInfo;->target:Lmiuix/animation/IAnimTarget;

    if-eqz v2, :cond_1

    check-cast v1, Lmiuix/animation/property/IIntValueProperty;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lmiuix/animation/IAnimTarget;->setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lmiuix/animation/IAnimTarget;->setValue(Lmiuix/animation/property/FloatProperty;F)V

    :goto_0
    return-void
.end method

.method private setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lmiuix/animation/internal/AnimRunningInfo;->startTime:J

    iget-object p0, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiuix/animation/styles/PropertyStyle;->resetRunningTime()V

    :cond_0
    return-void
.end method

.method private setValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/styles/PropertyStyle;)Z
    .locals 7

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    instance-of v0, v0, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lmiuix/animation/internal/AnimRunningInfo;->toValue:Ljava/lang/Number;

    iget-wide v5, p0, Lmiuix/animation/internal/AnimRunningInfo;->toFlags:J

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lmiuix/animation/internal/AnimValueUtils;->setIntValues(Lmiuix/animation/IAnimTarget;Lmiuix/animation/styles/PropertyStyle;Lmiuix/animation/internal/AnimRunningInfo;Ljava/lang/Number;J)Z

    move-result p0

    return p0

    :cond_0
    iget-object v3, p0, Lmiuix/animation/internal/AnimRunningInfo;->toValue:Ljava/lang/Number;

    iget-wide v4, p0, Lmiuix/animation/internal/AnimRunningInfo;->toFlags:J

    move-object v0, p1

    move-object v1, p2

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lmiuix/animation/internal/AnimValueUtils;->setFloatValues(Lmiuix/animation/IAnimTarget;Lmiuix/animation/styles/PropertyStyle;Lmiuix/animation/internal/AnimRunningInfo;Ljava/lang/Number;J)Z

    move-result p0

    return p0
.end method


# virtual methods
.method begin(Lmiuix/animation/IAnimTarget;J)V
    .locals 6

    const/4 v0, 0x1

    iput v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->status:I

    iget-object v1, p0, Lmiuix/animation/internal/AnimRunningInfo;->mUpdate:Lmiuix/animation/listener/UpdateInfo;

    invoke-virtual {v1}, Lmiuix/animation/listener/UpdateInfo;->reset()V

    iget-object v1, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiuix/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v2, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    iget-object v3, p0, Lmiuix/animation/internal/AnimRunningInfo;->config:Lmiuix/animation/base/AnimConfigLink;

    invoke-static {p1, v1, v2, v3}, Lmiuix/animation/styles/StyleFactory;->createAnimStyle(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimConfigLink;)Lmiuix/animation/styles/PropertyStyle;

    move-result-object v1

    iput-object v1, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    :cond_0
    invoke-direct {p0, p2, p3}, Lmiuix/animation/internal/AnimRunningInfo;->setStartTime(J)V

    invoke-direct {p0}, Lmiuix/animation/internal/AnimRunningInfo;->setFromValue()V

    iget-object p2, p0, Lmiuix/animation/internal/AnimRunningInfo;->config:Lmiuix/animation/base/AnimConfigLink;

    iget-object p3, p0, Lmiuix/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v1, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p2, p3, v1}, Lmiuix/animation/base/AnimConfigLink;->getFromSpeed(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)F

    move-result p2

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float p3, p2, p3

    const/4 v1, 0x0

    const-string v2, "AnimRunningInfo, begin "

    if-eqz p3, :cond_2

    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fromSpeed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p3, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object p3, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    float-to-double v3, p2

    invoke-virtual {p1, p3, v3, v4}, Lmiuix/animation/IAnimTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    :cond_2
    iget-object p2, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    invoke-direct {p0, p1, p2}, Lmiuix/animation/internal/AnimRunningInfo;->setValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/styles/PropertyStyle;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0, v0}, Lmiuix/animation/internal/AnimRunningInfo;->stop(Z)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    invoke-virtual {p2}, Lmiuix/animation/styles/PropertyStyle;->isRunning()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toTag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiuix/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target object = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin velocity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p1, v2}, Lmiuix/animation/IAnimTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object p0, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    invoke-virtual {p0}, Lmiuix/animation/styles/PropertyStyle;->start()V

    :cond_5
    :goto_0
    return-void
.end method

.method getRunningTime()J
    .locals 2

    iget-object p0, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/animation/styles/PropertyStyle;->getRunningTime()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method isAnimEnd(J)Z
    .locals 2

    iget-wide v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->startTime:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_1

    iget-object p0, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiuix/animation/styles/PropertyStyle;->isRunning()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isFinished()Z
    .locals 1

    iget p0, p0, Lmiuix/animation/internal/AnimRunningInfo;->status:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isPhysicsWithVelocity()Z
    .locals 4

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget v0, v0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiuix/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object p0, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v0, p0}, Lmiuix/animation/IAnimTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isRunning()Z
    .locals 2

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p0, p0, Lmiuix/animation/internal/AnimRunningInfo;->status:I

    if-eq p0, v1, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method run(J)V
    .locals 1

    invoke-virtual {p0}, Lmiuix/animation/internal/AnimRunningInfo;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/styles/PropertyStyle;->update(J)V

    :cond_0
    return-void
.end method

.method setConfig(Lmiuix/animation/base/AnimConfigLink;)V
    .locals 2

    iput-object p1, p0, Lmiuix/animation/internal/AnimRunningInfo;->config:Lmiuix/animation/base/AnimConfigLink;

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfigLink;->getEase(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v1, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p1, v0, v1}, Lmiuix/animation/base/AnimConfigLink;->getFlags(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->flags:J

    return-void
.end method

.method setFromInfo(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 1

    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->fromPropValues:Landroid/util/ArrayMap;

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    iput-object p1, p0, Lmiuix/animation/internal/AnimRunningInfo;->fromValue:Ljava/lang/Number;

    return-void
.end method

.method setPending(Lmiuix/animation/internal/AnimRunningInfo;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->status:I

    iput-object p1, p0, Lmiuix/animation/internal/AnimRunningInfo;->pending:Lmiuix/animation/internal/AnimRunningInfo;

    const/4 p0, -0x1

    iput p0, p1, Lmiuix/animation/internal/AnimRunningInfo;->status:I

    return-void
.end method

.method setToInfo(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 2

    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->toPropValues:Landroid/util/ArrayMap;

    iget-object v1, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->toValue:Ljava/lang/Number;

    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->toTag:Ljava/lang/Object;

    iput-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->toFlags:Landroid/util/ArrayMap;

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->toFlags:J

    :cond_0
    return-void
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/animation/internal/AnimRunningInfo;->stop(Z)V

    return-void
.end method

.method stop(Z)V
    .locals 8

    invoke-virtual {p0}, Lmiuix/animation/internal/AnimRunningInfo;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnimRunningInfo, stop "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toTag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiuix/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "property = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "anim.getCurrentValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    instance-of v7, v7, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    invoke-virtual {v7}, Lmiuix/animation/styles/PropertyStyle;->getCurrentIntValue()I

    move-result v7

    int-to-float v7, v7

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    invoke-virtual {v7}, Lmiuix/animation/styles/PropertyStyle;->getCurrentValue()F

    move-result v7

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iput v3, p0, Lmiuix/animation/internal/AnimRunningInfo;->status:I

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    invoke-virtual {p1}, Lmiuix/animation/styles/PropertyStyle;->end()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lmiuix/animation/internal/AnimRunningInfo;->mUpdate:Lmiuix/animation/listener/UpdateInfo;

    iput-boolean v1, p1, Lmiuix/animation/listener/UpdateInfo;->isCanceled:Z

    iget-object p1, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    invoke-virtual {p1}, Lmiuix/animation/styles/PropertyStyle;->cancel()V

    :goto_1
    iget-object p0, p0, Lmiuix/animation/internal/AnimRunningInfo;->pending:Lmiuix/animation/internal/AnimRunningInfo;

    if-eqz p0, :cond_4

    iput v2, p0, Lmiuix/animation/internal/AnimRunningInfo;->status:I

    :cond_4
    return-void
.end method

.method update(Lmiuix/animation/internal/TransitionInfo;J)V
    .locals 8

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget v0, v0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiuix/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v0

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfigLink;

    iget-object v2, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfigLink;->getEase(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    iput-object v1, p0, Lmiuix/animation/internal/AnimRunningInfo;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget v1, v1, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v1}, Lmiuix/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v1

    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimRunningInfo;->setToInfo(Lmiuix/animation/internal/TransitionInfo;)V

    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update anim for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "to = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiuix/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lmiuix/animation/internal/AnimRunningInfo;->toValue:Ljava/lang/Number;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newEase = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lmiuix/animation/internal/AnimRunningInfo;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    if-eqz v2, :cond_3

    if-ne v0, v1, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "update anim values"

    invoke-static {p3, p2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object p2, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfigLink;

    invoke-virtual {p2, p1}, Lmiuix/animation/styles/PropertyStyle;->setConfig(Lmiuix/animation/base/AnimConfigLink;)V

    iget-object p1, p0, Lmiuix/animation/internal/AnimRunningInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object p2, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    invoke-direct {p0, p1, p2}, Lmiuix/animation/internal/AnimRunningInfo;->setValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/styles/PropertyStyle;)Z

    goto :goto_2

    :cond_3
    :goto_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "update anim, clear old and begin new"

    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lmiuix/animation/styles/PropertyStyle;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->fromValue:Ljava/lang/Number;

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfigLink;

    invoke-virtual {v0, p1}, Lmiuix/animation/styles/PropertyStyle;->setConfig(Lmiuix/animation/base/AnimConfigLink;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v1, p0, Lmiuix/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v2, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfigLink;

    invoke-static {v0, v1, v2, p1}, Lmiuix/animation/styles/StyleFactory;->createAnimStyle(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimConfigLink;)Lmiuix/animation/styles/PropertyStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    :goto_1
    iget-object p1, p0, Lmiuix/animation/internal/AnimRunningInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/internal/AnimRunningInfo;->begin(Lmiuix/animation/IAnimTarget;J)V

    :goto_2
    return-void
.end method

.method updateToDate()Lmiuix/animation/listener/UpdateInfo;
    .locals 3

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->mUpdate:Lmiuix/animation/listener/UpdateInfo;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimRunningInfo;->transId:J

    iput-wide v1, v0, Lmiuix/animation/listener/UpdateInfo;->transId:J

    iget-object v1, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    instance-of v2, v1, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiuix/animation/internal/AnimRunningInfo;->target:Lmiuix/animation/IAnimTarget;

    check-cast v1, Lmiuix/animation/property/IIntValueProperty;

    invoke-virtual {v2, v1}, Lmiuix/animation/IAnimTarget;->getIntValue(Lmiuix/animation/property/IIntValueProperty;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lmiuix/animation/internal/AnimRunningInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v2, v1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/animation/listener/UpdateInfo;->setValue(Ljava/lang/Number;)V

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->mUpdate:Lmiuix/animation/listener/UpdateInfo;

    iget-object v1, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    iput-object v1, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget v0, v0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiuix/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->mUpdate:Lmiuix/animation/listener/UpdateInfo;

    iget-object v1, p0, Lmiuix/animation/internal/AnimRunningInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v2, p0, Lmiuix/animation/internal/AnimRunningInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v1, v2}, Lmiuix/animation/IAnimTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v1

    double-to-float v1, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->mUpdate:Lmiuix/animation/listener/UpdateInfo;

    const/4 v1, 0x0

    :goto_1
    iput v1, v0, Lmiuix/animation/listener/UpdateInfo;->velocity:F

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunningInfo;->mUpdate:Lmiuix/animation/listener/UpdateInfo;

    iget-object v1, p0, Lmiuix/animation/internal/AnimRunningInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    iput-object v1, v0, Lmiuix/animation/listener/UpdateInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    invoke-virtual {p0}, Lmiuix/animation/internal/AnimRunningInfo;->isFinished()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/animation/listener/UpdateInfo;->setComplete(Z)V

    iget-object p0, p0, Lmiuix/animation/internal/AnimRunningInfo;->mUpdate:Lmiuix/animation/listener/UpdateInfo;

    return-object p0
.end method
