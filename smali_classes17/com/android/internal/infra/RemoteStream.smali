.class public abstract Lcom/android/internal/infra/RemoteStream;
.super Lcom/android/internal/infra/AndroidFuture;
.source "RemoteStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RES:",
        "Ljava/lang/Object;",
        "IOSTREAM::",
        "Ljava/io/Closeable;",
        ">",
        "Lcom/android/internal/infra/AndroidFuture<",
        "TRES;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mHandleStream:Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "TIOSTREAM;TRES;>;"
        }
    .end annotation
.end field

.field private volatile mLocalPipe:Landroid/os/ParcelFileDescriptor;


# direct methods
.method private constructor <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "TIOSTREAM;TRES;>;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    iput-object p2, p0, Lcom/android/internal/infra/RemoteStream;->mHandleStream:Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;

    :try_start_5
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_f

    move v3, v1

    goto :goto_10

    :cond_f
    move v3, v2

    :goto_10
    aget-object v3, v0, v3
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_38

    :try_start_12
    invoke-interface {p1, v3}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_2c

    if-eqz v3, :cond_1a

    :try_start_17
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_1a
    if-eqz p4, :cond_1d

    move v1, v2

    :cond_1d
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/infra/RemoteStream;->mLocalPipe:Landroid/os/ParcelFileDescriptor;

    invoke-interface {p3, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/infra/RemoteStream;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_38

    goto :goto_3c

    :catchall_2c
    move-exception v1

    if-eqz v3, :cond_37

    :try_start_2f
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v2

    :try_start_34
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    throw v1
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/RemoteStream;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_3c
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;ZLcom/android/internal/infra/RemoteStream$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/infra/RemoteStream;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method static synthetic lambda$sendBytes$0(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/io/OutputStream;)Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->acceptOrThrow(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$sendBytes$1([BLjava/io/OutputStream;)Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static readAll(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x4000

    new-array v1, v1, [B

    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    nop

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    :cond_16
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9
.end method

.method public static receiveBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)Lcom/android/internal/infra/AndroidFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "[B>;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/infra/-$$Lambda$aeiZbEpH6rq4kD9vJrlAnboJGDM;->INSTANCE:Lcom/android/internal/infra/-$$Lambda$aeiZbEpH6rq4kD9vJrlAnboJGDM;

    invoke-static {p0, v0}, Lcom/android/internal/infra/RemoteStream;->receiveBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public static receiveBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "Ljava/io/InputStream;",
            "TR;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/RemoteStream$1;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/internal/infra/RemoteStream$1;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public static sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Ljava/io/OutputStream;",
            ">;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/-$$Lambda$RemoteStream$cEAy1MmFFZV4u2Yc69293eEHU20;

    invoke-direct {v0, p1}, Lcom/android/internal/infra/-$$Lambda$RemoteStream$cEAy1MmFFZV4u2Yc69293eEHU20;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    invoke-static {p0, v0}, Lcom/android/internal/infra/RemoteStream;->sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method

.method public static sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "Ljava/io/OutputStream;",
            "TR;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/RemoteStream$2;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/internal/infra/RemoteStream$2;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public static sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;[B)Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;[B)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/-$$Lambda$RemoteStream$6uKWoLJ2mpc1mLim72Ru_QU6tYI;

    invoke-direct {v0, p1}, Lcom/android/internal/infra/-$$Lambda$RemoteStream$6uKWoLJ2mpc1mLim72Ru_QU6tYI;-><init>([B)V

    invoke-static {p0, v0}, Lcom/android/internal/infra/RemoteStream;->sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract createStream(Landroid/os/ParcelFileDescriptor;)Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")TIOSTREAM;"
        }
    .end annotation
.end method

.method protected onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRES;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/internal/infra/RemoteStream;->mLocalPipe:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/infra/RemoteStream;->mLocalPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/RemoteStream;->createStream(Landroid/os/ParcelFileDescriptor;)Ljava/io/Closeable;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_21

    :try_start_6
    iget-object v1, p0, Lcom/android/internal/infra/RemoteStream;->mHandleStream:Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;

    invoke-interface {v1, v0}, Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;->applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/RemoteStream;->complete(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_15

    if-eqz v0, :cond_14

    :try_start_11
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_21

    :cond_14
    goto :goto_25

    :catchall_15
    move-exception v1

    if-eqz v0, :cond_20

    :try_start_18
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v2

    :try_start_1d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    throw v1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/RemoteStream;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_25
    return-void
.end method
