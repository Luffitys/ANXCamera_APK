.class public Lcom/xiaomi/camera/rcs/streaming/StreamingServer;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final SERVER_NAME:Ljava/lang/String; = "XIAOMI-CAMERA-LIVE-STREAMING-SERVER"

.field public static final SERVER_STATE_BIND_FAILED:I = 0x1

.field public static final SERVER_STATE_BIND_SUCCEED:I = 0x2

.field public static final SERVER_STATE_START_FAILED:I = 0x1

.field public static final SESSION_STATE_STREAMING_STARTED:I = 0x2

.field public static final SESSION_STATE_STREAMING_STOPPED:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final sAudioEncoder:I = 0x0

.field private static final sVideoEncoder:I = 0x1

.field private static final sVideoQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;


# instance fields
.field private mEnabled:Z

.field private mListenerThread:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;

.field private final mListeners:Ljava/util/LinkedList;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mRestart:Z

.field private mSessions:Ljava/util/WeakHashMap;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->createTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->TAG:Ljava/lang/String;

    new-instance v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;

    const/16 v1, 0x1e0

    const/16 v2, 0x280

    const/16 v3, 0x1e

    const v4, 0x7a120

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/majorkernelpanic/streaming/video/VideoQuality;-><init>(IIII)V

    sput-object v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->sVideoQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mSessions:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mPort:I

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000O0oO()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mRestart:Z

    invoke-static {}, Lnet/majorkernelpanic/streaming/SessionBuilder;->getInstance()Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setContext(Landroid/content/Context;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setAudioEncoder(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setVideoEncoder(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object p0

    sget-object p1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->sVideoQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setVideoQuality(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mPort:I

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;Z)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->getIPAddress(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/util/WeakHashMap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mSessions:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mUsername:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method private final getIPAddress(Z)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    if-eqz p1, :cond_3

    if-eqz v2, :cond_1

    return-object v1

    :cond_3
    if-nez v2, :cond_1

    const/16 p0, 0x25

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_4

    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v1, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_5
    const-string p0, "0.0.0.0"

    return-object p0
.end method


# virtual methods
.method public addCallbackListener(Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;

    if-ne v2, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBitrate()J
    .locals 4

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mSessions:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/majorkernelpanic/streaming/Session;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/Session;->isStreaming()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/Session;->getBitrate()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public getPort()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mPort:I

    return p0
.end method

.method public getStreamingSession()Lnet/majorkernelpanic/streaming/Session;
    .locals 3

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mSessions:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/majorkernelpanic/streaming/Session;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is streaming"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected handleRequest(Ljava/lang/String;Ljava/net/Socket;)Lnet/majorkernelpanic/streaming/Session;
    .locals 0

    invoke-static {p1}, Lnet/majorkernelpanic/streaming/rtsp/UriParser;->parse(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/Session;

    move-result-object p0

    invoke-virtual {p2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/Session;->setOrigin(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/Session;->getDestination()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/Session;->setDestination(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mEnabled:Z

    return p0
.end method

.method public isStreaming()Z
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->getStreamingSession()Lnet/majorkernelpanic/streaming/Session;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public postStreamingServerState(I)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postStreamingServerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mPort:I

    invoke-static {v1, v2}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->setStreamingServerPort(Landroid/os/Bundle;I)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;

    sget-object v3, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, p1, v1}, Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;->onStreamingServerStateChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no handle for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public postStreamingSessionState(Lnet/majorkernelpanic/streaming/Session;I)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postStreamingSessionState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/Session;->getVideoTrack()Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object v2

    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/video/VideoStream;->getVideoQuality()Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object v2

    iget v2, v2, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/Session;->getVideoTrack()Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object v3

    invoke-virtual {v3}, Lnet/majorkernelpanic/streaming/video/VideoStream;->getVideoQuality()Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object v3

    iget v3, v3, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/Session;->getVideoTrack()Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object p1

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/video/VideoStream;->getCodecInputSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v1, v2, v3}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->setVideoStreamSize(Landroid/os/Bundle;II)V

    invoke-static {v1, p1}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->setCodecInputSurface(Landroid/os/Bundle;Landroid/view/Surface;)V

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;

    sget-object v2, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2, v1}, Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;->onStreamingSessionStateChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no handle for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeCallbackListener(Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mUsername:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mEnabled:Z

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->start()V

    return-void
.end method

.method public setPort(I)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mPort:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mPort:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mRestart:Z

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->start()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mRestart:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->stop()V

    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListenerThread:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;-><init>(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListenerThread:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;

    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->waitUtilReady()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListenerThread:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mRestart:Z

    return-void
.end method

.method public stop()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListenerThread:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->kill()V

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mSessions:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/majorkernelpanic/streaming/Session;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/Session;->isStreaming()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/Session;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListenerThread:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;

    throw v0

    :catch_0
    :cond_1
    iput-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListenerThread:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;

    :cond_2
    return-void
.end method

.method public waitUtilConnectable()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->mListenerThread:Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->waitUtilReady()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
