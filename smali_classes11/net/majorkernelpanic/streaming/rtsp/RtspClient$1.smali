.class Lnet/majorkernelpanic/streaming/rtsp/RtspClient$1;
.super Landroid/os/HandlerThread;
.source ""


# instance fields
.field final synthetic this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

.field final synthetic val$signal:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$1;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    iput-object p3, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$1;->val$signal:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$1;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$102(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$1;->val$signal:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
