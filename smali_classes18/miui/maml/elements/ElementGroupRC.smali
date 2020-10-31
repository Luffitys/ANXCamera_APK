.class public abstract Lmiui/maml/elements/ElementGroupRC;
.super Lmiui/maml/elements/ElementGroup;
.source "ElementGroupRC.java"


# instance fields
.field protected mController:Lmiui/maml/RendererController;

.field private mFrameRate:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    const-string v0, "frameRate"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/ElementGroupRC;->mFrameRate:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1f

    new-instance v0, Lmiui/maml/RendererController;

    invoke-direct {v0}, Lmiui/maml/RendererController;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ElementGroupRC;->mController:Lmiui/maml/RendererController;

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ElementGroupRC;->onControllerCreated(Lmiui/maml/RendererController;)V

    iget-object v0, p0, Lmiui/maml/elements/ElementGroupRC;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->init()V

    :cond_1f
    return-void
.end method


# virtual methods
.method public getRendererController()Lmiui/maml/RendererController;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/ElementGroupRC;->mController:Lmiui/maml/RendererController;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public init()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    iget v0, p0, Lmiui/maml/elements/ElementGroupRC;->mFrameRate:F

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ElementGroupRC;->requestFramerate(F)V

    return-void
.end method

.method protected abstract onControllerCreated(Lmiui/maml/RendererController;)V
.end method
