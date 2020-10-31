.class public Lmiui/maml/elements/CanvasDrawerElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "CanvasDrawerElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "CanvasDrawer"


# instance fields
.field private mCanvasVar:Lmiui/maml/data/IndexedVariable;

.field private mDrawCommands:Lmiui/maml/CommandTrigger;

.field private mHVar:Lmiui/maml/data/IndexedVariable;

.field private mWVar:Lmiui/maml/data/IndexedVariable;

.field private mXVar:Lmiui/maml/data/IndexedVariable;

.field private mYVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iget-object v0, p0, Lmiui/maml/elements/CanvasDrawerElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiui/maml/elements/CanvasDrawerElement;->mTriggers:Lmiui/maml/CommandTriggers;

    const-string v1, "draw"

    invoke-virtual {v0, v1}, Lmiui/maml/CommandTriggers;->find(Ljava/lang/String;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lmiui/maml/CommandTrigger;

    :cond_11
    iget-object v0, p0, Lmiui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lmiui/maml/CommandTrigger;

    if-nez v0, :cond_1c

    const-string v0, "CanvasDrawer"

    const-string v1, "no draw commands."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    invoke-virtual {p0}, Lmiui/maml/elements/CanvasDrawerElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "__x"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mXVar:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "__y"

    invoke-direct {v1, v2, v0, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mYVar:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "__w"

    invoke-direct {v1, v2, v0, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mWVar:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    const-string v2, "__h"

    invoke-direct {v1, v2, v0, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mHVar:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/CanvasDrawerElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "__objCanvas"

    invoke-direct {v1, v4, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/CanvasDrawerElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;

    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 9

    iget-object v0, p0, Lmiui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lmiui/maml/elements/CanvasDrawerElement;->getWidthRaw()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/CanvasDrawerElement;->getHeightRaw()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lmiui/maml/elements/CanvasDrawerElement;->getLeft(FF)F

    move-result v3

    invoke-virtual {p0, v2, v1}, Lmiui/maml/elements/CanvasDrawerElement;->getTop(FF)F

    move-result v2

    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mXVar:Lmiui/maml/data/IndexedVariable;

    float-to-double v5, v3

    invoke-virtual {v4, v5, v6}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mYVar:Lmiui/maml/data/IndexedVariable;

    float-to-double v5, v2

    invoke-virtual {v4, v5, v6}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mWVar:Lmiui/maml/data/IndexedVariable;

    float-to-double v5, v0

    invoke-virtual {v4, v5, v6}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mHVar:Lmiui/maml/data/IndexedVariable;

    float-to-double v5, v1

    invoke-virtual {v4, v5, v6}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v4, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lmiui/maml/CommandTrigger;

    invoke-virtual {v4}, Lmiui/maml/CommandTrigger;->perform()V

    iget-object v4, p0, Lmiui/maml/elements/CanvasDrawerElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_3d
    return-void
.end method
