.class public Lmiui/maml/RendererCore;
.super Ljava/lang/Object;
.source "RendererCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/RendererCore$OnReleaseListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererCore"


# instance fields
.field private mCleaned:Z

.field private mMultipleRenderable:Lmiui/maml/MultipleRenderable;

.field private mOnReleaseListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/maml/RendererCore$OnReleaseListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReleased:Z

.field private mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/maml/MultipleRenderable;

    invoke-direct {v0}, Lmiui/maml/MultipleRenderable;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    iput-object p1, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p1, v0}, Lmiui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lmiui/maml/RendererController$IRenderable;)V

    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfInit()V

    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->attachToVsync()V

    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lmiui/maml/RendererCore;->mCleaned:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3a

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v0, p1}, Lmiui/maml/MultipleRenderable;->add(Lmiui/maml/RendererController$IRenderable;)V

    const-string v0, "RendererCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v2}, Lmiui/maml/MultipleRenderable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererCore;->mReleased:Z
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_3a

    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cleanUp()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererCore;->mCleaned:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanUp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RendererCore"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->detachFromVsync()V

    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfFinish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    :cond_2c
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/maml/RendererCore;->cleanUp()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getRoot()Lmiui/maml/ScreenElementRoot;
    .registers 2

    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method public declared-synchronized pauseRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lmiui/maml/RendererCore;->mCleaned:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_30

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v0, p1}, Lmiui/maml/MultipleRenderable;->pause(Lmiui/maml/RendererController$IRenderable;)I

    move-result v0

    if-nez v0, :cond_2e

    const-string v1, "RendererCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "self pause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->selfPause()V
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_30

    :cond_2e
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lmiui/maml/RendererCore;->mCleaned:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_63

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v0, p1}, Lmiui/maml/MultipleRenderable;->remove(Lmiui/maml/RendererController$IRenderable;)V

    const-string v0, "RendererCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v2}, Lmiui/maml/MultipleRenderable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v0}, Lmiui/maml/MultipleRenderable;->size()I

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfPause()V

    iget-boolean v0, p0, Lmiui/maml/RendererCore;->mReleased:Z

    if-nez v0, :cond_5e

    iget-object v0, p0, Lmiui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lmiui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lmiui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/RendererCore$OnReleaseListener;

    invoke-interface {v0, p0}, Lmiui/maml/RendererCore$OnReleaseListener;->OnRendererCoreReleased(Lmiui/maml/RendererCore;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Lmiui/maml/RendererCore;->cleanUp()V

    :cond_5e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererCore;->mReleased:Z
    :try_end_61
    .catchall {:try_start_7 .. :try_end_61} :catchall_63

    :cond_61
    monitor-exit p0

    return-void

    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public render(Landroid/graphics/Canvas;)V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/RendererCore;->mCleaned:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public declared-synchronized resumeRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lmiui/maml/RendererCore;->mCleaned:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2d

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v0, p1}, Lmiui/maml/MultipleRenderable;->resume(Lmiui/maml/RendererController$IRenderable;)I

    const-string v0, "RendererCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "self resume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfResume()V
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_7
    return-void
.end method

.method public setOnReleaseListener(Lmiui/maml/RendererCore$OnReleaseListener;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    return-void
.end method
