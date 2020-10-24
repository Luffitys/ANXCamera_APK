.class public Lnet/majorkernelpanic/streaming/rtcp/SenderReport;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final MTU:I = 0x5dc

.field private static final PACKET_LENGTH:I = 0x1c


# instance fields
.field private delta:J

.field private interval:J

.field private mBuffer:[B

.field private mOctetCount:I

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPacketCount:I

.field private mPort:I

.field private mSSRC:I

.field private mTcpHeader:[B

.field private mTransport:I

.field private now:J

.field private oldnow:J

.field private upack:Ljava/net/DatagramPacket;

.field private usock:Ljava/net/MulticastSocket;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mOutputStream:Ljava/io/OutputStream;

    const/16 v0, 0x5dc

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mBuffer:[B

    const/4 v1, -0x1

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mPort:I

    const/4 v1, 0x0

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mOctetCount:I

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mPacketCount:I

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mTransport:I

    const/4 v2, 0x4

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    iput-object v3, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mTcpHeader:[B

    const-string v3, "10000000"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mBuffer:[B

    const/16 v1, -0x38

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const-wide/16 v0, 0x6

    invoke-direct {p0, v0, v1, v4, v2}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->setLong(JII)V

    :try_start_0
    new-instance v0, Ljava/net/MulticastSocket;

    invoke-direct {v0}, Ljava/net/MulticastSocket;-><init>()V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->usock:Ljava/net/MulticastSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mBuffer:[B

    invoke-direct {v0, v1, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->upack:Ljava/net/DatagramPacket;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->interval:J

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x24t
        0x0t
        0x0t
        0x1ct
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mOutputStream:Ljava/io/OutputStream;

    const/16 v0, 0x5dc

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mBuffer:[B

    const/4 v0, -0x1

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mPort:I

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mOctetCount:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mPacketCount:I

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mSSRC:I

    return-void
.end method

.method private send(JJ)V
    .locals 6

    const-wide/32 v0, 0x3b9aca00

    div-long v2, p1, v0

    mul-long v4, v2, v0

    sub-long/2addr p1, v4

    const-wide v4, 0x100000000L

    mul-long/2addr p1, v4

    div-long/2addr p1, v0

    const/16 v0, 0x8

    const/16 v1, 0xc

    invoke-direct {p0, v2, v3, v0, v1}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->setLong(JII)V

    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v1, v0}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->setLong(JII)V

    const/16 p1, 0x14

    invoke-direct {p0, p3, p4, v0, p1}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->setLong(JII)V

    iget p1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mTransport:I

    const/16 p2, 0x1c

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->upack:Ljava/net/DatagramPacket;

    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setLength(I)V

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->usock:Ljava/net/MulticastSocket;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->upack:Ljava/net/DatagramPacket;

    invoke-virtual {p1, p0}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mOutputStream:Ljava/io/OutputStream;

    monitor-enter p1

    :try_start_0
    iget-object p3, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mOutputStream:Ljava/io/OutputStream;

    iget-object p4, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mTcpHeader:[B

    invoke-virtual {p3, p4}, Ljava/io/OutputStream;->write([B)V

    iget-object p3, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mOutputStream:Ljava/io/OutputStream;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mBuffer:[B

    const/4 p4, 0x0

    invoke-virtual {p3, p0, p4, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p1

    :goto_1
    return-void

    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private setLong(JII)V
    .locals 3

    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-lt p4, p3, :cond_0

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mBuffer:[B

    const-wide/16 v1, 0x100

    rem-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, p4

    const/16 v0, 0x8

    shr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->usock:Ljava/net/MulticastSocket;

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->close()V

    return-void
.end method

.method public getLocalPort()I
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->usock:Ljava/net/MulticastSocket;

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getLocalPort()I

    move-result p0

    return p0
.end method

.method public getPort()I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mPort:I

    return p0
.end method

.method public getSSRC()I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mSSRC:I

    return p0
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mPacketCount:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mOctetCount:I

    int-to-long v0, v0

    const/16 v2, 0x14

    const/16 v3, 0x18

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->setLong(JII)V

    iget v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mOctetCount:I

    int-to-long v0, v0

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v3, v2}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->setLong(JII)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->oldnow:J

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->now:J

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->delta:J

    return-void
.end method

.method public setDestination(Ljava/net/InetAddress;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mTransport:I

    iput p2, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mPort:I

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->upack:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p2}, Ljava/net/DatagramPacket;->setPort(I)V

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->upack:Ljava/net/DatagramPacket;

    invoke-virtual {p0, p1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    return-void
.end method

.method public setInterval(J)V
    .locals 0

    iput-wide p1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->interval:J

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;B)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mTransport:I

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mOutputStream:Ljava/io/OutputStream;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mTcpHeader:[B

    aput-byte p2, p0, v0

    return-void
.end method

.method public setSSRC(I)V
    .locals 3

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mSSRC:I

    int-to-long v0, p1

    const/4 p1, 0x4

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, p1, v2}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->setLong(JII)V

    const/4 p1, 0x0

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mPacketCount:I

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mOctetCount:I

    int-to-long v0, p1

    const/16 p1, 0x14

    const/16 v2, 0x18

    invoke-direct {p0, v0, v1, p1, v2}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->setLong(JII)V

    iget p1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mOctetCount:I

    int-to-long v0, p1

    const/16 p1, 0x1c

    invoke-direct {p0, v0, v1, v2, p1}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->setLong(JII)V

    return-void
.end method

.method public update(IJ)V
    .locals 8

    iget v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mPacketCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mPacketCount:I

    iget v1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mOctetCount:I

    add-int/2addr v1, p1

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mOctetCount:I

    int-to-long v0, v0

    const/16 p1, 0x14

    const/16 v2, 0x18

    invoke-direct {p0, v0, v1, p1, v2}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->setLong(JII)V

    iget p1, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->mOctetCount:I

    int-to-long v0, p1

    const/16 p1, 0x1c

    invoke-direct {p0, v0, v1, v2, p1}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->setLong(JII)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->now:J

    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->delta:J

    iget-wide v4, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->oldnow:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-eqz p1, :cond_0

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_0
    move-wide v0, v6

    :goto_0
    add-long/2addr v2, v0

    iput-wide v2, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->delta:J

    iget-wide v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->now:J

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->oldnow:J

    iget-wide v0, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->interval:J

    cmp-long p1, v0, v6

    if-lez p1, :cond_1

    cmp-long p1, v2, v0

    if-ltz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->send(JJ)V

    iput-wide v6, p0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->delta:J

    :cond_1
    return-void
.end method
