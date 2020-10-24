.class Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;


# direct methods
.method constructor <init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$200(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$202(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;I)I

    const-string v0, "RtspClient"

    const-string v3, "Connecting to RTSP server..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$400(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    move-result-object v3

    invoke-static {v3}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->copyOf(Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$302(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$300(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    move-result-object v0

    iget-object v0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v3}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$400(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    move-result-object v3

    iget-object v3, v3, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lnet/majorkernelpanic/streaming/Session;->setDestination(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$300(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    move-result-object v0

    iget-object v0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->syncConfigure()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$500(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$300(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    move-result-object v0

    iget-object v0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->syncStart()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$202(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;I)I

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$300(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    move-result-object v0

    iget v0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->transport:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$100(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$800(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$700(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V

    :cond_1
    :goto_0
    return-void

    :catch_1
    move-exception v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v1, v2, v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$600(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;ILjava/lang/Exception;)V

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$700(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V

    return-void

    :catch_2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$300(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$2;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {p0, v1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$202(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;I)I

    return-void
.end method
