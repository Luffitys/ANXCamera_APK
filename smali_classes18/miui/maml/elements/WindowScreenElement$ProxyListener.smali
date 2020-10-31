.class Lmiui/maml/elements/WindowScreenElement$ProxyListener;
.super Lmiui/maml/RendererController$EmptyListener;
.source "WindowScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/WindowScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/WindowScreenElement;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/WindowScreenElement;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    invoke-direct {p0}, Lmiui/maml/RendererController$EmptyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/WindowScreenElement;Lmiui/maml/elements/WindowScreenElement$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/elements/WindowScreenElement$ProxyListener;-><init>(Lmiui/maml/elements/WindowScreenElement;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    # getter for: Lmiui/maml/elements/WindowScreenElement;->mView:Lmiui/maml/elements/WindowScreenElement$WindowView;
    invoke-static {v0}, Lmiui/maml/elements/WindowScreenElement;->access$200(Lmiui/maml/elements/WindowScreenElement;)Lmiui/maml/elements/WindowScreenElement$WindowView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/elements/WindowScreenElement$WindowView;->postInvalidate()V

    return-void
.end method

.method public forceUpdate()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/WindowScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/RendererController;->triggerUpdate()V

    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/WindowScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/WindowScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public tick(J)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/WindowScreenElement;->doTick(J)V

    return-void
.end method

.method public triggerUpdate()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/WindowScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/WindowScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/RendererController;->triggerUpdate()V

    return-void
.end method
