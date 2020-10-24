.class public Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;
.super Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "H264Packetizer"


# instance fields
.field private count:I

.field private delay:J

.field header:[B

.field private naluLength:I

.field private oldtime:J

.field private pps:[B

.field private sps:[B

.field private stapa:[B

.field private stats:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;

.field private streamType:I

.field private t:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->t:Ljava/lang/Thread;

    const/4 v1, 0x0

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->naluLength:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->delay:J

    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->oldtime:J

    new-instance v2, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;

    invoke-direct {v2}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;-><init>()V

    iput-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->stats:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->sps:[B

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->pps:[B

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->stapa:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->header:[B

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->count:I

    const/4 v0, 0x1

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->streamType:I

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    const-wide/32 v0, 0x15f90

    invoke-virtual {p0, v0, v1}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->setClockFrequency(J)V

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

.method private resync()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Packetizer out of sync ! Let\'s try to fix that...(NAL length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->naluLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H264Packetizer"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->header:[B

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    const/4 v3, 0x2

    aget-byte v5, v0, v3

    aput-byte v5, v0, v2

    const/4 v5, 0x3

    aget-byte v6, v0, v5

    aput-byte v6, v0, v3

    const/4 v6, 0x4

    aget-byte v7, v0, v6

    aput-byte v7, v0, v5

    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->header:[B

    aget-byte v0, v0, v6

    and-int/lit8 v0, v0, 0x1f

    const/4 v6, 0x5

    if-eq v0, v6, :cond_1

    if-ne v0, v2, :cond_0

    :cond_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->header:[B

    aget-byte v6, v0, v5

    const/16 v7, 0xff

    and-int/2addr v6, v7

    aget-byte v8, v0, v3

    and-int/2addr v8, v7

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    aget-byte v8, v0, v2

    and-int/2addr v8, v7

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v6, v8

    aget-byte v0, v0, v4

    and-int/2addr v0, v7

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v6

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->naluLength:I

    if-lez v0, :cond_2

    const v6, 0x186a0

    if-ge v0, v6, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->oldtime:J

    const-string p0, "A NAL unit may have been found in the bit stream !"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->naluLength:I

    if-nez v0, :cond_3

    const-string v0, "NAL unit with NULL size found..."

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->header:[B

    aget-byte v5, v0, v5

    if-ne v5, v7, :cond_0

    aget-byte v3, v0, v3

    if-ne v3, v7, :cond_0

    aget-byte v2, v0, v2

    if-ne v2, v7, :cond_0

    aget-byte v0, v0, v4

    if-ne v0, v7, :cond_0

    const-string v0, "NAL unit with 0xFFFFFFFF size found..."

    goto :goto_0
.end method

.method private send()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->streamType:I

    const-string v1, "H264Packetizer"

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->header:[B

    invoke-direct {p0, v0, v6, v3}, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->fill([BII)I

    iget-wide v8, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    iget-wide v10, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->delay:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->header:[B

    const/4 v8, 0x3

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    aget-byte v9, v0, v4

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v2

    or-int/2addr v8, v9

    aget-byte v9, v0, v7

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v8

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->naluLength:I

    const v8, 0x186a0

    if-gt v0, v8, :cond_0

    if-gez v0, :cond_4

    :cond_0
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->resync()V

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x3e8

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->header:[B

    invoke-direct {p0, v0, v6, v3}, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->fill([BII)I

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Ljava/io/InputStream;

    check-cast v0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->getLastBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    mul-long/2addr v10, v8

    iput-wide v10, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    add-int/2addr v0, v7

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->naluLength:I

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->header:[B

    aget-byte v8, v0, v6

    if-nez v8, :cond_2

    aget-byte v8, v0, v7

    if-nez v8, :cond_2

    aget-byte v0, v0, v4

    if-eqz v0, :cond_4

    :cond_2
    const-string v0, "NAL units are not preceeded by 0x00000001"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->streamType:I

    return-void

    :cond_3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->header:[B

    invoke-direct {p0, v0, v6, v7}, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->fill([BII)I

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->header:[B

    aget-byte v10, v0, v6

    aput-byte v10, v0, v5

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Ljava/io/InputStream;

    check-cast v0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->getLastBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    mul-long/2addr v10, v8

    iput-wide v10, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    add-int/2addr v0, v7

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->naluLength:I

    :cond_4
    :goto_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->header:[B

    aget-byte v0, v0, v5

    and-int/lit8 v0, v0, 0x1f

    const/4 v8, 0x7

    if-eq v0, v8, :cond_5

    if-ne v0, v2, :cond_6

    :cond_5
    const-string v2, "SPS or PPS present in the stream."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->count:I

    add-int/2addr v1, v7

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->count:I

    if-le v1, v5, :cond_6

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->sps:[B

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->pps:[B

    :cond_6
    const/16 v1, 0xc

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->sps:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->pps:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->requestBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->markNextPacket()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    invoke-virtual {v0, v2, v3}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->updateTimestamp(J)V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->stapa:[B

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    array-length v3, v0

    invoke-static {v0, v6, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->stapa:[B

    array-length v0, v0

    add-int/2addr v0, v1

    invoke-super {p0, v0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->send(I)V

    :cond_7
    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->naluLength:I

    const/16 v2, 0xd

    const/16 v3, 0x4ea

    if-gt v0, v3, :cond_8

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->requestBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->header:[B

    aget-byte v3, v3, v5

    aput-byte v3, v0, v1

    iget v3, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->naluLength:I

    sub-int/2addr v3, v7

    invoke-direct {p0, v0, v2, v3}, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->fill([BII)I

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    invoke-virtual {v0, v2, v3}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->updateTimestamp(J)V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->markNextPacket()V

    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->naluLength:I

    add-int/2addr v0, v1

    invoke-super {p0, v0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->send(I)V

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->header:[B

    aget-byte v8, v0, v5

    and-int/lit8 v8, v8, 0x1f

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    aget-byte v8, v0, v7

    add-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    aget-byte v5, v0, v5

    and-int/lit8 v5, v5, 0x60

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    aget-byte v5, v0, v6

    add-int/lit8 v5, v5, 0x1c

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    move v0, v7

    :goto_1
    iget v5, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->naluLength:I

    if-ge v0, v5, :cond_c

    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v5}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->requestBuffer()[B

    move-result-object v5

    iput-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    iget-object v8, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->header:[B

    aget-byte v9, v8, v6

    aput-byte v9, v5, v1

    aget-byte v8, v8, v7

    aput-byte v8, v5, v2

    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    iget-wide v8, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    invoke-virtual {v5, v8, v9}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->updateTimestamp(J)V

    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    const/16 v8, 0xe

    iget v9, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->naluLength:I

    sub-int v10, v9, v0

    if-le v10, v3, :cond_9

    move v9, v3

    goto :goto_2

    :cond_9
    sub-int/2addr v9, v0

    :goto_2
    invoke-direct {p0, v5, v8, v9}, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->fill([BII)I

    move-result v5

    if-gez v5, :cond_a

    return-void

    :cond_a
    add-int/2addr v0, v5

    iget v8, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->naluLength:I

    if-lt v0, v8, :cond_b

    iget-object v8, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    aget-byte v9, v8, v2

    add-int/lit8 v9, v9, 0x40

    int-to-byte v9, v9

    aput-byte v9, v8, v2

    iget-object v8, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v8}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->markNextPacket()V

    :cond_b
    add-int/lit8 v5, v5, 0xc

    add-int/2addr v5, v4

    invoke-super {p0, v5}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->send(I)V

    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->header:[B

    aget-byte v8, v5, v7

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    goto :goto_1

    :cond_c
    :goto_3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "H264Packetizer"

    const-string v1, "H264 packetizer started !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->stats:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->reset()V

    const/4 v1, 0x0

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->count:I

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Ljava/io/InputStream;

    instance-of v2, v2, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->streamType:I

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->streamType:I

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    const-wide/16 v2, 0x190

    :goto_0
    invoke-virtual {v1, v2, v3}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->setCacheSize(J)V

    :goto_1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->oldtime:J

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->send()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->oldtime:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->stats:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;

    invoke-virtual {v3, v1, v2}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->push(J)V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->stats:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->average()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->delay:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const-string p0, "H264 packetizer stopped !"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setStreamParameters([B[B)V
    .locals 5

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->pps:[B

    iput-object p2, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->sps:[B

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->stapa:[B

    const/16 v1, 0x18

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    array-length v3, p2

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    array-length v3, p2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    array-length v1, p2

    const/4 v3, 0x3

    add-int/2addr v1, v3

    array-length v4, p1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    array-length v1, p2

    add-int/lit8 v1, v1, 0x4

    array-length v4, p1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    array-length v1, p2

    invoke-static {p2, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->stapa:[B

    array-length p2, p2

    add-int/lit8 p2, p2, 0x5

    array-length v0, p1

    invoke-static {p1, v2, p0, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->t:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->t:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->t:Ljava/lang/Thread;

    :cond_0
    return-void
.end method
