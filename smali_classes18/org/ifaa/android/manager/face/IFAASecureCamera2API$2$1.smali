.class Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "IFAASecureCamera2API.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;


# direct methods
.method constructor <init>(Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;)V
    .registers 2

    iput-object p1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2$1;->this$1:Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.CaptureCallback::onCaptureBufferLost - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2$1;->this$1:Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;

    iget-object v1, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.CaptureCallback::onCaptureCompleted - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2$1;->this$1:Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;

    iget-object v1, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Done ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.CaptureCallback::onCaptureFailed - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2$1;->this$1:Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;

    iget-object v1, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.CaptureCallback::onCaptureProgressed - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2$1;->this$1:Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;

    iget-object v1, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.CaptureCallback::onCaptureSequenceAborted - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2$1;->this$1:Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;

    iget-object v1, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.CaptureCallback::onCaptureSequenceCompleted - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2$1;->this$1:Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;

    iget-object v1, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraCaptureSession.CaptureCallback::onCaptureStarted - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2$1;->this$1:Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;

    iget-object v1, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
