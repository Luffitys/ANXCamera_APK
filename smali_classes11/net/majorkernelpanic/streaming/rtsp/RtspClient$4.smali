.class Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;


# direct methods
.method constructor <init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$200(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)I

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$900(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$100(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$800(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$1000(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;I)V

    const-string v0, "RtspClient"

    const-string v1, "Connection lost with the server..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$300(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    move-result-object v0

    iget-object v0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->stop()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$100(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$1100(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void
.end method
