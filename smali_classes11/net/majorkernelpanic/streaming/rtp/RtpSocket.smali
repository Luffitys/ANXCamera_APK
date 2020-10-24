.class public Lnet/majorkernelpanic/streaming/rtp/RtpSocket;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final MTU:I = 0x514

.field public static final RTP_HEADER_LENGTH:I = 0xc

.field public static final TAG:Ljava/lang/String; = "RtpSocket"

.field public static final TRANSPORT_TCP:I = 0x1

.field public static final TRANSPORT_UDP:I


# instance fields
.field private mAverageBitrate:Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;

.field private mBufferCommitted:Ljava/util/concurrent/Semaphore;

.field private mBufferCount:I

.field private mBufferIn:I

.field private mBufferOut:I

.field private mBufferRequested:Ljava/util/concurrent/Semaphore;

.field private mBuffers:[[B

.field private mCacheSize:J

.field private mClock:J

.field private mCount:I

.field private mOldTimestamp:J

.field protected mOutputStream:Ljava/io/OutputStream;

.field private mPackets:[Ljava/net/DatagramPacket;

.field private mPort:I

.field private mReport:Lnet/majorkernelpanic/streaming/rtcp/SenderReport;

.field private mSeq:I

.field private mSocket:Ljava/net/MulticastSocket;

.field private mSsrc:I

.field private mTcpHeader:[B

.field private mThread:Ljava/lang/Thread;

.field private mTimestamps:[J

.field private mTransport:I


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mClock:J

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mOldTimestamp:J

    const/4 v2, 0x0

    iput v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mSeq:I

    const/4 v3, -0x1

    iput v3, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mPort:I

    iput v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mCount:I

    const/4 v3, 0x0

    iput-object v3, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mOutputStream:Ljava/io/OutputStream;

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mCacheSize:J

    const/16 v0, 0x12c

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferCount:I

    new-array v1, v0, [[B

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBuffers:[[B

    new-array v0, v0, [Ljava/net/DatagramPacket;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mPackets:[Ljava/net/DatagramPacket;

    new-instance v0, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;

    invoke-direct {v0}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;-><init>()V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mReport:Lnet/majorkernelpanic/streaming/rtcp/SenderReport;

    new-instance v0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;

    invoke-direct {v0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;-><init>()V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mAverageBitrate:Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;

    iput v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mTransport:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mTcpHeader:[B

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->resetFifo()V

    move v0, v2

    :goto_0
    iget v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBuffers:[[B

    const/16 v3, 0x514

    new-array v3, v3, [B

    aput-object v3, v1, v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mPackets:[Ljava/net/DatagramPacket;

    new-instance v3, Ljava/net/DatagramPacket;

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBuffers:[[B

    aget-object v4, v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    aput-object v3, v1, v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBuffers:[[B

    aget-object v1, v1, v0

    const/4 v3, 0x2

    const-string v4, "10000000"

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBuffers:[[B

    aget-object v1, v1, v0

    const/16 v3, 0x60

    aput-byte v3, v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/MulticastSocket;

    invoke-direct {v0}, Ljava/net/MulticastSocket;-><init>()V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mSocket:Ljava/net/MulticastSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x24t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private resetFifo()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mCount:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferIn:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferOut:I

    iget v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferCount:I

    new-array v1, v1, [J

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mTimestamps:[J

    new-instance v1, Ljava/util/concurrent/Semaphore;

    iget v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferCount:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferRequested:Ljava/util/concurrent/Semaphore;

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferCommitted:Ljava/util/concurrent/Semaphore;

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mReport:Lnet/majorkernelpanic/streaming/rtcp/SenderReport;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->reset()V

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mAverageBitrate:Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->reset()V

    return-void
.end method

.method private sendTCP()V
    .locals 5

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mOutputStream:Ljava/io/OutputStream;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mPackets:[Ljava/net/DatagramPacket;

    iget v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferOut:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    const-string v2, "RtpSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mTcpHeader:[B

    const/4 v3, 0x2

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mTcpHeader:[B

    const/4 v3, 0x3

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mOutputStream:Ljava/io/OutputStream;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mTcpHeader:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mOutputStream:Ljava/io/OutputStream;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBuffers:[[B

    iget p0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferOut:I

    aget-object p0, v3, p0

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private setLong([BJII)V
    .locals 2

    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-lt p5, p4, :cond_0

    const-wide/16 v0, 0x100

    rem-long v0, p2, v0

    long-to-int p0, v0

    int-to-byte p0, p0

    aput-byte p0, p1, p5

    const/16 p0, 0x8

    shr-long/2addr p2, p0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSequence()V
    .locals 8

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBuffers:[[B

    iget v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferIn:I

    aget-object v3, v0, v1

    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mSeq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mSeq:I

    int-to-long v4, v0

    const/4 v6, 0x2

    const/4 v7, 0x4

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->setLong([BJII)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mSocket:Ljava/net/MulticastSocket;

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->close()V

    return-void
.end method

.method public commitBuffer()V
    .locals 2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferIn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferIn:I

    iget v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferCount:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferIn:I

    :cond_1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferCommitted:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public commitBuffer(I)V
    .locals 2

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->updateSequence()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mPackets:[Ljava/net/DatagramPacket;

    iget v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferIn:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setLength(I)V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mAverageBitrate:Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;

    invoke-virtual {v0, p1}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->push(I)V

    iget p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferIn:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferIn:I

    iget v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferCount:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferIn:I

    :cond_0
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferCommitted:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mThread:Ljava/lang/Thread;

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public getBitrate()J
    .locals 2

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mAverageBitrate:Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$AverageBitrate;->average()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getLocalPorts()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->getLocalPort()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mReport:Lnet/majorkernelpanic/streaming/rtcp/SenderReport;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->getLocalPort()I

    move-result p0

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method public getPort()I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mPort:I

    return p0
.end method

.method public getSSRC()I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mSsrc:I

    return p0
.end method

.method public markNextPacket()V
    .locals 2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBuffers:[[B

    iget p0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferIn:I

    aget-object p0, v0, p0

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method public requestBuffer()[B
    .locals 4

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferRequested:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBuffers:[[B

    iget p0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferIn:I

    aget-object v1, v0, p0

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    aget-object p0, v0, p0

    return-object p0
.end method

.method public run()V
    .locals 13

    new-instance v0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;

    const/16 v1, 0x32

    const-wide/16 v2, 0xbb8

    invoke-direct {v0, v1, v2, v3}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;-><init>(IJ)V

    :try_start_0
    iget-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mCacheSize:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferCommitted:Ljava/util/concurrent/Semaphore;

    const-wide/16 v6, 0x4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-wide v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mOldTimestamp:J

    cmp-long v5, v5, v1

    if-eqz v5, :cond_3

    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mTimestamps:[J

    iget v6, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferOut:I

    aget-wide v5, v5, v6

    iget-wide v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mOldTimestamp:J

    sub-long/2addr v5, v7

    cmp-long v5, v5, v1

    if-lez v5, :cond_0

    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mTimestamps:[J

    iget v6, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferOut:I

    aget-wide v5, v5, v6

    iget-wide v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mOldTimestamp:J

    sub-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->push(J)V

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket$Statistics;->average()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    iget-wide v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mCacheSize:J

    cmp-long v7, v7, v1

    if-lez v7, :cond_1

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mTimestamps:[J

    iget v6, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferOut:I

    aget-wide v5, v5, v6

    iget-wide v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mOldTimestamp:J

    sub-long/2addr v5, v7

    cmp-long v5, v5, v1

    if-gez v5, :cond_1

    const-string v5, "RtpSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mTimestamps:[J

    iget v8, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferOut:I

    aget-wide v7, v7, v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " OLD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mOldTimestamp:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mTimestamps:[J

    iget v6, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferOut:I

    aget-wide v5, v5, v6

    iget-wide v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mOldTimestamp:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    const-wide/32 v5, 0x1dcd6500

    cmp-long v5, v3, v5

    if-gtz v5, :cond_2

    cmp-long v5, v3, v1

    if-gez v5, :cond_3

    :cond_2
    move-wide v3, v1

    :cond_3
    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mReport:Lnet/majorkernelpanic/streaming/rtcp/SenderReport;

    iget-object v6, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mPackets:[Ljava/net/DatagramPacket;

    iget v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferOut:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mTimestamps:[J

    iget v8, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferOut:I

    aget-wide v7, v7, v8

    const-wide/16 v9, 0x64

    div-long/2addr v7, v9

    iget-wide v9, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mClock:J

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x2710

    div-long/2addr v7, v9

    invoke-virtual {v5, v6, v7, v8}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->update(IJ)V

    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mTimestamps:[J

    iget v6, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferOut:I

    aget-wide v5, v5, v6

    iput-wide v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mOldTimestamp:J

    iget v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mCount:I

    const/16 v6, 0x1e

    if-le v5, v6, :cond_5

    iget v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mTransport:I

    if-nez v5, :cond_4

    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mSocket:Ljava/net/MulticastSocket;

    iget-object v6, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mPackets:[Ljava/net/DatagramPacket;

    iget v7, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferOut:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->sendTCP()V

    :cond_5
    :goto_2
    iget v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferOut:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferOut:I

    iget v6, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferCount:I

    if-lt v5, v6, :cond_6

    const/4 v5, 0x0

    iput v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferOut:I

    :cond_6
    iget-object v5, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferRequested:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mThread:Ljava/lang/Thread;

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->resetFifo()V

    return-void
.end method

.method public setCacheSize(J)V
    .locals 0

    iput-wide p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mCacheSize:J

    return-void
.end method

.method public setClockFrequency(J)V
    .locals 0

    iput-wide p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mClock:J

    return-void
.end method

.method public setDestination(Ljava/net/InetAddress;II)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mTransport:I

    iput p2, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mPort:I

    :goto_0
    iget v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mPackets:[Ljava/net/DatagramPacket;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljava/net/DatagramPacket;->setPort(I)V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mPackets:[Ljava/net/DatagramPacket;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mReport:Lnet/majorkernelpanic/streaming/rtcp/SenderReport;

    invoke-virtual {p0, p1, p3}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->setDestination(Ljava/net/InetAddress;I)V

    :cond_1
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;B)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mTransport:I

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mOutputStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mTcpHeader:[B

    aput-byte p2, v1, v0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mReport:Lnet/majorkernelpanic/streaming/rtcp/SenderReport;

    add-int/2addr p2, v0

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->setOutputStream(Ljava/io/OutputStream;B)V

    :cond_0
    return-void
.end method

.method public setSSRC(I)V
    .locals 8

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mSsrc:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBuffers:[[B

    aget-object v3, v1, v0

    int-to-long v4, p1

    const/16 v6, 0x8

    const/16 v7, 0xc

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->setLong([BJII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mReport:Lnet/majorkernelpanic/streaming/rtcp/SenderReport;

    iget p0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mSsrc:I

    invoke-virtual {p1, p0}, Lnet/majorkernelpanic/streaming/rtcp/SenderReport;->setSSRC(I)V

    return-void
.end method

.method public setTimeToLive(I)V
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mSocket:Ljava/net/MulticastSocket;

    invoke-virtual {p0, p1}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    return-void
.end method

.method public updateTimestamp(J)V
    .locals 8

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mTimestamps:[J

    iget v1, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBufferIn:I

    aput-wide p1, v0, v1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mBuffers:[[B

    aget-object v3, v0, v1

    const-wide/16 v0, 0x64

    div-long/2addr p1, v0

    iget-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->mClock:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    mul-long/2addr p1, v0

    const-wide/16 v0, 0x2710

    div-long v4, p1, v0

    const/4 v6, 0x4

    const/16 v7, 0x8

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->setLong([BJII)V

    return-void
.end method
