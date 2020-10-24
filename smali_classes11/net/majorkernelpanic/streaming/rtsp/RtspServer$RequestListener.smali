.class Lnet/majorkernelpanic/streaming/rtsp/RtspServer$RequestListener;
.super Ljava/lang/Thread;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mServer:Ljava/net/ServerSocket;

.field final synthetic this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;


# direct methods
.method public constructor <init>(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)V
    .locals 2

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$RequestListener;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mPort:I

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$RequestListener;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "RtspServer"

    const-string v1, "Port already in use !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->postError(Ljava/lang/Exception;I)V

    throw p0
.end method


# virtual methods
.method public kill()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$RequestListener;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTSP server listening on port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$RequestListener;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtspServer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$RequestListener;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$RequestListener;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$WorkerThread;-><init>(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;Ljava/net/Socket;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    :cond_0
    const-string p0, "RTSP server stopped !"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
