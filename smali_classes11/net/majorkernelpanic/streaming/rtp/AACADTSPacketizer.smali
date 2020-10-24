.class public Lnet/majorkernelpanic/streaming/rtp/AACADTSPacketizer;
.super Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AACADTSPacketizer"


# instance fields
.field private samplingRate:I

.field private t:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;-><init>()V

    const/16 v0, 0x1f40

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/AACADTSPacketizer;->samplingRate:I

    return-void
.end method

.method private fill([BII)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Ljava/io/InputStream;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "End of stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v0
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "AACADTSPacketizer"

    const-string v1, "AAC ADTS packetizer started !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/16 v1, 0x8

    new-array v1, v1, [B

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_1
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    aget-byte v2, v1, v4

    const/16 v5, 0xf0

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_1

    const/4 v2, 0x5

    const/4 v5, 0x2

    invoke-direct {p0, v1, v5, v2}, Lnet/majorkernelpanic/streaming/rtp/AACADTSPacketizer;->fill([BII)I

    aget-byte v6, v1, v4

    and-int/2addr v6, v4

    const/4 v7, 0x0

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    move v4, v7

    :goto_0
    const/4 v6, 0x3

    aget-byte v8, v1, v6

    and-int/2addr v8, v6

    shl-int/lit8 v8, v8, 0xb

    const/4 v9, 0x4

    aget-byte v9, v1, v9

    and-int/2addr v9, v3

    shl-int/lit8 v6, v9, 0x3

    or-int/2addr v6, v8

    aget-byte v8, v1, v2

    and-int/2addr v3, v8

    shr-int/lit8 v2, v3, 0x5

    or-int/2addr v2, v6

    if-eqz v4, :cond_3

    const/4 v3, 0x7

    goto :goto_1

    :cond_3
    const/16 v3, 0x9

    :goto_1
    sub-int/2addr v2, v3

    const/4 v3, 0x6

    aget-byte v3, v1, v3

    div-int/lit16 v3, v2, 0x4f8

    if-nez v4, :cond_4

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Ljava/io/InputStream;

    invoke-virtual {v3, v1, v7, v5}, Ljava/io/InputStream;->read([BII)I

    :cond_4
    sget-object v3, Lnet/majorkernelpanic/streaming/audio/AACStream;->AUDIO_SAMPLING_RATES:[I

    aget-byte v4, v1, v5

    and-int/lit8 v4, v4, 0x3c

    shr-int/2addr v4, v5

    aget v3, v3, v4

    iput v3, p0, Lnet/majorkernelpanic/streaming/rtp/AACADTSPacketizer;->samplingRate:I

    aget-byte v4, v1, v5

    iget-wide v4, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    const-wide v8, 0xee6b280000L

    int-to-long v10, v3

    div-long/2addr v8, v10

    add-long/2addr v4, v8

    iput-wide v4, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    move v3, v7

    :goto_2
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v4}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->requestBuffer()[B

    move-result-object v4

    iput-object v4, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    iget-wide v5, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    invoke-virtual {v4, v5, v6}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->updateTimestamp(J)V

    sub-int v4, v2, v3

    const/16 v5, 0x4e8

    if-le v4, v5, :cond_5

    move v4, v5

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v5}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->markNextPacket()V

    :goto_3
    add-int/2addr v3, v4

    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6, v4}, Lnet/majorkernelpanic/streaming/rtp/AACADTSPacketizer;->fill([BII)I

    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    const/16 v8, 0xc

    aput-byte v7, v5, v8

    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    const/16 v8, 0xd

    aput-byte v6, v5, v8

    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    const/16 v6, 0xe

    shr-int/lit8 v8, v2, 0x5

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    shl-int/lit8 v6, v2, 0x3

    int-to-byte v6, v6

    const/16 v8, 0xf

    aput-byte v6, v5, v8

    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    aget-byte v6, v5, v8

    and-int/lit16 v6, v6, 0xf8

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    add-int/lit8 v4, v4, 0x10

    invoke-virtual {p0, v4}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->send(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayIndexOutOfBoundsException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_6
    const-string v2, "unknown error"

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :catch_1
    :cond_7
    const-string p0, "AAC ADTS packetizer stopped !"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSamplingRate(I)V
    .locals 2

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/AACADTSPacketizer;->samplingRate:I

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->setClockFrequency(J)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AACADTSPacketizer;->t:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AACADTSPacketizer;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AACADTSPacketizer;->t:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AACADTSPacketizer;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AACADTSPacketizer;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AACADTSPacketizer;->t:Ljava/lang/Thread;

    :cond_0
    return-void
.end method
