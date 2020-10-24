.class public final Landroidx/heifwriter/HeifWriter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final DEBUG:Z = false

.field public static final INPUT_MODE_BITMAP:I = 0x2

.field public static final INPUT_MODE_BUFFER:I = 0x0

.field public static final INPUT_MODE_SURFACE:I = 0x1

.field private static final MUXER_DATA_FLAG:I = 0x10

.field private static final TAG:Ljava/lang/String; = "HeifWriter"


# instance fields
.field private final mExifList:Ljava/util/List;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

.field private final mInputMode:I

.field final mMaxImages:I

.field mMuxer:Landroid/media/MediaMuxer;

.field final mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mNumTiles:I

.field mOutputIndex:I

.field final mPrimaryIndex:I

.field final mResultWaiter:Landroidx/heifwriter/HeifWriter$ResultWaiter;

.field final mRotation:I

.field private mStarted:Z

.field mTrackIndexArray:[I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/FileDescriptor;IIIZIIIILandroid/os/Handler;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroidx/heifwriter/HeifWriter$ResultWaiter;

    invoke-direct {v4}, Landroidx/heifwriter/HeifWriter$ResultWaiter;-><init>()V

    iput-object v4, v0, Landroidx/heifwriter/HeifWriter;->mResultWaiter:Landroidx/heifwriter/HeifWriter$ResultWaiter;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v0, Landroidx/heifwriter/HeifWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroidx/heifwriter/HeifWriter;->mExifList:Ljava/util/List;

    if-ge v3, v2, :cond_3

    const/4 v4, 0x1

    iput v4, v0, Landroidx/heifwriter/HeifWriter;->mNumTiles:I

    move/from16 v4, p5

    iput v4, v0, Landroidx/heifwriter/HeifWriter;->mRotation:I

    move/from16 v4, p10

    iput v4, v0, Landroidx/heifwriter/HeifWriter;->mInputMode:I

    iput v2, v0, Landroidx/heifwriter/HeifWriter;->mMaxImages:I

    iput v3, v0, Landroidx/heifwriter/HeifWriter;->mPrimaryIndex:I

    const/4 v2, 0x0

    if-eqz p11, :cond_0

    invoke-virtual/range {p11 .. p11}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_1

    new-instance v2, Landroid/os/HandlerThread;

    const/4 v3, -0x2

    const-string v4, "HeifEncoderThread"

    invoke-direct {v2, v4, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Landroidx/heifwriter/HeifWriter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    iget-object v2, v0, Landroidx/heifwriter/HeifWriter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_1

    :cond_1
    iput-object v2, v0, Landroidx/heifwriter/HeifWriter;->mHandlerThread:Landroid/os/HandlerThread;

    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Landroidx/heifwriter/HeifWriter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    new-instance v3, Landroid/media/MediaMuxer;

    if-eqz v1, :cond_2

    invoke-direct {v3, p1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    move-object v1, p2

    invoke-direct {v3, p2, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    :goto_2
    iput-object v3, v0, Landroidx/heifwriter/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    new-instance v1, Landroidx/heifwriter/HeifEncoder;

    iget v9, v0, Landroidx/heifwriter/HeifWriter;->mInputMode:I

    iget-object v10, v0, Landroidx/heifwriter/HeifWriter;->mHandler:Landroid/os/Handler;

    new-instance v11, Landroidx/heifwriter/HeifWriter$HeifCallback;

    invoke-direct {v11, p0}, Landroidx/heifwriter/HeifWriter$HeifCallback;-><init>(Landroidx/heifwriter/HeifWriter;)V

    move-object v4, v1

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v4 .. v11}, Landroidx/heifwriter/HeifEncoder;-><init>(IIZIILandroid/os/Handler;Landroidx/heifwriter/HeifEncoder$Callback;)V

    iput-object v1, v0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid maxImages ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") or primaryIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkMode(I)V
    .locals 2

    iget v0, p0, Landroidx/heifwriter/HeifWriter;->mInputMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not valid in input mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/heifwriter/HeifWriter;->mInputMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkStarted(Z)V
    .locals 0

    iget-boolean p0, p0, Landroidx/heifwriter/HeifWriter;->mStarted:Z

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already started"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkStartedAndMode(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifWriter;->checkStarted(Z)V

    invoke-direct {p0, p1}, Landroidx/heifwriter/HeifWriter;->checkMode(I)V

    return-void
.end method


# virtual methods
.method public addBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifWriter;->checkStartedAndMode(I)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    invoke-virtual {v0, p1}, Landroidx/heifwriter/HeifEncoder;->addBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addExifData(I[BII)V
    .locals 1
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifWriter;->checkStarted(Z)V

    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p2, p0, Landroidx/heifwriter/HeifWriter;->mExifList:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Landroidx/heifwriter/HeifWriter;->mExifList:Ljava/util/List;

    new-instance p4, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p4, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/heifwriter/HeifWriter;->processExifData()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public addYuvBuffer(I[B)V
    .locals 1
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifWriter;->checkStartedAndMode(I)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    invoke-virtual {v0, p1, p2}, Landroidx/heifwriter/HeifEncoder;->addYuvBuffer(I[B)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/heifwriter/HeifWriter$1;

    invoke-direct {v1, p0}, Landroidx/heifwriter/HeifWriter$1;-><init>(Landroidx/heifwriter/HeifWriter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method closeInternal()V
    .locals 2

    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    iput-object v1, p0, Landroidx/heifwriter/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    :cond_0
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/heifwriter/HeifEncoder;->close()V

    monitor-enter p0

    :try_start_0
    iput-object v1, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifWriter;->checkStarted(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifWriter;->checkMode(I)V

    iget-object p0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    invoke-virtual {p0}, Landroidx/heifwriter/HeifEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method processExifData()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mExifList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/heifwriter/HeifWriter;->mExifList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/heifwriter/HeifWriter;->mExifList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const-wide/16 v5, 0x0

    const/16 v7, 0x10

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iget-object v2, p0, Landroidx/heifwriter/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v3, p0, Landroidx/heifwriter/HeifWriter;->mTrackIndexArray:[I

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v3, v3, v4

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setInputEndOfStreamTimestamp(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifWriter;->checkStartedAndMode(I)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    invoke-virtual {v0, p1, p2}, Landroidx/heifwriter/HeifEncoder;->setEndOfInputStreamTimestamp(J)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifWriter;->checkStarted(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/heifwriter/HeifWriter;->mStarted:Z

    iget-object p0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    invoke-virtual {p0}, Landroidx/heifwriter/HeifEncoder;->start()V

    return-void
.end method

.method public stop(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifWriter;->checkStarted(Z)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mHeifEncoder:Landroidx/heifwriter/HeifEncoder;

    invoke-virtual {v0}, Landroidx/heifwriter/HeifEncoder;->stopAsync()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/heifwriter/HeifWriter;->mResultWaiter:Landroidx/heifwriter/HeifWriter$ResultWaiter;

    invoke-virtual {v0, p1, p2}, Landroidx/heifwriter/HeifWriter$ResultWaiter;->waitForResult(J)V

    invoke-virtual {p0}, Landroidx/heifwriter/HeifWriter;->processExifData()V

    invoke-virtual {p0}, Landroidx/heifwriter/HeifWriter;->closeInternal()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
