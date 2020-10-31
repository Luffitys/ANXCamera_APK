.class Lmiui/maml/elements/TextScreenElement$3;
.super Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;
.source "TextScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/TextScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getIntValue(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1}, Lmiui/maml/elements/TextScreenElement$3;->getIntValue(Lmiui/maml/elements/AnimatedScreenElement;)I

    move-result p1

    return p1
.end method

.method public getIntValue(Lmiui/maml/elements/AnimatedScreenElement;)I
    .registers 4

    instance-of v0, p1, Lmiui/maml/elements/TextScreenElement;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Lmiui/maml/elements/TextScreenElement;

    # getter for: Lmiui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lmiui/maml/folme/PropertyWrapper;
    invoke-static {v0}, Lmiui/maml/elements/TextScreenElement;->access$200(Lmiui/maml/elements/TextScreenElement;)Lmiui/maml/folme/PropertyWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int v0, v0

    return v0

    :cond_12
    const/high16 v0, -0x1000000

    return v0
.end method

.method public bridge synthetic setIntValue(Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/TextScreenElement$3;->setIntValue(Lmiui/maml/elements/AnimatedScreenElement;I)V

    return-void
.end method

.method public setIntValue(Lmiui/maml/elements/AnimatedScreenElement;I)V
    .registers 6

    instance-of v0, p1, Lmiui/maml/elements/TextScreenElement;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lmiui/maml/elements/TextScreenElement;

    # getter for: Lmiui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lmiui/maml/folme/PropertyWrapper;
    invoke-static {v0}, Lmiui/maml/elements/TextScreenElement;->access$200(Lmiui/maml/elements/TextScreenElement;)Lmiui/maml/folme/PropertyWrapper;

    move-result-object v0

    int-to-double v1, p2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/folme/PropertyWrapper;->setValue(D)V

    :cond_f
    return-void
.end method

.method public bridge synthetic setVelocityValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/TextScreenElement$3;->setVelocityValue(Lmiui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method

.method public setVelocityValue(Lmiui/maml/elements/AnimatedScreenElement;F)V
    .registers 6

    instance-of v0, p1, Lmiui/maml/elements/TextScreenElement;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lmiui/maml/elements/TextScreenElement;

    # getter for: Lmiui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lmiui/maml/folme/PropertyWrapper;
    invoke-static {v0}, Lmiui/maml/elements/TextScreenElement;->access$200(Lmiui/maml/elements/TextScreenElement;)Lmiui/maml/folme/PropertyWrapper;

    move-result-object v0

    float-to-double v1, p2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/folme/PropertyWrapper;->setVelocity(D)V

    :cond_f
    return-void
.end method
