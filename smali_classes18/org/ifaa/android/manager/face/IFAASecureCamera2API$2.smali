.class Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "IFAASecureCamera2API.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->createCameraSessionCommon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;


# direct methods
.method constructor <init>(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)V
    .registers 2

    iput-object p1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.StateCallback::onActive - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.StateCallback::onClosed - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v0, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSessionClosedLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.StateCallback::onConfigureFailed - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v0, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStartedLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.StateCallback::onConfigured - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v2}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IFAASecureCamera2API"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v0, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v0, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStartedLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_2a
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iput-object p1, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSession_:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    new-instance v3, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2$1;

    invoke-direct {v3, p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2$1;-><init>(Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;)V

    iput-object v3, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureCallback_:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " capture session is ready!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_54
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v0, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSession_:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v1, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureBuilder_:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v3, v3, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureCallback_:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-virtual {v4}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_6d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_54 .. :try_end_6d} :catch_6e

    goto :goto_91

    :catch_6e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecureCamera2API::CameraCaptureSession.StateCallback:onConfigured - Camera #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v3}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - setRepeatingRequest failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_91
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v0, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStartedLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.StateCallback::onReady - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.StateCallback::onSurfacePrepared - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
