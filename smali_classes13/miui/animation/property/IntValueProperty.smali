.class public Lmiui/animation/property/IntValueProperty;
.super Lmiui/animation/property/ValueProperty;
.source "IntValueProperty.java"

# interfaces
.implements Lmiui/animation/property/IIntValueProperty;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIntValue(Ljava/lang/Object;)I
    .registers 5

    instance-of v0, p1, Lmiui/animation/property/ValueTargetObject;

    if-eqz v0, :cond_1a

    move-object v0, p1

    check-cast v0, Lmiui/animation/property/ValueTargetObject;

    invoke-virtual {p0}, Lmiui/animation/property/IntValueProperty;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lmiui/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public setIntValue(Ljava/lang/Object;I)V
    .registers 7

    instance-of v0, p1, Lmiui/animation/property/ValueTargetObject;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lmiui/animation/property/ValueTargetObject;

    invoke-virtual {p0}, Lmiui/animation/property/IntValueProperty;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lmiui/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntValueProperty{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/animation/property/IntValueProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
