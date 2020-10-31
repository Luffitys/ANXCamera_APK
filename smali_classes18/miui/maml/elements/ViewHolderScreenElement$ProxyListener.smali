.class Lmiui/maml/elements/ViewHolderScreenElement$ProxyListener;
.super Lmiui/maml/RendererController$EmptyListener;
.source "ViewHolderScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ViewHolderScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/ViewHolderScreenElement;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/ViewHolderScreenElement;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-direct {p0}, Lmiui/maml/RendererController$EmptyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/ViewHolderScreenElement;Lmiui/maml/elements/ViewHolderScreenElement$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/elements/ViewHolderScreenElement$ProxyListener;-><init>(Lmiui/maml/elements/ViewHolderScreenElement;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public forceUpdate()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/ViewHolderScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/RendererController;->forceUpdate()V

    return-void
.end method

.method public tick(J)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ViewHolderScreenElement;->doTickChildren(J)V

    return-void
.end method

.method public triggerUpdate()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/ViewHolderScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/RendererController;->triggerUpdate()V

    return-void
.end method
