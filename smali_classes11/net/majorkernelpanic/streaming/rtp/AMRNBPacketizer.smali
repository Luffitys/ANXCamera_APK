.class public Lnet/majorkernelpanic/streaming/rtp/AMRNBPacketizer;
.super Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final AMR_FRAME_HEADER_LENGTH:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AMRNBPacketizer"

.field private static final sFrameBits:[I


# instance fields
.field private final AMR_HEADER_LENGTH:I

.field private samplingRate:I

.field private t:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/majorkernelpanic/streaming/rtp/AMRNBPacketizer;->sFrameBits:[I

    return-void

    :array_0
    .array-data 4
        0x5f
        0x67
        0x76
        0x86
        0x94
        0x9f
        0xcc
        0xf4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/AMRNBPacketizer;->AMR_HEADER_LENGTH:I

    const/16 v0, 0x1f40

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/AMRNBPacketizer;->samplingRate:I

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    int-to-long v0, v0

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


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "AMRNBPacketizer"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    const/4 v1, 0x6

    new-array v2, v1, [B

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v2, v3, v1}, Lnet/majorkernelpanic/streaming/rtp/AMRNBPacketizer;->fill([BII)I

    const/4 v1, 0x5

    aget-byte v1, v2, v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const-string p0, "Bad header ! AMR not correcty supported by the phone !"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->requestBuffer()[B

    move-result-object v1

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    const/16 v2, 0xc

    const/16 v3, -0x10

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xd

    invoke-direct {p0, v1, v3, v2}, Lnet/majorkernelpanic/streaming/rtp/AMRNBPacketizer;->fill([BII)I

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    aget-byte v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0xf

    sget-object v2, Lnet/majorkernelpanic/streaming/rtp/AMRNBPacketizer;->sFrameBits:[I

    aget v1, v2, v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->buffer:[B

    const/16 v3, 0xe

    invoke-direct {p0, v2, v3, v1}, Lnet/majorkernelpanic/streaming/rtp/AMRNBPacketizer;->fill([BII)I

    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    const-wide v4, 0x2540be4000L

    iget v6, p0, Lnet/majorkernelpanic/streaming/rtp/AMRNBPacketizer;->samplingRate:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v4, v2, v3}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->updateTimestamp(J)V

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->markNextPacket()V

    add-int/lit8 v1, v1, 0xe

    invoke-virtual {p0, v1}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->send(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const-string p0, "AMR packetizer stopped !"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AMRNBPacketizer;->t:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AMRNBPacketizer;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AMRNBPacketizer;->t:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AMRNBPacketizer;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AMRNBPacketizer;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AMRNBPacketizer;->t:Ljava/lang/Thread;

    :cond_0
    return-void
.end method
