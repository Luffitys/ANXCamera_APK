.class Lmiui/maml/folme/AnimatedTarget$1;
.super Ljava/lang/Object;
.source "AnimatedTarget.java"

# interfaces
.implements Lmiui/animation/ITargetCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/folme/AnimatedTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/animation/ITargetCreator<",
        "Lmiui/maml/elements/AnimatedScreenElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createTarget(Ljava/lang/Object;)Lmiui/animation/IAnimTarget;
    .registers 2

    check-cast p1, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1}, Lmiui/maml/folme/AnimatedTarget$1;->createTarget(Lmiui/maml/elements/AnimatedScreenElement;)Lmiui/animation/IAnimTarget;

    move-result-object p1

    return-object p1
.end method

.method public createTarget(Lmiui/maml/elements/AnimatedScreenElement;)Lmiui/animation/IAnimTarget;
    .registers 3

    new-instance v0, Lmiui/maml/folme/AnimatedTarget;

    invoke-direct {v0, p1}, Lmiui/maml/folme/AnimatedTarget;-><init>(Lmiui/maml/elements/AnimatedScreenElement;)V

    return-object v0
.end method
