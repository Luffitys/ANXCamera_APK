.class final Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;
.super Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$CancellableTask;
.source "CircularMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SnapshotRequest"
.end annotation


# instance fields
.field private final mAudioSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

.field private final mOrientationHint:I

.field private final mSampleWriterExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mTag:Ljava/lang/Object;

.field private final mVideoClipSavingCallback:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;

.field private final mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;


# direct methods
.method private constructor <init>(Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;ILjava/lang/Object;Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$CancellableTask;-><init>()V

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "At least one non-null snapshot should be provided"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mAudioSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    iput-object p2, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    iput p3, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mOrientationHint:I

    iput-object p4, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mTag:Ljava/lang/Object;

    iput-object p5, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mVideoClipSavingCallback:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mSampleWriterExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;ILjava/lang/Object;Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;-><init>(Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;ILjava/lang/Object;Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "Failed to release the media muxer: "

    invoke-virtual {p0}, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$CancellableTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Saving request is cancelled before executing"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mSampleWriterExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mVideoClipSavingCallback:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mTag:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;->onVideoClipSavingCancelled(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "microvideo_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mTag:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".mp4"

    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v4, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mOrientationHint:I

    invoke-virtual {v3, v4}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    iget-object v4, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    iget-object v4, v4, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->format:Landroid/media/MediaFormat;

    invoke-virtual {v3, v4}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    iget-object v6, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mAudioSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mAudioSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    iget-object v6, v6, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->format:Landroid/media/MediaFormat;

    invoke-virtual {v3, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v6

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v8, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    if-eqz v8, :cond_4

    if-eq v4, v5, :cond_4

    new-instance v1, Lcom/xiaomi/camera/liveshot/writer/SampleWriter$StatusNotifier;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/xiaomi/camera/liveshot/writer/SampleWriter$StatusNotifier;-><init>(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mSampleWriterExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;

    iget-object v10, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    invoke-direct {v9, v3, v10, v4, v1}, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;-><init>(Landroid/media/MediaMuxer;Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;ILcom/xiaomi/camera/liveshot/writer/SampleWriter$StatusNotifier;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v4, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mAudioSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    if-eqz v4, :cond_5

    if-eq v6, v5, :cond_5

    iget-object v4, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mSampleWriterExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/xiaomi/camera/liveshot/writer/AudioSampleWriter;

    iget-object v8, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mAudioSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    invoke-direct {v5, v3, v8, v6, v1}, Lcom/xiaomi/camera/liveshot/writer/AudioSampleWriter;-><init>(Landroid/media/MediaMuxer;Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;ILcom/xiaomi/camera/liveshot/writer/SampleWriter$StatusNotifier;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_6

    :try_start_2
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_3
    invoke-static {}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Writing is interrupted and the generated video may be corrupted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->stop()V

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mVideoClipSavingCallback:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mVideoClipSavingCallback:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;

    iget-object v4, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mTag:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    if-nez v5, :cond_8

    const-wide/16 v5, -0x1

    goto :goto_3

    :cond_8
    iget-object v5, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    iget-wide v5, v5, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->time:J

    :goto_3
    invoke-interface {v1, v4, v2, v5, v6}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;->onVideoClipSavingCompleted(Ljava/lang/Object;Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_9
    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    invoke-static {}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_7

    :catch_3
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    :goto_4
    :try_start_5
    invoke-static {}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to save the videoclip as an mp4 file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mVideoClipSavingCallback:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mVideoClipSavingCallback:Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;

    iget-object v4, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mTag:Ljava/lang/Object;

    invoke-interface {v2, v4, v1}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;->onVideoClipSavingException(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_a
    if-eqz v3, :cond_b

    :try_start_6
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    invoke-static {}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_6
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mSampleWriterExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :catchall_1
    move-exception v1

    :goto_7
    if-eqz v3, :cond_c

    :try_start_7
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_8

    :catch_5
    invoke-static {}, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_8
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$SnapshotRequest;->mSampleWriterExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v1
.end method
