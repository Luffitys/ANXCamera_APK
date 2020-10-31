.class public Lmiui/animation/property/ColorProperty;
.super Lmiui/animation/property/FloatProperty;
.source "ColorProperty.java"

# interfaces
.implements Lmiui/animation/property/IIntValueProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/animation/property/FloatProperty<",
        "TT;>;",
        "Lmiui/animation/property/IIntValueProperty<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mColorValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    :cond_11
    move-object v0, p1

    check-cast v0, Lmiui/animation/property/ColorProperty;

    iget-object v1, p0, Lmiui/animation/property/ColorProperty;->mPropertyName:Ljava/lang/String;

    iget-object v2, v0, Lmiui/animation/property/ColorProperty;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public getIntValue(Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    instance-of v0, p1, Lmiui/animation/property/ValueTargetObject;

    if-eqz v0, :cond_19

    move-object v0, p1

    check-cast v0, Lmiui/animation/property/ValueTargetObject;

    invoke-virtual {p0}, Lmiui/animation/property/ColorProperty;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lmiui/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lmiui/animation/property/ColorProperty;->mColorValue:I

    :cond_19
    iget v0, p0, Lmiui/animation/property/ColorProperty;->mColorValue:I

    return v0
.end method

.method public getValue(Ljava/lang/Object;)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lmiui/animation/property/ColorProperty;->mPropertyName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setIntValue(Ljava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iput p2, p0, Lmiui/animation/property/ColorProperty;->mColorValue:I

    instance-of v0, p1, Lmiui/animation/property/ValueTargetObject;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lmiui/animation/property/ValueTargetObject;

    invoke-virtual {p0}, Lmiui/animation/property/ColorProperty;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lmiui/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public setValue(Ljava/lang/Object;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    return-void
.end method
