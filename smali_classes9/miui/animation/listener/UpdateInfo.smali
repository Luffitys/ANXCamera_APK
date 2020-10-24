.class public Lmiui/animation/listener/UpdateInfo;
.super Ljava/lang/Object;
.source ""


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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findBy(Ljava/util/Collection;Lmiui/animation/property/FloatProperty;)Lmiui/animation/listener/UpdateInfo;
    .locals 2

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/listener/UpdateInfo;

    iget-object v1, v0, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiui/animation/listener/UpdateInfo;
    .locals 2

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/listener/UpdateInfo;

    iget-object v1, v0, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getFloatValue()F
    .locals 0

    iget-object p0, p0, Lmiui/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getIntValue()I
    .locals 0

    iget-object p0, p0, Lmiui/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lmiui/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_3

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lmiui/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lmiui/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    iget-object p0, p0, Lmiui/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/animation/listener/UpdateInfo;->isEndByUser:Z

    iput-boolean v0, p0, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    iput-boolean v0, p0, Lmiui/animation/listener/UpdateInfo;->isCanceled:Z

    return-void
.end method

.method public setComplete(Z)V
    .locals 2

    iput-boolean p1, p0, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/animation/internal/AnimRunner;->getRunningTime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/animation/listener/UpdateInfo;->endTime:J

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/listener/UpdateInfo;->mValue:Ljava/lang/Number;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

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

    iget-boolean p0, p0, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
