.class public abstract Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AvailabilityCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAccessPrioritiesChanged()V
    .registers 1

    return-void
.end method

.method public onCameraAvailable(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onCameraClosed(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onPhysicalCameraAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onPhysicalCameraUnavailable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
