.class public Lnet/majorkernelpanic/streaming/rtsp/RtspClient;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ERROR_CONNECTION_FAILED:I = 0x1

.field public static final ERROR_CONNECTION_LOST:I = 0x4

.field public static final ERROR_WRONG_CREDENTIALS:I = 0x3

.field public static final MESSAGE_CONNECTION_RECOVERED:I = 0x5

.field private static final STATE_STARTED:I = 0x0

.field private static final STATE_STARTING:I = 0x1

.field private static final STATE_STOPPED:I = 0x3

.field private static final STATE_STOPPING:I = 0x2

.field public static final TAG:Ljava/lang/String; = "RtspClient"

.field public static final TRANSPORT_TCP:I = 0x1

.field public static final TRANSPORT_UDP:I

.field protected static final hexArray:[C


# instance fields
.field private mAuthorization:Ljava/lang/String;

.field private mBufferedReader:Ljava/io/BufferedReader;

.field private mCSeq:I

.field private mCallback:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;

.field private mConnectionMonitor:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mMainHandler:Landroid/os/Handler;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

.field private mRetryConnection:Ljava/lang/Runnable;

.field private mSessionID:Ljava/lang/String;

.field private mSocket:Ljava/net/Socket;

.field private mState:I

.field private mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->hexArray:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mState:I

    new-instance v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mConnectionMonitor:Ljava/lang/Runnable;

    new-instance v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$5;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$5;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mRetryConnection:Ljava/lang/Runnable;

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCSeq:I

    new-instance v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient$1;)V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    const/16 v3, 0x78f

    iput v3, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    const-string v3, "/"

    iput-object v3, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    iput v0, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->transport:I

    iput-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mAuthorization:Ljava/lang/String;

    iput-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCallback:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mState:I

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$1;

    const-string v2, "net.majorkernelpanic.streaming.RtspClient"

    invoke-direct {v0, p0, v2, v1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$1;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    return-void
.end method

.method private abort()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->sendRequestTeardown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mConnectionMonitor:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mRetryConnection:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x3

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mState:I

    return-void
.end method

.method static synthetic access$100(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;I)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->postMessage(I)V

    return-void
.end method

.method static synthetic access$102(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1100(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mRetryConnection:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1200(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCallback:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;

    return-object p0
.end method

.method static synthetic access$200(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mState:I

    return p0
.end method

.method static synthetic access$202(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;I)I
    .locals 0

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mState:I

    return p1
.end method

.method static synthetic access$300(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    return-object p0
.end method

.method static synthetic access$302(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    return-object p1
.end method

.method static synthetic access$400(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    return-object p0
.end method

.method static synthetic access$500(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V
    .locals 0

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->tryConnection()V

    return-void
.end method

.method static synthetic access$600(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;ILjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->postError(ILjava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$700(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V
    .locals 0

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->abort()V

    return-void
.end method

.method static synthetic access$800(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mConnectionMonitor:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V
    .locals 0

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->sendRequestOption()V

    return-void
.end method

.method private addHeaders()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CSeq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\r\nContent-Length: 0\r\nSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mAuthorization:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authorization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mAuthorization:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 6

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private computeMd5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string p0, "MD5"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private postError(ILjava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$7;

    invoke-direct {v1, p0, p1, p2}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$7;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;ILjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postMessage(I)V
    .locals 2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$6;

    invoke-direct {v1, p0, p1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$6;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendRequestAnnounce()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/Session;->getSessionDescription()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANNOUNCE rtsp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v4, v4, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget v5, v5, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v5, v5, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " RTSP/1.0\r\nCSeq: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCSeq:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCSeq:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\r\nContent-Length: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\r\nContent-Type: application/sdp\r\n\r\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "\r\n"

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v12, "RtspClient"

    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    const-string v13, "UTF-8"

    invoke-virtual {v2, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    iget-object v2, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-static {v2}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->parseResponse(Ljava/io/BufferedReader;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;

    move-result-object v2

    iget-object v10, v2, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->headers:Ljava/util/HashMap;

    const-string v14, "server"

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RTSP server name:"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->headers:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_0
    const-string v10, "RTSP server name unknown"

    :goto_0
    invoke-static {v12, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v2, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->headers:Ljava/util/HashMap;

    const-string v14, "session"

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :try_start_0
    sget-object v10, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->rexegSession:Ljava/util/regex/Pattern;

    iget-object v15, v2, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->headers:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v10, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    invoke-virtual {v10, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSessionID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid response from server. Session id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSessionID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_1
    iget v10, v2, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->status:I

    const/16 v14, 0x191

    if-ne v10, v14, :cond_4

    iget-object v10, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v15, v10, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->username:Ljava/lang/String;

    if-eqz v15, :cond_3

    iget-object v10, v10, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->password:Ljava/lang/String;

    if-eqz v10, :cond_3

    :try_start_1
    sget-object v10, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->rexegAuthenticate:Ljava/util/regex/Pattern;

    iget-object v2, v2, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->headers:Ljava/util/HashMap;

    const-string v15, "www-authenticate"

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v10, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "rtsp://"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v10, v10, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget v10, v10, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v10, v10, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v7, v7, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->username:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v7, v7, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->password:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->computeMd5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ANNOUNCE:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->computeMd5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->computeMd5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Digest username=\""

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v11, v11, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->username:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\",realm=\""

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\",nonce=\""

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\",uri=\""

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\",response=\""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mAuthorization:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v3, v3, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget v3, v3, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v3, v3, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCSeq:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCSeq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\r\nAuthorization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mAuthorization:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\nSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSessionID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    iget-object v0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->parseResponse(Ljava/io/BufferedReader;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;

    move-result-object v0

    iget v0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->status:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad credentials !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid response from server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Authentication is enabled and setCredentials(String,String) was not called !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v0, 0x193

    if-eq v10, v0, :cond_5

    :goto_2
    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Access forbidden !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sendRequestOption()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPTIONS rtsp://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " RTSP/1.0\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->addHeaders()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RtspClient"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-static {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->parseResponse(Ljava/io/BufferedReader;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;

    return-void
.end method

.method private sendRequestRecord()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RECORD rtsp://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " RTSP/1.0\r\nRange: npt=0.000-\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->addHeaders()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RtspClient"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-static {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->parseResponse(Ljava/io/BufferedReader;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;

    return-void
.end method

.method private sendRequestSetup()V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v2, v2, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v2, v1}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget v3, v3, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->transport:I

    const-string v4, "-"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TCP;interleaved="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v1, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UDP;unicast;client_port="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit16 v6, v6, 0x1388

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";mode=receive"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SETUP rtsp://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v7, v7, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget v7, v7, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v7, v7, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/trackID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " RTSP/1.0\r\nTransport: RTP/AVP/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->addHeaders()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v7, "RtspClient"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    const-string v8, "UTF-8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-static {v3}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->parseResponse(Ljava/io/BufferedReader;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;

    move-result-object v3

    iget-object v6, v3, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->headers:Ljava/util/HashMap;

    const-string v8, "session"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    sget-object v6, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->rexegSession:Ljava/util/regex/Pattern;

    iget-object v9, v3, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->headers:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSessionID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid response from server. Session id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSessionID:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_2
    iget-object v6, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget v6, v6, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->transport:I

    if-nez v6, :cond_2

    :try_start_1
    sget-object v6, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->rexegTransport:Ljava/util/regex/Pattern;

    iget-object v3, v3, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->headers:Ljava/util/HashMap;

    const-string v8, "transport"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v8, v10}, Lnet/majorkernelpanic/streaming/Stream;->setDestinationPorts(II)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting destination ports: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    invoke-interface {v2}, Lnet/majorkernelpanic/streaming/Stream;->getDestinationPorts()[I

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server did not specify ports, using default ports: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    mul-int/lit8 v4, v1, 0x2

    int-to-byte v4, v4

    invoke-interface {v2, v3, v4}, Lnet/majorkernelpanic/streaming/Stream;->setOutputStream(Ljava/io/OutputStream;B)V

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private sendRequestTeardown()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TEARDOWN rtsp://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " RTSP/1.0\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->addHeaders()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RtspClient"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private tryConnection()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCSeq:I

    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v2, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    iget v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    invoke-direct {v0, v2, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSocket:Ljava/net/Socket;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mBufferedReader:Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mOutputStream:Ljava/io/OutputStream;

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->sendRequestAnnounce()V

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->sendRequestSetup()V

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->sendRequestRecord()V

    return-void
.end method


# virtual methods
.method public getSession()Lnet/majorkernelpanic/streaming/Session;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    return-object p0
.end method

.method public isStreaming()Z
    .locals 1

    iget p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mState:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public release()V
    .locals 0

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->stopStream()V

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public setCallback(Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mCallback:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;

    return-void
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->username:Ljava/lang/String;

    iput-object p2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->password:Ljava/lang/String;

    return-void
.end method

.method public setServerAddress(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iput p2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    return-void
.end method

.method public setSession(Lnet/majorkernelpanic/streaming/Session;)V
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    return-void
.end method

.method public setStreamPath(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    return-void
.end method

.method public setTransportMode(I)V
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iput p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->transport:I

    return-void
.end method

.method public startStream()V
    .locals 2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mTmpParameters:Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setSession() has not been called !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setServerAddress(String,int) has not been called !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopStream()V
    .locals 2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$3;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$3;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
