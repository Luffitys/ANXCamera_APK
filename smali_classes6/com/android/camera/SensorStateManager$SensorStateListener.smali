.class public interface abstract Lcom/android/camera/SensorStateManager$SensorStateListener;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract isWorking()Z
.end method

.method public abstract notifyDevicePostureChanged()V
.end method

.method public abstract onDeviceBecomeStable()V
.end method

.method public abstract onDeviceBeginMoving()V
.end method

.method public abstract onDeviceKeepMoving(D)V
.end method

.method public abstract onDeviceKeepStable()V
.end method

.method public abstract onDeviceLieChanged(Z)V
.end method

.method public abstract onDeviceOrientationChanged(FZ)V
.end method

.method public abstract onDeviceRotationChanged([F)V
.end method

.method public abstract onSensorChanged(Landroid/hardware/SensorEvent;)V
.end method
