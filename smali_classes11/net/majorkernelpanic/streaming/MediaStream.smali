.class public abstract Lnet/majorkernelpanic/streaming/MediaStream;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnet/majorkernelpanic/streaming/Stream;


# static fields
.field public static final MODE_MEDIACODEC_API:B = 0x2t

.field public static final MODE_MEDIACODEC_API_2:B = 0x5t

.field public static final MODE_MEDIARECORDER_API:B = 0x1t

.field public static final PIPE_API_LS:B = 0x1t

.field public static final PIPE_API_PFD:B = 0x2t

.field protected static final PREF_PREFIX:Ljava/lang/String; = "libstreaming-"

.field protected static final TAG:Ljava/lang/String; = "MediaStream"

.field protected static final sPipeApi:B

.field protected static sSuggestedMode:B = 0x5t


# instance fields
.field protected mChannelIdentifier:B

.field protected mConfigured:Z

.field protected mDestination:Ljava/net/InetAddress;

.field private mLss:Landroid/net/LocalServerSocket;

.field protected mMediaCodec:Landroid/media/MediaCodec;

.field protected mMediaRecorder:Landroid/media/MediaRecorder;

.field protected mMode:B

.field protected mOutputStream:Ljava/io/OutputStream;

.field protected mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

.field protected mParcelFileDescriptors:[Landroid/os/ParcelFileDescriptor;

.field protected mParcelRead:Landroid/os/ParcelFileDescriptor;

.field protected mParcelWrite:Landroid/os/ParcelFileDescriptor;

.field protected mReceiver:Landroid/net/LocalSocket;

.field protected mRequestedMode:B

.field protected mRtcpPort:I

.field protected mRtpPort:I

.field protected mSender:Landroid/net/LocalSocket;

.field private mSocketId:I

.field protected mStreaming:Z

.field private mTTL:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "android.media.MediaCodec"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x5

    sput-byte v0, Lnet/majorkernelpanic/streaming/MediaStream;->sSuggestedMode:B

    const-string v0, "MediaStream"

    const-string v1, "Phone supports the MediaCoded API"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-byte v0, Lnet/majorkernelpanic/streaming/MediaStream;->sPipeApi:B

    return-void

    :catch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "does not support the MediaCodec API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    iput-boolean v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mConfigured:Z

    iput v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    iput v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    iput-byte v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mChannelIdentifier:B

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mOutputStream:Ljava/io/OutputStream;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mSender:Landroid/net/LocalSocket;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mLss:Landroid/net/LocalServerSocket;

    const/16 v0, 0x40

    iput v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mTTL:I

    sget-byte v0, Lnet/majorkernelpanic/streaming/MediaStream;->sSuggestedMode:B

    iput-byte v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRequestedMode:B

    iput-byte v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    return-void
.end method


# virtual methods
.method protected closeSockets()V
    .locals 2

    sget-byte v0, Lnet/majorkernelpanic/streaming/MediaStream;->sPipeApi:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mReceiver:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    :try_start_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mSender:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    :try_start_2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mLss:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mLss:Landroid/net/LocalServerSocket;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mSender:Landroid/net/LocalSocket;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mReceiver:Landroid/net/LocalSocket;

    goto :goto_4

    :cond_0
    :try_start_3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mParcelRead:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mParcelRead:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_3
    :try_start_4
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mParcelWrite:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mParcelWrite:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_4
    return-void
.end method

.method public declared-synchronized configure()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mDestination:Ljava/net/InetAddress;

    iget v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    iget v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    invoke-virtual {v0, v1, v2, v3}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->setDestination(Ljava/net/InetAddress;II)V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->getRtpSocket()Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    move-result-object v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mOutputStream:Ljava/io/OutputStream;

    iget-byte v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mChannelIdentifier:B

    invoke-virtual {v0, v1, v2}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->setOutputStream(Ljava/io/OutputStream;B)V

    :cond_0
    iget-byte v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRequestedMode:B

    iput-byte v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mConfigured:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be called while streaming."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createSockets()V
    .locals 5

    sget-byte v0, Lnet/majorkernelpanic/streaming/MediaStream;->sPipeApi:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :goto_0
    const/16 v0, 0xa

    const-string v2, "net.majorkernelpanic.streaming-"

    if-ge v1, v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mSocketId:I

    new-instance v0, Landroid/net/LocalServerSocket;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mSocketId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mLss:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mReceiver:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mSocketId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mReceiver:Landroid/net/LocalSocket;

    const v1, 0x7a120

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->setReceiveBufferSize(I)V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mReceiver:Landroid/net/LocalSocket;

    const/16 v2, 0xbb8

    invoke-virtual {v0, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mLss:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mSender:Landroid/net/LocalSocket;

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->setSendBufferSize(I)V

    goto :goto_2

    :cond_1
    const-string v0, "MediaStream"

    const-string v3, "parcelFileDescriptors createPipe version = Lollipop"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mParcelFileDescriptors:[Landroid/os/ParcelFileDescriptor;

    new-instance v0, Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mParcelFileDescriptors:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v3, v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mParcelRead:Landroid/os/ParcelFileDescriptor;

    new-instance v0, Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mParcelFileDescriptors:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mParcelWrite:Landroid/os/ParcelFileDescriptor;

    :goto_2
    return-void
.end method

.method protected abstract encodeWithMediaCodec()V
.end method

.method protected abstract encodeWithMediaRecorder()V
.end method

.method public getBitrate()J
    .locals 2

    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->getRtpSocket()Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    move-result-object p0

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->getBitrate()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getDestinationPorts()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method public getLocalPorts()[I
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->getRtpSocket()Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    move-result-object p0

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->getLocalPorts()[I

    move-result-object p0

    return-object p0
.end method

.method public getPacketizer()Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    return-object p0
.end method

.method public getSSRC()I
    .locals 0

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->getPacketizer()Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    move-result-object p0

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->getSSRC()I

    move-result p0

    return p0
.end method

.method public abstract getSessionDescription()Ljava/lang/String;
.end method

.method public getStreamingMethod()B
    .locals 0

    iget-byte p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    return p0
.end method

.method public isStreaming()Z
    .locals 0

    iget-boolean p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    return p0
.end method

.method public setDestinationAddress(Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mDestination:Ljava/net/InetAddress;

    return-void
.end method

.method public setDestinationPorts(I)V
    .locals 2

    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    add-int/2addr p1, v1

    :goto_0
    iput p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    return-void
.end method

.method public setDestinationPorts(II)V
    .locals 0

    iput p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    iput p2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mOutputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;B)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mOutputStream:Ljava/io/OutputStream;

    iput-byte p2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mChannelIdentifier:B

    return-void
.end method

.method public setStreamingMethod(B)V
    .locals 0

    iput-byte p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRequestedMode:B

    return-void
.end method

.method public setTimeToLive(I)V
    .locals 0

    iput p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mTTL:I

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mDestination:Ljava/net/InetAddress;

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    if-lez v0, :cond_1

    iget v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    iget v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mTTL:I

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->setTimeToLive(I)V

    iget-byte v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->encodeWithMediaCodec()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->encodeWithMediaRecorder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No destination ports set for the stream !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No destination ip address set for the stream !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-byte v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    iput-object v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->closeSockets()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->stop()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->stop()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
