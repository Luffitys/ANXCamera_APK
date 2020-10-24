.class public Lnet/majorkernelpanic/streaming/video/H263Stream;
.super Lnet/majorkernelpanic/streaming/video/VideoStream;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/majorkernelpanic/streaming/video/H263Stream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/majorkernelpanic/streaming/video/VideoStream;-><init>(I)V

    const/16 p1, 0x11

    iput p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraImageFormat:I

    const/4 p1, 0x1

    iput p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mVideoEncoder:I

    new-instance p1, Lnet/majorkernelpanic/streaming/rtp/H263Packetizer;

    invoke-direct {p1}, Lnet/majorkernelpanic/streaming/rtp/H263Packetizer;-><init>()V

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    return-void
.end method


# virtual methods
.method public declared-synchronized configure()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->configure()V

    const/4 v0, 0x1

    iput-byte v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/video/VideoQuality;->copyOf(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSessionDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m=video "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->getDestinationPorts()[I

    move-result-object p0

    const/4 v1, 0x0

    aget p0, p0, v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " RTP/AVP 96\r\na=rtpmap:96 H263-1998/90000\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/H263Stream;->configure()V

    invoke-super {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
