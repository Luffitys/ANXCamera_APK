.class Landroid/view/ViewDebug$StreamingPictureCallbackHandler;
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
    name = "StreamingPictureCallbackHandler"
.end annotation


# instance fields
.field private final mByteStream:Ljava/io/ByteArrayOutputStream;

.field private final mCallback:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/OutputStream;",
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
            "[B>;"
        }
    .end annotation
.end field

.field private mRenderThread:Ljava/lang/Thread;

.field private final mRenderer:Landroid/graphics/HardwareRenderer;

.field private mStopListening:Z


# direct methods
.method private constructor <init>(Landroid/graphics/HardwareRenderer;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/HardwareRenderer;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mByteStream:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mRenderer:Landroid/graphics/HardwareRenderer;

    iput-object p2, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mCallback:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p0}, Landroid/graphics/HardwareRenderer;->setPictureCaptureCallback(Landroid/graphics/HardwareRenderer$PictureCapturedCallback;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/HardwareRenderer;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Landroid/view/ViewDebug$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;-><init>(Landroid/graphics/HardwareRenderer;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mStopListening:Z

    iget-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mRenderer:Landroid/graphics/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->setPictureCaptureCallback(Landroid/graphics/HardwareRenderer$PictureCapturedCallback;)V

    return-void
.end method

.method public onPictureCaptured(Landroid/graphics/Picture;)V
    .registers 5

    iget-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mStopListening:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mRenderer:Landroid/graphics/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->setPictureCaptureCallback(Landroid/graphics/HardwareRenderer$PictureCapturedCallback;)V

    return-void

    :cond_15
    iget-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mRenderThread:Ljava/lang/Thread;

    if-nez v0, :cond_1f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mRenderThread:Ljava/lang/Thread;

    :cond_1f
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2f

    iget-object v1, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    const/4 v0, 0x0

    :cond_2f
    iget-object v1, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mByteStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v1}, Landroid/graphics/Picture;->writeToStream(Ljava/io/OutputStream;)V

    iget-object v1, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    iget-object v2, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mByteStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mByteStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v1, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_50

    iget-object v1, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_50
    return-void
.end method

.method public run()V
    .registers 7

    const-string v0, "ViewDebug"

    iget-object v1, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v1, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-boolean v2, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mStopListening:Z

    iget-object v3, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mRenderThread:Ljava/lang/Thread;

    if-eq v3, v4, :cond_43

    if-eqz v2, :cond_21

    return-void

    :cond_21
    const/4 v3, 0x0

    :try_start_22
    iget-object v4, p0, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->mCallback:Ljava/util/concurrent/Callable;

    invoke-interface {v4}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/OutputStream;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2a} :catch_2c

    move-object v3, v4

    goto :goto_32

    :catch_2c
    move-exception v4

    const-string v5, "Aborting rendering commands capture because callback threw exception"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    if-eqz v3, :cond_3f

    :try_start_34
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    :goto_37
    goto :goto_42

    :catch_38
    move-exception v4

    const-string v5, "Aborting rendering commands capture due to IOException writing to output stream"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    :cond_3f
    invoke-virtual {p0}, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->close()V

    :goto_42
    return-void

    :cond_43
    invoke-virtual {p0}, Landroid/view/ViewDebug$StreamingPictureCallbackHandler;->close()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "ViewDebug#startRenderingCommandsCapture must be given an executor that invokes asynchronously"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
