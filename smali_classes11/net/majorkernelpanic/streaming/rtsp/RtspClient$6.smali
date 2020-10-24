.class Lnet/majorkernelpanic/streaming/rtsp/RtspClient$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

.field final synthetic val$message:I


# direct methods
.method constructor <init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;I)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$6;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    iput p2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$6;->val$message:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$6;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$1200(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$6;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$1200(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;

    move-result-object v0

    iget p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$6;->val$message:I

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;->onRtspUpdate(ILjava/lang/Exception;)V

    :cond_0
    return-void
.end method
