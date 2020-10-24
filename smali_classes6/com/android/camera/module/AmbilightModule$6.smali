.class Lcom/android/camera/module/AmbilightModule$6;
.super Lcom/android/camera/SensorStateManager$SensorStateAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/AmbilightModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule$6;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-direct {p0}, Lcom/android/camera/SensorStateManager$SensorStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$6;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule$6;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDeviceOrientationChanged(FZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/AmbilightModule$6;->this$0:Lcom/android/camera/module/AmbilightModule;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, v0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    int-to-float p1, p1

    :goto_0
    iput p1, v0, Lcom/android/camera/module/BaseModule;->mDeviceRotation:F

    iget-object p1, p0, Lcom/android/camera/module/AmbilightModule$6;->this$0:Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/module/AmbilightModule$6;->this$0:Lcom/android/camera/module/AmbilightModule;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mDeviceRotation:F

    invoke-static {v0, p0}, Lcom/android/camera/Util;->getShootRotation(Landroid/app/Activity;F)F

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/android/camera/effect/EffectController;->setDeviceRotation(ZF)V

    :cond_2
    return-void
.end method
