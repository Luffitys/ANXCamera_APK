.class Lcom/android/camera/module/CloneModule$3;
.super Lcom/android/camera/SensorStateManager$SensorStateAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CloneModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CloneModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/CloneModule$3;->this$0:Lcom/android/camera/module/CloneModule;

    invoke-direct {p0}, Lcom/android/camera/SensorStateManager$SensorStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/CloneModule$3;->this$0:Lcom/android/camera/module/CloneModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/CloneModule$3;->this$0:Lcom/android/camera/module/CloneModule;

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

.method public notifyDevicePostureChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/CloneModule$3;->this$0:Lcom/android/camera/module/CloneModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getEdgeShutterView()Lcom/android/camera/ui/V9EdgeShutterView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->onDevicePostureChanged()V

    return-void
.end method

.method public onDeviceBecomeStable()V
    .locals 1

    const-string p0, "CloneModule"

    const-string v0, "onDeviceBecomeStable"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/CloneModule$3;->this$0:Lcom/android/camera/module/CloneModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isEvAdjusted(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CloneModule$3;->this$0:Lcom/android/camera/module/CloneModule;

    iget-boolean v0, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/android/camera/module/CloneModule$3;->this$0:Lcom/android/camera/module/CloneModule;

    invoke-static {v0}, Lcom/android/camera/module/CloneModule;->access$700(Lcom/android/camera/module/CloneModule;)J

    move-result-wide v3

    const-wide/16 v5, 0xbb8

    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CloneModule$3;->this$0:Lcom/android/camera/module/CloneModule;

    iget-boolean v1, v0, Lcom/android/camera/module/CloneModule;->mIsDuringShooting:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/camera/module/CloneModule;->access$800(Lcom/android/camera/module/CloneModule;)Lcom/android/camera/module/loader/camera2/FocusManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CloneModule$3;->this$0:Lcom/android/camera/module/CloneModule;

    invoke-static {v0}, Lcom/android/camera/module/CloneModule;->access$800(Lcom/android/camera/module/CloneModule;)Lcom/android/camera/module/loader/camera2/FocusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CloneModule$3;->this$0:Lcom/android/camera/module/CloneModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CloneModule;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/CloneModule$3;->this$0:Lcom/android/camera/module/CloneModule;

    invoke-static {p0}, Lcom/android/camera/module/CloneModule;->access$800(Lcom/android/camera/module/CloneModule;)Lcom/android/camera/module/loader/camera2/FocusManager2;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onDeviceKeepMoving(D)V

    :cond_0
    return-void
.end method
