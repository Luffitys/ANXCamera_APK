.class Landroid/view/ViewDebug$PictureCallbackHandler;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Landroid/graphics/HardwareRenderer$PictureCapturedCallback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PictureCallbackHandler"
.end annotation


# instance fields
.field private final mCallback:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/graphics/Picture;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/graphics/Picture;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderThread:Ljava/lang/Thread;

.field private final mRenderer:Landroid/graphics/HardwareRenderer;

.field private mStopListening:Z


# direct methods
.method private constructor <init>(Landroid/graphics/HardwareRenderer;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/HardwareRenderer;",
            "Ljava/util/function/Function<",
            "Landroid/graphics/Picture;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    iput-object p1, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mRenderer:Landroid/graphics/HardwareRenderer;

    iput-object p2, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mCallback:Ljava/util/function/Function;

    iput-object p3, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p0}, Landroid/graphics/HardwareRenderer;->setPictureCaptureCallback(Landroid/graphics/HardwareRenderer$PictureCapturedCallback;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/HardwareRenderer;Ljava/util/function/Function;Ljava/util/concurrent/Executor;Landroid/view/ViewDebug$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewDebug$PictureCallbackHandler;-><init>(Landroid/graphics/HardwareRenderer;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mStopListening:Z

    iget-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mRenderer:Landroid/graphics/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->setPictureCaptureCallback(Landroid/graphics/HardwareRenderer$PictureCapturedCallback;)V

    return-void
.end method

.method public onPictureCaptured(Landroid/graphics/Picture;)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mStopListening:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mRenderer:Landroid/graphics/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->setPictureCaptureCallback(Landroid/graphics/HardwareRenderer$PictureCapturedCallback;)V

    return-void

    :cond_15
    iget-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mRenderThread:Ljava/lang/Thread;

    if-nez v0, :cond_1f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mRenderThread:Ljava/lang/Thread;

    :cond_1f
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_32

    iget-object v1, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/graphics/Picture;

    :cond_32
    iget-object v1, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_44

    iget-object v1, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_47

    :cond_44
    invoke-virtual {v0}, Landroid/graphics/Picture;->close()V

    :goto_47
    return-void
.end method

.method public run()V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Picture;

    iget-boolean v1, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mStopListening:Z

    iget-object v2, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mRenderThread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_34

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Landroid/graphics/Picture;->close()V

    return-void

    :cond_22
    iget-object v2, p0, Landroid/view/ViewDebug$PictureCallbackHandler;->mCallback:Ljava/util/function/Function;

    invoke-interface {v2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {p0}, Landroid/view/ViewDebug$PictureCallbackHandler;->close()V

    :cond_33
    return-void

    :cond_34
    invoke-virtual {p0}, Landroid/view/ViewDebug$PictureCallbackHandler;->close()V

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ViewDebug#startRenderingCommandsCapture must be given an executor that invokes asynchronously"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
