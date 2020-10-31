.class public abstract Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;
.super Lmiui/animation/property/ColorProperty;
.source "AnimatedProperty.java"

# interfaces
.implements Lmiui/maml/folme/IAnimatedProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/folme/AnimatedProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AnimatedColorProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/property/ColorProperty<",
        "Lmiui/maml/elements/AnimatedScreenElement;",
        ">;",
        "Lmiui/maml/folme/IAnimatedProperty<",
        "Lmiui/maml/elements/AnimatedScreenElement;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/animation/property/ColorProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method
