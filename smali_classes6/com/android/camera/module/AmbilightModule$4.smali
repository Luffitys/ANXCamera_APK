.class Lcom/android/camera/module/AmbilightModule$4;
.super Lcom/android/camera2/Camera2Proxy$PictureCallbackWrapper;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/AmbilightModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-direct {p0}, Lcom/android/camera2/Camera2Proxy$PictureCallbackWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureProgress(ZZZZLandroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/camera2/Camera2Proxy$PictureCallbackWrapper;->onCaptureProgress(ZZZZLandroid/hardware/camera2/CaptureResult;)V

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooOoO()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/android/camera/module/AmbilightModule;->mSupportAutoAe:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AMBILIGHT_AE_EXPOSURE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p5, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/android/camera/module/AmbilightModule;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onCaptureProgress: [exposureTime] "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x6b

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera/CameraSize;ZZZZ)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 0

    return-object p1
.end method

.method public onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$300(Lcom/android/camera/module/AmbilightModule;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-static {p1}, Lcom/android/camera/module/AmbilightModule;->access$400(Lcom/android/camera/module/AmbilightModule;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-static {p1, p2}, Lcom/android/camera/module/AmbilightModule;->access$302(Lcom/android/camera/module/AmbilightModule;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x66

    invoke-static {p0}, Lcom/android/camera/module/AmbilightModule;->access$400(Lcom/android/camera/module/AmbilightModule;)[B

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onPictureTakenImageConsumed(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/arcsoft/camera/utils/OooO0OO;->OooO0OO(Landroid/media/Image;I)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/AmbilightModule;->access$402(Lcom/android/camera/module/AmbilightModule;[B)[B

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-static {p1, p2}, Lcom/android/camera/module/AmbilightModule;->access$302(Lcom/android/camera/module/AmbilightModule;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule$4;->this$0:Lcom/android/camera/module/AmbilightModule;

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x66

    invoke-static {p0}, Lcom/android/camera/module/AmbilightModule;->access$400(Lcom/android/camera/module/AmbilightModule;)[B

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
