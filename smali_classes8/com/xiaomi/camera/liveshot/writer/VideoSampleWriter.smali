.class public Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;
.super Lcom/xiaomi/camera/liveshot/writer/SampleWriter;
.source ""


# static fields
.field private static final DEBUG:Z = true

.field private static final MIN_DURATION:J = 0x7a120L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mMediaMuxer:Landroid/media/MediaMuxer;

.field private final mVideoFirstKeyFrameArrivedNotifier:Lcom/xiaomi/camera/liveshot/writer/SampleWriter$StatusNotifier;

.field private final mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

.field private final mVideoTrackId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaMuxer;Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;ILcom/xiaomi/camera/liveshot/writer/SampleWriter$StatusNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/writer/SampleWriter;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->mMediaMuxer:Landroid/media/MediaMuxer;

    iput-object p2, p0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    iput p3, p0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->mVideoTrackId:I

    iput-object p4, p0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->mVideoFirstKeyFrameArrivedNotifier:Lcom/xiaomi/camera/liveshot/writer/SampleWriter$StatusNotifier;

    return-void
.end method


# virtual methods
.method protected writeSample()V
    .locals 25

    move-object/from16 v0, p0

    sget-object v1, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    const-string v2, "writeVideoSamples: E"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    iget-wide v2, v1, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->head:J

    iget-wide v4, v1, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->tail:J

    iget-wide v6, v1, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->time:J

    iget v1, v1, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->filterId:I

    sget-object v8, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "writeVideoSamples: head timestamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    iget-wide v10, v10, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->head:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeVideoSamples: snap timestamp: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    iget-wide v11, v11, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->time:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeVideoSamples: tail timestamp: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    iget-wide v11, v11, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->tail:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeVideoSamples: curr filterId: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    iget v11, v11, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->filterId:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_0
    const/16 v19, 0x0

    :goto_1
    if-nez v14, :cond_e

    sget-object v11, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    const-string v8, "writeVideoSamples: take: E"

    invoke-static {v11, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v8, v0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    iget-object v8, v8, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->samples:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Sample;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v9, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    const-string v11, "writeVideoSamples: take: X"

    invoke-static {v9, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_0

    sget-object v1, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    const-string v2, "sample null return"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_0
    iget-object v9, v8, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Sample;->data:Ljava/nio/ByteBuffer;

    iget-object v11, v8, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-object v8, v8, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Sample;->livePhotoResult:Lcom/xiaomi/camera/liveshot/LivePhotoResult;

    sget-object v10, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    move/from16 v20, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v21, v4

    const-string v4, "writeVideoSamples: livePhotoResult "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-eqz v4, :cond_d

    iget v4, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    goto/16 :goto_6

    :cond_1
    move-object v4, v9

    iget-wide v9, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v9, v6, v9

    const-wide/32 v23, 0x7a120

    cmp-long v9, v9, v23

    if-ltz v9, :cond_5

    if-nez v17, :cond_5

    invoke-static {v8, v1}, Lcom/android/camera/Util;->isLivePhotoStable(Lcom/xiaomi/camera/liveshot/LivePhotoResult;I)Z

    move-result v4

    if-nez v19, :cond_3

    if-nez v4, :cond_2

    sget-object v4, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeVideoSamples: drop non-stable frame sample timestamp: "

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeVideoSamples: drop first stable frame sample timestamp: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v14, v20

    move-wide/from16 v4, v21

    const/16 v17, 0x0

    goto :goto_3

    :cond_3
    if-nez v4, :cond_4

    sget-object v4, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeVideoSamples: drop second non-stable frame sample timestamp: "

    :goto_2
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v14, v20

    move-wide/from16 v4, v21

    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_4
    sget-object v4, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeVideoSamples: drop first and second stable frame sample timestamp: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v14, v20

    move-wide/from16 v4, v21

    const/16 v17, 0x1

    :goto_3
    const/16 v19, 0x1

    goto/16 :goto_1

    :cond_5
    iget v8, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-nez v8, :cond_6

    if-nez v18, :cond_6

    sget-object v4, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeVideoSamples: drop non-key frame sample timestamp: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    :cond_6
    iget-wide v9, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v8, v9, v2

    if-ltz v8, :cond_a

    sub-long v23, v9, v15

    cmp-long v8, v12, v23

    if-gez v8, :cond_a

    if-nez v18, :cond_8

    iget-object v8, v0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    iget-wide v12, v8, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->head:J

    sub-long v12, v9, v12

    iput-wide v12, v8, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->offset:J

    iget-object v8, v0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->mVideoFirstKeyFrameArrivedNotifier:Lcom/xiaomi/camera/liveshot/writer/SampleWriter$StatusNotifier;

    if-eqz v8, :cond_7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/xiaomi/camera/liveshot/writer/SampleWriter$StatusNotifier;->notify(Ljava/lang/Object;)V

    :cond_7
    sget-object v8, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "writeVideoSamples: first video sample timestamp: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v15, v9

    const/16 v18, 0x1

    :cond_8
    iget-wide v8, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v8, v8, v21

    if-gez v8, :cond_9

    goto :goto_4

    :cond_9
    sget-object v8, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    const-string v9, "writeVideoSamples: stop writing as reaching the ending timestamp"

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    :goto_4
    iget-wide v8, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v8, v15

    iput-wide v8, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v8, v0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget v9, v0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->mVideoTrackId:I

    invoke-virtual {v8, v9, v4, v11}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-wide v8, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sget-object v10, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "writeVideoSamples: video sample timestamp: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v12, v8

    :cond_a
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-eqz v4, :cond_c

    iget v4, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_b

    goto :goto_5

    :cond_b
    const/4 v14, 0x0

    goto :goto_8

    :cond_c
    :goto_5
    const/4 v14, 0x1

    goto :goto_8

    :cond_d
    :goto_6
    sget-object v1, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    const-string v2, "writeVideoSamples: EOF"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_0
    move-wide/from16 v21, v4

    move/from16 v20, v14

    sget-object v4, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeVideoSamples: take: meet interrupted exception"

    :goto_7
    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v14, v20

    :goto_8
    move-wide/from16 v4, v21

    goto/16 :goto_1

    :cond_e
    :goto_9
    iget-object v1, v0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    iget-wide v2, v1, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->time:J

    sub-long/2addr v2, v15

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->time:J

    sget-object v1, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeVideoSamples: cover frame timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    iget-wide v3, v3, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeVideoSamples: X: duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeVideoSamples: X: offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    iget-wide v3, v3, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->offset:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/xiaomi/camera/liveshot/writer/VideoSampleWriter;->mVideoSnapshot:Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$Snapshot;->clear()V

    return-void
.end method
