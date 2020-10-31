.class public abstract Landroid/hardware/camera2/impl/CaptureCallback;
.super Ljava/lang/Object;
.source "CaptureCallback.java"


# instance fields
.field private mCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CaptureCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CaptureCallback;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getSessionCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureCallback;->mCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method public abstract onCaptureBufferLost(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
.end method

.method public abstract onCaptureCompleted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
.end method

.method public abstract onCaptureFailed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
.end method

.method public abstract onCapturePartial(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
.end method

.method public abstract onCaptureProgressed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
.end method

.method public abstract onCaptureSequenceAborted(Landroid/hardware/camera2/CameraDevice;I)V
.end method

.method public abstract onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraDevice;IJ)V
.end method

.method public abstract onCaptureStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V
.end method
