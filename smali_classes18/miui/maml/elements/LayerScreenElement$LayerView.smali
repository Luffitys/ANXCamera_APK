.class Lmiui/maml/elements/LayerScreenElement$LayerView;
.super Landroid/view/View;
.source "LayerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/LayerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayerView"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/LayerScreenElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/LayerScreenElement;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/elements/LayerScreenElement$LayerView;->this$0:Lmiui/maml/elements/LayerScreenElement;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement$LayerView;->this$0:Lmiui/maml/elements/LayerScreenElement;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/LayerScreenElement;->doRender(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement$LayerView;->this$0:Lmiui/maml/elements/LayerScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/LayerScreenElement;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->doneRender()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement$LayerView;->this$0:Lmiui/maml/elements/LayerScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/LayerScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method
