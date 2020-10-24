.class public Lnet/majorkernelpanic/streaming/audio/AMRNBStream;
.super Lnet/majorkernelpanic/streaming/audio/AudioStream;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/audio/AudioStream;-><init>()V

    new-instance v0, Lnet/majorkernelpanic/streaming/rtp/AMRNBPacketizer;

    invoke-direct {v0}, Lnet/majorkernelpanic/streaming/rtp/AMRNBPacketizer;-><init>()V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/audio/AudioStream;->setAudioSource(I)V

    :try_start_0
    const-class v0, Landroid/media/MediaRecorder$OutputFormat;

    const-string v1, "RAW_AMR"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/audio/AudioStream;->setOutputFormat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/audio/AudioStream;->setOutputFormat(I)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/audio/AudioStream;->setAudioEncoder(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized configure()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->configure()V

    const/4 v0, 0x1

    iput-byte v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->copyOf(Lnet/majorkernelpanic/streaming/audio/AudioQuality;)Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/audio/AudioStream;->mQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected encodeWithMediaCodec()V
    .locals 0

    invoke-super {p0}, Lnet/majorkernelpanic/streaming/audio/AudioStream;->encodeWithMediaRecorder()V

    return-void
.end method

.method public getSessionDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m=audio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->getDestinationPorts()[I

    move-result-object p0

    const/4 v1, 0x0

    aget p0, p0, v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " RTP/AVP 96\r\na=rtpmap:96 AMR/8000\r\na=fmtp:96 octet-align=1;\r\n"

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

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/audio/AMRNBStream;->configure()V

    invoke-super {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->start()V
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
