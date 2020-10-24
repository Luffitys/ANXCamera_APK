.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$MagneticSensorDetect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0xa10


# virtual methods
.method public abstract isLockHDRChecker(Ljava/lang/String;)Z
.end method

.method public abstract onMagneticSensorChanged(Landroid/hardware/SensorEvent;)V
.end method

.method public abstract recordMagneticInfo()V
.end method

.method public abstract resetMagneticInfo()V
.end method

.method public abstract updateMagneticDetection()V
.end method

.method public abstract updatePreview(Landroid/hardware/camera2/CaptureResult;)V
.end method
