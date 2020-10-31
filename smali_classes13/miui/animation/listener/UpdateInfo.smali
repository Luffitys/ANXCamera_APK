.class public Lmiui/animation/listener/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"


# instance fields
.field public anim:Lmiui/animation/styles/PropertyStyle;

.field public endTime:J

.field public isCanceled:Z

.field public isCompleted:Z

.field public isEndByUser:Z

.field private mValue:Ljava/lang/Number;

.field public property:Lmiui/animation/property/FloatProperty;

.field public transId:J

.field public velocity:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findBy(Ljava/util/Collection;Lmiui/animation/property/FloatProperty;)Lmiui/animation/listener/UpdateInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;",
            "Lmiui/animation/property/FloatProperty;",
            ")",
            "Lmiui/animation/listener/UpdateInfo;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/listener/UpdateInfo;

    iget-object v2, v1, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    return-object v1

    :cond_19
    goto :goto_4

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiui/animation/listener/UpdateInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/animation/listener/UpdateInfo;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/listener/UpdateInfo;

    iget-object v2, v1, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v2}, Lmiui/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return-object v1

    :cond_1d
    goto :goto_4

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getFloatValue()F
    .registers 2

    iget-object v0, p0, Lmiui/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .registers 2

    iget-object v0, p0, Lmiui/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_28

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_9

    goto :goto_28

    :cond_9
    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_1d

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_12

    goto :goto_1d

    :cond_12
    iget-object v0, p0, Lmiui/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lmiui/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_28
    :goto_28
    iget-object v0, p0, Lmiui/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/animation/listener/UpdateInfo;->isEndByUser:Z

    iput-boolean v0, p0, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    iput-boolean v0, p0, Lmiui/animation/listener/UpdateInfo;->isCanceled:Z

    return-void
.end method

.method public setComplete(Z)V
    .registers 4

    iput-boolean p1, p0, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    if-eqz p1, :cond_e

    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/internal/AnimRunner;->getRunningTime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/animation/listener/UpdateInfo;->endTime:J

    :cond_e
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateInfo{property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", velocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/animation/listener/UpdateInfo;->velocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
