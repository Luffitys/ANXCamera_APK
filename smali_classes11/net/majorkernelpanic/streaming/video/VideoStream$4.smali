.class Lnet/majorkernelpanic/streaming/video/VideoStream$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# instance fields
.field final synthetic this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;


# direct methods
.method constructor <init>(Lnet/majorkernelpanic/streaming/video/VideoStream;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$4;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 1

    const-string p2, "VideoStream"

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const-string p1, "Media server died !"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$4;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraOpenedManually:Z

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->stop()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error unknown with the camera: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
