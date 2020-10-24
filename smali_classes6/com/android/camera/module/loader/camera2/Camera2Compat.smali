.class public interface abstract Lcom/android/camera/module/loader/camera2/Camera2Compat;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getAuxCameraId()I
.end method

.method public abstract getAuxFrontCameraId()I
.end method

.method public abstract getBokehCameraId()I
.end method

.method public abstract getBokehFrontCameraId()I
.end method

.method public abstract getCapabilities()Landroid/util/SparseArray;
.end method

.method public abstract getCapabilities(I)Lcom/android/camera2/CameraCapabilities;
.end method

.method public abstract getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;
.end method

.method public abstract getDefaultDualVideoCameraIds()Ljava/util/concurrent/ConcurrentHashMap;
.end method

.method public abstract getFrontCameraId()I
.end method

.method public abstract getMainBackCameraId()I
.end method

.method public abstract getMaxJpegSize()I
.end method

.method public abstract getParallelVirtualCameraId()I
.end method

.method public abstract getRoleIdByActualId(I)I
.end method

.method public abstract getSATCameraId()I
.end method

.method public abstract getSATFrontCameraId()I
.end method

.method public abstract getStandaloneMacroCameraId()I
.end method

.method public abstract getUltraTeleCameraId()I
.end method

.method public abstract getUltraWideBokehCameraId()I
.end method

.method public abstract getUltraWideCameraId()I
.end method

.method public abstract getVideoSATCameraId()I
.end method

.method public abstract getVirtualBackCameraId()I
.end method

.method public abstract getVirtualFrontCameraId()I
.end method

.method public abstract hasBokehCamera()Z
.end method

.method public abstract hasPortraitCamera()Z
.end method

.method public abstract hasSATCamera()Z
.end method

.method public abstract hasTeleCamera()Z
.end method

.method public abstract init(Landroid/hardware/camera2/CameraManager;)V
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract isPartSAT()Z
.end method

.method public abstract reset()V
.end method

.method public abstract setCurrentOpenedCameraId(I)V
.end method
