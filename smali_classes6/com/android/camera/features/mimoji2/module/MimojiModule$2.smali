.class Lcom/android/camera/features/mimoji2/module/MimojiModule$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/SensorStateManager$SensorStateListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimoji2/module/MimojiModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->access$1600(Lcom/android/camera/features/mimoji2/module/MimojiModule;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyDevicePostureChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->access$2600(Lcom/android/camera/features/mimoji2/module/MimojiModule;)Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getEdgeShutterView()Lcom/android/camera/ui/V9EdgeShutterView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->onDevicePostureChanged()V

    return-void
.end method

.method public onDeviceBecomeStable()V
    .locals 1

    invoke-static {}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->access$1500()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onDeviceBecomeStable"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeviceBeginMoving()V
    .locals 0

    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->access$1700(Lcom/android/camera/features/mimoji2/module/MimojiModule;)Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isEvAdjusted(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->access$1800(Lcom/android/camera/features/mimoji2/module/MimojiModule;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->access$1900(Lcom/android/camera/features/mimoji2/module/MimojiModule;)J

    move-result-wide v3

    const-wide/16 v5, 0xbb8

    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->is3ALocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->access$2000(Lcom/android/camera/features/mimoji2/module/MimojiModule;)Lcom/android/camera/module/loader/camera2/FocusManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->access$2000(Lcom/android/camera/features/mimoji2/module/MimojiModule;)Lcom/android/camera/module/loader/camera2/FocusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->access$2000(Lcom/android/camera/features/mimoji2/module/MimojiModule;)Lcom/android/camera/module/loader/camera2/FocusManager2;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onDeviceKeepMoving(D)V

    :cond_0
    return-void
.end method

.method public onDeviceKeepStable()V
    .locals 0

    return-void
.end method

.method public onDeviceLieChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDeviceOrientationChanged(FZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->access$2200(Lcom/android/camera/features/mimoji2/module/MimojiModule;)I

    move-result p1

    int-to-float p1, p1

    :goto_0
    invoke-static {v0, p1}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->access$2102(Lcom/android/camera/features/mimoji2/module/MimojiModule;F)F

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->access$2300(Lcom/android/camera/features/mimoji2/module/MimojiModule;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->access$2400(Lcom/android/camera/features/mimoji2/module/MimojiModule;)Lcom/android/camera/Camera;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule$2;->this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;

    invoke-static {p0}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->access$2500(Lcom/android/camera/features/mimoji2/module/MimojiModule;)F

    move-result p0

    invoke-static {v0, p0}, Lcom/android/camera/Util;->getShootRotation(Landroid/app/Activity;F)F

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/android/camera/effect/EffectController;->setDeviceRotation(ZF)V

    :cond_1
    return-void
.end method

.method public onDeviceRotationChanged([F)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    return-void
.end method
