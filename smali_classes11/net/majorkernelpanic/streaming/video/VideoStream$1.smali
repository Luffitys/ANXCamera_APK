.class Lnet/majorkernelpanic/streaming/video/VideoStream$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;


# direct methods
.method constructor <init>(Lnet/majorkernelpanic/streaming/video/VideoStream;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$1;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p0, "VideoStream"

    const-string p1, "Surface Changed !"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$1;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceReady:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$1;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceReady:Z

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->stopPreview()V

    const-string p0, "VideoStream"

    const-string p1, "Surface destroyed !"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
