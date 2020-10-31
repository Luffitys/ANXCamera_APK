.class Lmiui/cameraanimation/CameraAnimationManager$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "CameraAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cameraanimation/CameraAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/cameraanimation/CameraAnimationManager;


# direct methods
.method constructor <init>(Lmiui/cameraanimation/CameraAnimationManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/cameraanimation/CameraAnimationManager$1;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$1;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    # getter for: Lmiui/cameraanimation/CameraAnimationManager;->mFrontCameraID:Ljava/util/List;
    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->access$000(Lmiui/cameraanimation/CameraAnimationManager;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$1;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    # invokes: Lmiui/cameraanimation/CameraAnimationManager;->stopCameraAnimation()V
    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->access$100(Lmiui/cameraanimation/CameraAnimationManager;)V

    :cond_20
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$1;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    # getter for: Lmiui/cameraanimation/CameraAnimationManager;->mFrontCameraID:Ljava/util/List;
    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->access$000(Lmiui/cameraanimation/CameraAnimationManager;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$1;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    # getter for: Lmiui/cameraanimation/CameraAnimationManager;->mLastUnavailableCameraId:I
    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->access$200(Lmiui/cameraanimation/CameraAnimationManager;)I

    move-result v1

    if-eq v1, v0, :cond_28

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$1;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    # invokes: Lmiui/cameraanimation/CameraAnimationManager;->startCameraAnimation()V
    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->access$300(Lmiui/cameraanimation/CameraAnimationManager;)V

    :cond_28
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$1;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    # setter for: Lmiui/cameraanimation/CameraAnimationManager;->mLastUnavailableCameraId:I
    invoke-static {v1, v0}, Lmiui/cameraanimation/CameraAnimationManager;->access$202(Lmiui/cameraanimation/CameraAnimationManager;I)I

    return-void
.end method
