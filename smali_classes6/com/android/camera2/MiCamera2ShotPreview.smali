.class public Lcom/android/camera2/MiCamera2ShotPreview;
.super Lcom/android/camera2/MiCamera2Shot;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "MiCamera2ShotPreview"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2Shot;-><init>(Lcom/android/camera2/MiCamera2;)V

    return-void
.end method


# virtual methods
.method protected generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic notifyResultData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2ShotPreview;->notifyResultData([B)V

    return-void
.end method

.method protected notifyResultData([B)V
    .locals 0

    return-void
.end method

.method protected onImageReceived(Landroid/media/Image;I)V
    .locals 0

    return-void
.end method

.method protected prepare()V
    .locals 0

    return-void
.end method

.method protected startSessionCapture()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2, v2}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(ZZZZ)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2ShotPreview;->TAG:Ljava/lang/String;

    const-string v2, "startSessionCapture: null picture callback"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    return-void
.end method
