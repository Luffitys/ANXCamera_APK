.class public abstract Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateCallbackKK"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2

    return-void
.end method

.method public onBusy(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2

    return-void
.end method

.method public onIdle(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2

    return-void
.end method

.method public onRequestQueueEmpty()V
    .registers 1

    return-void
.end method

.method public onSurfacePrepared(Landroid/view/Surface;)V
    .registers 2

    return-void
.end method

.method public onUnconfigured(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2

    return-void
.end method
