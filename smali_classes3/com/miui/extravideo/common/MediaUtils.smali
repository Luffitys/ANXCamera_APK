.class public Lcom/miui/extravideo/common/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addVideoToTrack(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "max-input-size"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    invoke-static {v0, v2, p0}, Lcom/miui/extravideo/common/MediaUtils;->readBufferByExtractor(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaExtractor;)V

    :goto_0
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1, p2, v0, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->advance()Z

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v0, v2, p0}, Lcom/miui/extravideo/common/MediaUtils;->readBufferByExtractor(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaExtractor;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static computePresentationTime(II)J
    .locals 1

    const v0, 0xf4240

    mul-int/2addr p0, v0

    div-int/2addr p0, p1

    add-int/lit16 p0, p0, 0x84

    int-to-long p0, p0

    return-wide p0
.end method

.method private static generateExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge p0, v1, :cond_1

    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static mixVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/media/MediaMuxer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v1, p3}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaUtils;->generateExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p2}, Lcom/miui/extravideo/common/MediaUtils;->generateExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p2

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    invoke-static {p0, v1, p1}, Lcom/miui/extravideo/common/MediaUtils;->addVideoToTrack(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;I)V

    invoke-static {v0, v1, p2}, Lcom/miui/extravideo/common/MediaUtils;->addVideoToTrack(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaExtractor;->release()V

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object p2, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p0, v0

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p0, v0

    move-object p2, p0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object p0, v0

    move-object v1, p0

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p0, v0

    move-object p2, p0

    :goto_1
    const/4 p3, -0x1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/media/MediaExtractor;->release()V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/media/MediaExtractor;->release()V

    :cond_3
    move p2, p3

    :cond_4
    :goto_2
    return p2

    :catchall_3
    move-exception p1

    move-object v1, v0

    move-object v0, p2

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/media/MediaExtractor;->release()V

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    :cond_7
    throw p1
.end method

.method private static readBufferByExtractor(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaExtractor;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result p0

    iput p0, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v1

    iput-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result p0

    iput p0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v0, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    return-void
.end method
