.class public Lnet/majorkernelpanic/streaming/rtp/H263Packetizer;
.super Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "H263Packetizer"


# instance fields
.field private stats:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;

.field private t:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;-><init>()V

    new-instance v0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;

    invoke-direct {v0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;-><init>()V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H263Packetizer;->stats:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    const-wide/32 v0, 0x15f90

    invoke-virtual {p0, v0, v1}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->setClockFrequency(J)V

    return-void
.end method

.method private fill(II)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Ljava/io/InputStream;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    add-int v3, p1, v0

    sub-int v4, p2, v0

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

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
    .locals 14

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H263Packetizer;->stats:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->reset()V

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-wide v5, v0

    move v7, v2

    move v4, v3

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-nez v8, :cond_6

    if-nez v4, :cond_0

    iget-object v8, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v8}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->requestBuffer()[B

    move-result-object v8

    iput-object v8, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    :cond_0
    iget-object v8, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    iget-wide v9, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    invoke-virtual {v8, v9, v10}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->updateTimestamp(J)V

    iget-object v8, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    const/16 v9, 0xc

    aput-byte v3, v8, v9

    iget-object v8, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    const/16 v10, 0xd

    aput-byte v3, v8, v10

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    add-int/lit8 v8, v4, 0xc

    add-int/lit8 v8, v8, 0x2

    rsub-int v4, v4, 0x4ec

    add-int/lit8 v4, v4, -0x2

    invoke-direct {p0, v8, v4}, Lnet/majorkernelpanic/streaming/rtp/H263Packetizer;->fill(II)I

    move-result v4

    if-gez v4, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long/2addr v12, v10

    add-long/2addr v5, v12

    const/16 v4, 0xe

    move v8, v4

    :goto_1
    const/16 v10, 0x4f7

    if-ge v8, v10, :cond_3

    iget-object v10, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    aget-byte v10, v10, v8

    if-nez v10, :cond_2

    iget-object v10, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    add-int/lit8 v11, v8, 0x1

    aget-byte v10, v10, v11

    if-nez v10, :cond_2

    iget-object v10, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    add-int/lit8 v11, v8, 0x2

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xfc

    const/16 v11, 0x80

    if-ne v10, v11, :cond_2

    move v10, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    move v10, v3

    :goto_2
    iget-object v11, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    add-int/lit8 v12, v8, 0x2

    aget-byte v11, v11, v12

    iget-object v11, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    add-int/lit8 v8, v8, 0x3

    aget-byte v8, v11, v8

    if-eqz v7, :cond_4

    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    const/4 v8, 0x4

    aput-byte v8, v7, v9

    move v7, v3

    goto :goto_3

    :cond_4
    iget-object v8, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    aput-byte v3, v8, v9

    :goto_3
    if-lez v10, :cond_5

    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtp/H263Packetizer;->stats:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;

    invoke-virtual {v7, v5, v6}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->push(J)V

    iget-wide v5, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtp/H263Packetizer;->stats:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;

    invoke-virtual {v7}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer$Statistics;->average()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v5}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->markNextPacket()V

    invoke-virtual {p0, v10}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->send(I)V

    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v5}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->requestBuffer()[B

    move-result-object v5

    iget-object v6, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    add-int/lit8 v7, v10, 0x2

    rsub-int v8, v10, 0x4f8

    add-int/lit8 v8, v8, -0x2

    invoke-static {v6, v7, v5, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    move-wide v5, v0

    move v7, v2

    move v4, v8

    goto/16 :goto_0

    :cond_5
    const/16 v4, 0x4f8

    invoke-virtual {p0, v4}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->send(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v10

    goto/16 :goto_0

    :catch_0
    :cond_6
    const-string p0, "H263Packetizer"

    const-string v0, "H263 Packetizer stopped !"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H263Packetizer;->t:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H263Packetizer;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H263Packetizer;->t:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H263Packetizer;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H263Packetizer;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/H263Packetizer;->t:Ljava/lang/Thread;

    :cond_0
    return-void
.end method
