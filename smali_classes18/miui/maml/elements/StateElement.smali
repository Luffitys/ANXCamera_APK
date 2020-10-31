.class public abstract Lmiui/maml/elements/StateElement;
.super Lmiui/maml/elements/ScreenElement;
.source "StateElement.java"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public abstract getAnimState(Ljava/lang/String;)Lmiui/animation/controller/AnimState;
.end method

.method public abstract getProperties()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public isVisible()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public tick(J)V
    .registers 3

    return-void
.end method
