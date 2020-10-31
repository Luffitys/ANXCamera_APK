.class Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "IFAASecureCamera2API.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/android/manager/face/IFAASecureCamera2API;
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

    iput-object p1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraDevice.StateCallback::onClosed - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v0, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStartedLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v0, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStopedLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraDevice.StateCallback::onDisconnected - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraDevice.StateCallback::onError - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::CameraDevice.StateCallback::onOpened - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    # getter for: Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;
    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iput-object p1, v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;->this$0:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    invoke-virtual {v0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->createCameraSessionCommon()V

    return-void
.end method
