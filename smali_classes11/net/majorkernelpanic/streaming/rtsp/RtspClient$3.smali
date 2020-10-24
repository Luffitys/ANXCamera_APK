.class Lnet/majorkernelpanic/streaming/rtsp/RtspClient$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;


# direct methods
.method constructor <init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$3;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$3;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$300(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$3;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$300(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    move-result-object v0

    iget-object v0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$3;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$300(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    move-result-object v0

    iget-object v0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->stop()V

    :cond_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$3;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$200(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$3;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$202(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;I)I

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$3;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$700(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V

    :cond_1
    return-void
.end method
