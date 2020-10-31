.class public Lmiui/maml/SingleRootListener;
.super Ljava/lang/Object;
.source "SingleRootListener.java"

# interfaces
.implements Lmiui/maml/RendererController$Listener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SingleRootListener"


# instance fields
.field private mRenderable:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/maml/RendererController$IRenderable;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RendererController$IRenderable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lmiui/maml/SingleRootListener;->setRoot(Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {p0, p2}, Lmiui/maml/SingleRootListener;->setRenderable(Lmiui/maml/RendererController$IRenderable;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/RendererController$IRenderable;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_11

    invoke-interface {v0}, Lmiui/maml/RendererController$IRenderable;->doRender()V

    :cond_11
    return-void
.end method

.method public finish()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->finish()V

    return-void
.end method

.method public forceUpdate()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/RendererController$IRenderable;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_18

    instance-of v1, v0, Lmiui/maml/RendererController$ISelfUpdateRenderable;

    if-eqz v1, :cond_18

    move-object v1, v0

    check-cast v1, Lmiui/maml/RendererController$ISelfUpdateRenderable;

    invoke-interface {v1}, Lmiui/maml/RendererController$ISelfUpdateRenderable;->forceUpdate()V

    :cond_18
    return-void
.end method

.method public init()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->init()V

    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onHover(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public pause()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->pause()V

    return-void
.end method

.method public resume()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->resume()V

    return-void
.end method

.method public setRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .registers 3

    if-eqz p1, :cond_8

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Lmiui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setRoot(Lmiui/maml/ScreenElementRoot;)V
    .registers 4

    if-eqz p1, :cond_5

    iput-object p1, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-void

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "root is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tick(J)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/ScreenElementRoot;->tick(J)V

    return-void
.end method

.method public triggerUpdate()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/RendererController$IRenderable;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_18

    instance-of v1, v0, Lmiui/maml/RendererController$ISelfUpdateRenderable;

    if-eqz v1, :cond_18

    move-object v1, v0

    check-cast v1, Lmiui/maml/RendererController$ISelfUpdateRenderable;

    invoke-interface {v1}, Lmiui/maml/RendererController$ISelfUpdateRenderable;->triggerUpdate()V

    :cond_18
    return-void
.end method
