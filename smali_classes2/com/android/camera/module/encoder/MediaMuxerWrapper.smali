.class public Lcom/android/camera/module/encoder/MediaMuxerWrapper;
.super Ljava/lang/Object;
.source "MediaMuxerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaMuxerWrapper"


# instance fields
.field private mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

.field private mEncoderCount:I

.field private mIsStarted:Z

.field private mMediaMuxer:Landroid/media/MediaMuxer;

.field private mStartedCount:I

.field private mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, v2}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v2, Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    sget-object v3, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open file failed, path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iput v1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    iput v1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    iput-boolean v1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z

    return-void

    :goto_2
    invoke-static {v0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method addEncoder(Lcom/android/camera/module/encoder/MediaEncoder;)V
    .locals 3

    instance-of v0, p1, Lcom/android/camera/module/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "video encoder already added!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of v0, p1, Lcom/android/camera/module/encoder/MediaAudioEncoder;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-nez v0, :cond_4

    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "audio encoder already added!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unsupported encoder!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method declared-synchronized addTrack(Landroid/media/MediaFormat;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    sget-object v1, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrack: trackNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " trackIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "muxer already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isStarted()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public join()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "join>>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaEncoder;->join()V

    iput-object v1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaEncoder;->join()V

    iput-object v1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    :cond_1
    sget-object p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string v0, "join<<<"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaEncoder;->prepare()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/encoder/MediaEncoder;->prepare()V

    :cond_1
    return-void
.end method

.method public setLocation(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMuxer;->setLocation(FF)V

    return-void
.end method

.method public setOrientationHint(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    return-void
.end method

.method declared-synchronized start()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: startedCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    iget v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    iput-boolean v1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "MediaMuxer started"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startRecording(J)Z
    .locals 3

    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecording: offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/module/encoder/MediaEncoder;->startRecording(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/encoder/MediaEncoder;->startRecording(J)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    return v0
.end method

.method declared-synchronized stop()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop: startedCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    iput-boolean v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z

    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string v3, "MediaMuxer stopped"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopRecording()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "stopRecording>>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaEncoder;->stopRecording()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/encoder/MediaEncoder;->stopRecording()V

    :cond_1
    sget-object p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string v0, "stopRecording<<<"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method declared-synchronized writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
