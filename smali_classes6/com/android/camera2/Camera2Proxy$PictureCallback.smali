.class public interface abstract Lcom/android/camera2/Camera2Proxy$PictureCallback;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public onCaptureCompleted(Z)V
    .locals 0

    return-void
.end method

.method public abstract onCaptureProgress(ZZZZLandroid/hardware/camera2/CaptureResult;)V
.end method

.method public abstract onCaptureShutter(ZZZZ)V
.end method

.method public abstract onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera/CameraSize;ZZZZ)Lcom/xiaomi/camera/core/ParallelTaskData;
.end method

.method public abstract onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V
.end method

.method public abstract onPictureTakenFinished(Z)V
.end method

.method public abstract onPictureTakenImageConsumed(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)Z
.end method
