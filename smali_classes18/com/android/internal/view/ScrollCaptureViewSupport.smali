.class public Lcom/android/internal/view/ScrollCaptureViewSupport;
.super Ljava/lang/Object;
.source "ScrollCaptureViewSupport.java"

# interfaces
.implements Landroid/view/ScrollCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/view/ScrollCaptureCallback;"
    }
.end annotation


# instance fields
.field private mEnded:Z

.field private mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

.field private mStarted:Z

.field private mUiHandler:Landroid/os/Handler;

.field private final mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final mWeakView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    invoke-direct {v0}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mUiHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    return-void
.end method

.method static createCallback(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)Landroid/view/ScrollCaptureCallback;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;",
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "TV;>;)",
            "Landroid/view/ScrollCaptureCallback;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/view/ScrollCaptureViewSupport;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object v0
.end method

.method static synthetic lambda$onScrollCaptureImageRequest$0(Landroid/view/ScrollCaptureSession;Landroid/graphics/Rect;)V
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/view/ScrollCaptureSession;->notifyBufferSent(JLandroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public final onScrollCaptureEnd(Ljava/lang/Runnable;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mStarted:Z

    if-eqz v1, :cond_23

    iget-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mEnded:Z

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v1, v0}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onPrepareForEnd(Landroid/view/View;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mEnded:Z

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    invoke-virtual {v1}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->trimMemory()V

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->setSurface(Landroid/view/Surface;)V

    :cond_23
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final onScrollCaptureImageRequest(Landroid/view/ScrollCaptureSession;Landroid/graphics/Rect;)V
    .registers 8

    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_28

    :cond_11
    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureSession;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v1, v0, v2, p2}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    iget-object v3, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mUiHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/view/-$$Lambda$ScrollCaptureViewSupport$WhYdis6PgpbNdc_fEsMsJ4b7okA;

    invoke-direct {v4, p1, v1}, Lcom/android/internal/view/-$$Lambda$ScrollCaptureViewSupport$WhYdis6PgpbNdc_fEsMsJ4b7okA;-><init>(Landroid/view/ScrollCaptureSession;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->renderFrame(Landroid/view/View;Landroid/graphics/Rect;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void

    :cond_28
    :goto_28
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/ScrollCaptureSession;->notifyBufferSent(JLandroid/graphics/Rect;)V

    return-void
.end method

.method public final onScrollCaptureSearch(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mStarted:Z

    iput-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mEnded:Z

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v1, v0}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onAcceptSession(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v1, v0}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onComputeScrollBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_27
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final onScrollCaptureStart(Landroid/view/ScrollCaptureSession;Ljava/lang/Runnable;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mEnded:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mStarted:Z

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureSession;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->setSurface(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureSession;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_28
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method
