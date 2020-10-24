.class Lnet/majorkernelpanic/streaming/Session$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/majorkernelpanic/streaming/Session;


# direct methods
.method constructor <init>(Lnet/majorkernelpanic/streaming/Session;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/Session$5;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session$5;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/Session;->access$000(Lnet/majorkernelpanic/streaming/Session;)Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/Session$5;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v2}, Lnet/majorkernelpanic/streaming/Session;->access$000(Lnet/majorkernelpanic/streaming/Session;)Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object v2

    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/video/VideoStream;->startPreview()V

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/Session$5;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v2}, Lnet/majorkernelpanic/streaming/Session;->access$100(Lnet/majorkernelpanic/streaming/Session;)V

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/Session$5;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v2}, Lnet/majorkernelpanic/streaming/Session;->access$000(Lnet/majorkernelpanic/streaming/Session;)Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object v2

    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/video/VideoStream;->configure()V
    :try_end_0
    .catch Lnet/majorkernelpanic/streaming/exceptions/CameraInUseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lnet/majorkernelpanic/streaming/exceptions/ConfNotSupportedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnet/majorkernelpanic/streaming/exceptions/InvalidSurfaceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/majorkernelpanic/streaming/exceptions/StorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/Session$5;->this$0:Lnet/majorkernelpanic/streaming/Session;

    const/4 v2, 0x2

    goto :goto_0

    :catch_1
    move-exception v2

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/Session$5;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {p0, v0, v1, v2}, Lnet/majorkernelpanic/streaming/Session;->access$200(Lnet/majorkernelpanic/streaming/Session;IILjava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/Session$5;->this$0:Lnet/majorkernelpanic/streaming/Session;

    const/4 v2, 0x4

    goto :goto_0

    :catch_3
    move-exception v0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/Session$5;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {p0, v1, v1, v0}, Lnet/majorkernelpanic/streaming/Session;->access$200(Lnet/majorkernelpanic/streaming/Session;IILjava/lang/Exception;)V

    goto :goto_1

    :catch_4
    move-exception v0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/Session$5;->this$0:Lnet/majorkernelpanic/streaming/Session;

    const/4 v2, 0x0

    :goto_0
    invoke-static {p0, v2, v1, v0}, Lnet/majorkernelpanic/streaming/Session;->access$200(Lnet/majorkernelpanic/streaming/Session;IILjava/lang/Exception;)V

    :cond_0
    :goto_1
    return-void
.end method
