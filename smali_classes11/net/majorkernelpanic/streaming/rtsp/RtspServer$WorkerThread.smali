.class Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;
.super Ljava/lang/Thread;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mClient:Ljava/net/Socket;

.field private final mInput:Ljava/io/BufferedReader;

.field private final mOutput:Ljava/io/OutputStream;

.field private mSession:Lnet/majorkernelpanic/streaming/Session;

.field final synthetic this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;


# direct methods
.method public constructor <init>(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;Ljava/net/Socket;)V
    .locals 2

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mInput:Ljava/io/BufferedReader;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mOutput:Ljava/io/OutputStream;

    iput-object p2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    new-instance p1, Lnet/majorkernelpanic/streaming/Session;

    invoke-direct {p1}, Lnet/majorkernelpanic/streaming/Session;-><init>()V

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    return-void
.end method

.method private isAuthorized(Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;)Z
    .locals 3

    iget-object p1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->headers:Ljava/util/HashMap;

    const-string v0, "authorization"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->access$100(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->access$200(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->access$100(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-static {v2}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->access$100(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-static {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->access$200(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public processRequest(Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;)Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;
    .locals 11

    new-instance v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;

    invoke-direct {v0, p1}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;)V

    invoke-direct {p0, p1}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->isAuthorized(Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;)Z

    move-result v1

    const-string v2, "OPTIONS"

    if-nez v1, :cond_0

    iget-object v1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "WWW-Authenticate: Basic realm=\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->SERVER_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"\r\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->attributes:Ljava/lang/String;

    const-string p0, "401 Unauthorized"

    iput-object p0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_5

    :cond_0
    iget-object v1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->method:Ljava/lang/String;

    const-string v3, "DESCRIBE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, ":"

    const-string v4, "200 OK"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    iget-object p1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->uri:Ljava/lang/String;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {v1, p1, v2}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->handleRequest(Ljava/lang/String;Ljava/net/Socket;)Lnet/majorkernelpanic/streaming/Session;

    move-result-object p1

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    iget-object v1, v1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mSessions:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/Session;->syncConfigure()V

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/Session;->getSessionDescription()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/\r\nContent-Type: application/sdp\r\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->attributes:Ljava/lang/String;

    iput-object p1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->content:Ljava/lang/String;

    :goto_0
    iput-object v4, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_5

    :cond_1
    iget-object v1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v4, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    const-string p0, "Public: DESCRIBE,SETUP,TEARDOWN,PLAY,PAUSE\r\n"

    :goto_1
    iput-object p0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->attributes:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->method:Ljava/lang/String;

    const-string v2, "SETUP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "400 Bad Request"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_9

    const-string v1, "trackID=(\\w+)"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v7, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->uri:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_3

    iput-object v2, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    return-object v0

    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v2, v1}, Lnet/majorkernelpanic/streaming/Session;->trackExists(I)Z

    move-result v2

    if-nez v2, :cond_4

    const-string p0, "404 Not Found"

    iput-object p0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    return-object v0

    :cond_4
    const-string v2, "client_port=(\\d+)(?:-(\\d+))?"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object p1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->headers:Ljava/util/HashMap;

    const-string v7, "transport"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {p1, v1}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object p1

    invoke-interface {p1}, Lnet/majorkernelpanic/streaming/Stream;->getDestinationPorts()[I

    move-result-object p1

    aget v2, p1, v5

    aget p1, p1, v6

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    add-int/lit8 p1, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_2
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v3, v1}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v3

    invoke-interface {v3}, Lnet/majorkernelpanic/streaming/Stream;->getSSRC()I

    move-result v3

    iget-object v7, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v7, v1}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v7

    invoke-interface {v7}, Lnet/majorkernelpanic/streaming/Stream;->getLocalPorts()[I

    move-result-object v7

    iget-object v8, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v8}, Lnet/majorkernelpanic/streaming/Session;->getDestination()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v9, v1}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v9

    invoke-interface {v9, v2, p1}, Lnet/majorkernelpanic/streaming/Stream;->setDestinationPorts(II)V

    iget-object v9, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-virtual {v9}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->isStreaming()Z

    move-result v9

    iget-object v10, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v10, v1}, Lnet/majorkernelpanic/streaming/Session;->syncStart(I)V

    if-nez v9, :cond_7

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-virtual {v1, v5}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->postMessage(I)V

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transport: RTP/AVP/UDP;"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "multicast"

    goto :goto_3

    :cond_8
    const-string v8, "unicast"

    :goto_3
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";destination="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/Session;->getDestination()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";client_port="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";server_port="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v7, v5

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v7, v6

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";ssrc="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";mode=play\r\nSession: 1185d20035702ca\r\nCache-Control: no-cache\r\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->attributes:Ljava/lang/String;

    iput-object v4, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    iget-object v1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->method:Ljava/lang/String;

    const-string v7, "PLAY"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string p1, "RTP-Info: "

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v1, v5}, Lnet/majorkernelpanic/streaming/Session;->trackExists(I)Z

    move-result v1

    const-string v2, ";seq=0,"

    const-string v7, "/trackID="

    const-string v8, "url=rtsp://"

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalPort()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_a
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v1, v6}, Lnet/majorkernelpanic/streaming/Session;->trackExists(I)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\nSession: 1185d20035702ca\r\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :cond_c
    iget-object p0, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->method:Ljava/lang/String;

    const-string v1, "PAUSE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    :goto_4
    goto/16 :goto_0

    :cond_d
    iget-object p0, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->method:Ljava/lang/String;

    const-string v1, "TEARDOWN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_4

    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command unknown: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RtspServer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    :goto_5
    return-object v0
.end method

.method public run()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtspServer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mInput:Ljava/io/BufferedReader;

    invoke-static {v3}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->parseRequest(Ljava/io/BufferedReader;)Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    goto :goto_1

    :catch_0
    new-instance v3, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;

    invoke-direct {v3}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;-><init>()V

    const-string v4, "400 Bad Request"

    iput-object v4, v3, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->status:Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->processRequest(Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;)Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-virtual {v4, v3, v2}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->postError(Ljava/lang/Exception;I)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_0
    const-string v4, "An error occurred"

    :goto_2
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;

    invoke-direct {v3, v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;)V

    :cond_1
    :goto_3
    :try_start_2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v3, v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Response;->send(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    const-string v0, "Response was not sent properly"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_3
    :cond_2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->isStreaming()Z

    move-result v0

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v3}, Lnet/majorkernelpanic/streaming/Session;->syncStop()V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-virtual {v0, v2}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->postMessage(I)V

    :cond_3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mSession:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->release()V

    :try_start_3
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;->mClient:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :catch_4
    const-string p0, "Client disconnected"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
