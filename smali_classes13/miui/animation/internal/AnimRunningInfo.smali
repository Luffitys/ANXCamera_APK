.class public Lmiui/animation/internal/AnimRunningInfo;
.super Ljava/lang/Object;
.source "AnimRunningInfo.java"


# static fields
.field static final STATUS_BEGIN:I = 0x0

.field private static final STATUS_PENDING:I = -0x1

.field static final STATUS_RUNNING:I = 0x1

.field static final STATUS_RUN_TO_MINIMUM:I = 0x2

.field static final STATUS_STOP:I = 0x3


# instance fields
.field public anim:Lmiui/animation/styles/PropertyStyle;

.field public config:Lmiui/animation/base/AnimConfigLink;

.field public ease:Lmiui/animation/utils/EaseManager$EaseStyle;

.field public flags:J

.field private fromValue:Ljava/lang/Number;

.field initTime:J

.field private mUpdate:Lmiui/animation/listener/UpdateInfo;

.field pending:Lmiui/animation/internal/AnimRunningInfo;

.field public property:Lmiui/animation/property/FloatProperty;

.field private startTime:J

.field public status:I

.field public target:Lmiui/animation/IAnimTarget;

.field private toFlags:J

.field public toTag:Ljava/lang/Object;

.field toValue:Ljava/lang/Number;

.field transId:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/animation/internal/AnimRunningInfo;->status:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/animation/internal/AnimRunningInfo;->startTime:J

    new-instance v0, Lmiui/animation/listener/UpdateInfo;

    invoke-direct {v0}, Lmiui/animation/listener/UpdateInfo;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    return-void
.end method

.method private setFromValue()V
    .registers 4

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->fromValue:Ljava/lang/Number;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    instance-of v2, v1, Lmiui/animation/property/IIntValueProperty;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    check-cast v1, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lmiui/animation/IAnimTarget;->setIntValue(Lmiui/animation/property/IIntValueProperty;I)V

    goto :goto_20

    :cond_17
    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v2, v1, v0}, Lmiui/animation/IAnimTarget;->setValue(Lmiui/animation/property/FloatProperty;F)V

    :goto_20
    return-void
.end method

.method private setStartTime(J)V
    .registers 4

    iput-wide p1, p0, Lmiui/animation/internal/AnimRunningInfo;->startTime:J

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiui/animation/styles/PropertyStyle;->resetRunningTime()V

    :cond_9
    return-void
.end method

.method private setValue(Lmiui/animation/IAnimTarget;Lmiui/animation/styles/PropertyStyle;)Z
    .registers 10

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    instance-of v0, v0, Lmiui/animation/property/IIntValueProperty;

    if-eqz v0, :cond_12

    iget-object v4, p0, Lmiui/animation/internal/AnimRunningInfo;->toValue:Ljava/lang/Number;

    iget-wide v5, p0, Lmiui/animation/internal/AnimRunningInfo;->toFlags:J

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lmiui/animation/internal/AnimValueUtils;->setIntValues(Lmiui/animation/IAnimTarget;Lmiui/animation/styles/PropertyStyle;Lmiui/animation/internal/AnimRunningInfo;Ljava/lang/Number;J)Z

    move-result v0

    return v0

    :cond_12
    iget-object v4, p0, Lmiui/animation/internal/AnimRunningInfo;->toValue:Ljava/lang/Number;

    iget-wide v5, p0, Lmiui/animation/internal/AnimRunningInfo;->toFlags:J

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lmiui/animation/internal/AnimValueUtils;->setFloatValues(Lmiui/animation/IAnimTarget;Lmiui/animation/styles/PropertyStyle;Lmiui/animation/internal/AnimRunningInfo;Ljava/lang/Number;J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method begin(Lmiui/animation/IAnimTarget;J)V
    .registers 12

    const/4 v0, 0x1

    iput v0, p0, Lmiui/animation/internal/AnimRunningInfo;->status:I

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    invoke-virtual {v1}, Lmiui/animation/listener/UpdateInfo;->reset()V

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    if-nez v1, :cond_18

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    iget-object v3, p0, Lmiui/animation/internal/AnimRunningInfo;->config:Lmiui/animation/base/AnimConfigLink;

    invoke-static {p1, v1, v2, v3}, Lmiui/animation/styles/StyleFactory;->createAnimStyle(Lmiui/animation/IAnimTarget;Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/styles/PropertyStyle;

    move-result-object v1

    iput-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    :cond_18
    invoke-direct {p0, p2, p3}, Lmiui/animation/internal/AnimRunningInfo;->setStartTime(J)V

    invoke-direct {p0}, Lmiui/animation/internal/AnimRunningInfo;->setFromValue()V

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->config:Lmiui/animation/base/AnimConfigLink;

    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v3, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v1, v2, v3}, Lmiui/animation/base/AnimConfigLink;->getFromSpeed(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)F

    move-result v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v1, v2

    const/4 v3, 0x0

    const-string v4, "AnimRunningInfo, begin "

    if-eqz v2, :cond_6b

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v5}, Lmiui/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v0, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fromSpeed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_65
    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    float-to-double v5, v1

    invoke-virtual {p1, v2, v5, v6}, Lmiui/animation/IAnimTarget;->setVelocity(Lmiui/animation/property/FloatProperty;D)V

    :cond_6b
    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-direct {p0, p1, v2}, Lmiui/animation/internal/AnimRunningInfo;->setValue(Lmiui/animation/IAnimTarget;Lmiui/animation/styles/PropertyStyle;)Z

    move-result v2

    if-nez v2, :cond_77

    invoke-virtual {p0, v0}, Lmiui/animation/internal/AnimRunningInfo;->stop(Z)V

    goto :goto_eb

    :cond_77
    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-virtual {v2}, Lmiui/animation/styles/PropertyStyle;->isRunning()Z

    move-result v2

    if-nez v2, :cond_eb

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_e6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v4}, Lmiui/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toTag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "target object = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    const/4 v0, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "begin velocity = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p1, v5}, Lmiui/animation/IAnimTarget;->getVelocity(Lmiui/animation/property/FloatProperty;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-static {v2, v4}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e6
    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-virtual {v0}, Lmiui/animation/styles/PropertyStyle;->start()V

    :cond_eb
    :goto_eb
    return-void
.end method

.method getRunningTime()J
    .registers 3

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lmiui/animation/styles/PropertyStyle;->getRunningTime()J

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method isAnimEnd(J)Z
    .registers 5

    iget-wide v0, p0, Lmiui/animation/internal/AnimRunningInfo;->startTime:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_12

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lmiui/animation/styles/PropertyStyle;->isRunning()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method isFinished()Z
    .registers 3

    iget v0, p0, Lmiui/animation/internal/AnimRunningInfo;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isPhysicsWithVelocity()Z
    .registers 5

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    iget v0, v0, Lmiui/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiui/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Lmiui/animation/IAnimTarget;->getVelocity(Lmiui/animation/property/FloatProperty;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method isRunning()Z
    .registers 4

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    iget v0, p0, Lmiui/animation/internal/AnimRunningInfo;->status:I

    if-eq v0, v1, :cond_c

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    :cond_c
    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method run(J)V
    .registers 4

    invoke-virtual {p0}, Lmiui/animation/internal/AnimRunningInfo;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-virtual {v0, p1, p2}, Lmiui/animation/styles/PropertyStyle;->update(J)V

    :cond_b
    return-void
.end method

.method setConfig(Lmiui/animation/base/AnimConfigLink;)V
    .registers 4

    iput-object p1, p0, Lmiui/animation/internal/AnimRunningInfo;->config:Lmiui/animation/base/AnimConfigLink;

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p1, v0}, Lmiui/animation/base/AnimConfigLink;->getEase(Lmiui/animation/property/FloatProperty;)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    iput-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p1, v0, v1}, Lmiui/animation/base/AnimConfigLink;->getFlags(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/animation/internal/AnimRunningInfo;->flags:J

    return-void
.end method

.method setFromInfo(Lmiui/animation/internal/TransitionInfo;)V
    .registers 4

    iget-object v0, p1, Lmiui/animation/internal/TransitionInfo;->fromPropValues:Landroid/util/ArrayMap;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->fromValue:Ljava/lang/Number;

    return-void
.end method

.method setPending(Lmiui/animation/internal/AnimRunningInfo;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lmiui/animation/internal/AnimRunningInfo;->status:I

    iput-object p1, p0, Lmiui/animation/internal/AnimRunningInfo;->pending:Lmiui/animation/internal/AnimRunningInfo;

    const/4 v0, -0x1

    iput v0, p1, Lmiui/animation/internal/AnimRunningInfo;->status:I

    return-void
.end method

.method setToInfo(Lmiui/animation/internal/TransitionInfo;)V
    .registers 5

    iget-object v0, p1, Lmiui/animation/internal/TransitionInfo;->toPropValues:Landroid/util/ArrayMap;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->toValue:Ljava/lang/Number;

    iget-object v0, p1, Lmiui/animation/internal/TransitionInfo;->toTag:Ljava/lang/Object;

    iput-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v0, p1, Lmiui/animation/internal/TransitionInfo;->toFlags:Landroid/util/ArrayMap;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/animation/internal/AnimRunningInfo;->toFlags:J

    :cond_22
    return-void
.end method

.method stop()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/animation/internal/AnimRunningInfo;->stop(Z)V

    return-void
.end method

.method stop(Z)V
    .registers 10

    invoke-virtual {p0}, Lmiui/animation/internal/AnimRunningInfo;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v0, :cond_82

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnimRunningInfo, stop "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v4}, Lmiui/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toTag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "property = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v6}, Lmiui/animation/property/FloatProperty;->getName()Ljava/lang/String;

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

    iget-object v7, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    instance-of v7, v7, Lmiui/animation/property/IIntValueProperty;

    if-eqz v7, :cond_70

    iget-object v7, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-virtual {v7}, Lmiui/animation/styles/PropertyStyle;->getCurrentIntValue()I

    move-result v7

    int-to-float v7, v7

    goto :goto_76

    :cond_70
    iget-object v7, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-virtual {v7}, Lmiui/animation/styles/PropertyStyle;->getCurrentValue()F

    move-result v7

    :goto_76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_82
    iput v3, p0, Lmiui/animation/internal/AnimRunningInfo;->status:I

    if-eqz p1, :cond_8c

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-virtual {v0}, Lmiui/animation/styles/PropertyStyle;->end()V

    goto :goto_95

    :cond_8c
    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    iput-boolean v1, v0, Lmiui/animation/listener/UpdateInfo;->isCanceled:Z

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-virtual {v0}, Lmiui/animation/styles/PropertyStyle;->cancel()V

    :goto_95
    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->pending:Lmiui/animation/internal/AnimRunningInfo;

    if-eqz v0, :cond_9b

    iput v2, v0, Lmiui/animation/internal/AnimRunningInfo;->status:I

    :cond_9b
    return-void
.end method

.method update(Lmiui/animation/internal/TransitionInfo;J)V
    .registers 12

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    iget v0, v0, Lmiui/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiui/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v0

    iget-object v1, p1, Lmiui/animation/internal/TransitionInfo;->config:Lmiui/animation/base/AnimConfigLink;

    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v1, v2}, Lmiui/animation/base/AnimConfigLink;->getEase(Lmiui/animation/property/FloatProperty;)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    iput-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    iget v1, v1, Lmiui/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v1}, Lmiui/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v1

    invoke-virtual {p0, p1}, Lmiui/animation/internal/AnimRunningInfo;->setToInfo(Lmiui/animation/internal/TransitionInfo;)V

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_80

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update anim for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v4}, Lmiui/animation/property/FloatProperty;->getName()Ljava/lang/String;

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

    iget-object v6, p0, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lmiui/animation/internal/AnimRunningInfo;->toValue:Ljava/lang/Number;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newEase = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lmiui/animation/internal/AnimRunningInfo;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_80
    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    if-eqz v2, :cond_a5

    if-ne v0, v1, :cond_a5

    if-nez v1, :cond_89

    goto :goto_a5

    :cond_89
    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_96

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "update anim values"

    invoke-static {v3, v2}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_96
    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    iget-object v3, p1, Lmiui/animation/internal/TransitionInfo;->config:Lmiui/animation/base/AnimConfigLink;

    invoke-virtual {v2, v3}, Lmiui/animation/styles/PropertyStyle;->setConfig(Lmiui/animation/base/AnimConfigLink;)V

    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    iget-object v3, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-direct {p0, v2, v3}, Lmiui/animation/internal/AnimRunningInfo;->setValue(Lmiui/animation/IAnimTarget;Lmiui/animation/styles/PropertyStyle;)Z

    goto :goto_d7

    :cond_a5
    :goto_a5
    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_b2

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "update anim, clear old and begin new"

    invoke-static {v3, v2}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b2
    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    if-eqz v2, :cond_c4

    invoke-virtual {v2}, Lmiui/animation/styles/PropertyStyle;->clear()V

    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->fromValue:Ljava/lang/Number;

    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    iget-object v3, p1, Lmiui/animation/internal/TransitionInfo;->config:Lmiui/animation/base/AnimConfigLink;

    invoke-virtual {v2, v3}, Lmiui/animation/styles/PropertyStyle;->setConfig(Lmiui/animation/base/AnimConfigLink;)V

    goto :goto_d2

    :cond_c4
    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    iget-object v3, p0, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v4, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    iget-object v5, p1, Lmiui/animation/internal/TransitionInfo;->config:Lmiui/animation/base/AnimConfigLink;

    invoke-static {v2, v3, v4, v5}, Lmiui/animation/styles/StyleFactory;->createAnimStyle(Lmiui/animation/IAnimTarget;Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/styles/PropertyStyle;

    move-result-object v2

    iput-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    :goto_d2
    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    invoke-virtual {p0, v2, p2, p3}, Lmiui/animation/internal/AnimRunningInfo;->begin(Lmiui/animation/IAnimTarget;J)V

    :goto_d7
    return-void
.end method

.method updateToDate()Lmiui/animation/listener/UpdateInfo;
    .registers 4

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    iget-wide v1, p0, Lmiui/animation/internal/AnimRunningInfo;->transId:J

    iput-wide v1, v0, Lmiui/animation/listener/UpdateInfo;->transId:J

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    instance-of v1, v0, Lmiui/animation/property/IIntValueProperty;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    check-cast v0, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {v2, v0}, Lmiui/animation/IAnimTarget;->getIntValue(Lmiui/animation/property/IIntValueProperty;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/animation/listener/UpdateInfo;->setValue(Ljava/lang/Number;)V

    goto :goto_2d

    :cond_1e
    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    invoke-virtual {v2, v0}, Lmiui/animation/IAnimTarget;->getValue(Lmiui/animation/property/FloatProperty;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/animation/listener/UpdateInfo;->setValue(Ljava/lang/Number;)V

    :goto_2d
    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    iput-object v1, v0, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    iget v0, v0, Lmiui/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiui/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v1, v2}, Lmiui/animation/IAnimTarget;->getVelocity(Lmiui/animation/property/FloatProperty;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lmiui/animation/listener/UpdateInfo;->velocity:F

    goto :goto_50

    :cond_4b
    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    const/4 v1, 0x0

    iput v1, v0, Lmiui/animation/listener/UpdateInfo;->velocity:F

    :goto_50
    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    iput-object v1, v0, Lmiui/animation/listener/UpdateInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    invoke-virtual {p0}, Lmiui/animation/internal/AnimRunningInfo;->isFinished()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/animation/listener/UpdateInfo;->setComplete(Z)V

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    return-object v0
.end method
