.class public Lmiuix/animation/property/ColorProperty;
.super Lmiuix/animation/property/FloatProperty;
.source ""

# interfaces
.implements Lmiuix/animation/property/IIntValueProperty;


# instance fields
.field private mColorValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lmiuix/animation/property/ColorProperty;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lmiuix/animation/property/ColorProperty;

    iget-object p0, p0, Lmiuix/animation/property/FloatProperty;->mPropertyName:Ljava/lang/String;

    iget-object p1, p1, Lmiuix/animation/property/FloatProperty;->mPropertyName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getIntValue(Ljava/lang/Object;)I
    .locals 2

    instance-of v0, p1, Lmiuix/animation/property/ValueTargetObject;

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lmiuix/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lmiuix/animation/property/ColorProperty;->mColorValue:I

    :cond_0
    iget p0, p0, Lmiuix/animation/property/ColorProperty;->mColorValue:I

    return p0
.end method

.method public getValue(Ljava/lang/Object;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lmiuix/animation/property/FloatProperty;->mPropertyName:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setIntValue(Ljava/lang/Object;I)V
    .locals 1

    iput p2, p0, Lmiuix/animation/property/ColorProperty;->mColorValue:I

    instance-of v0, p1, Lmiuix/animation/property/ValueTargetObject;

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, v0, p2}, Lmiuix/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 0

    return-void
.end method
