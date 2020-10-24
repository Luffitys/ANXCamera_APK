.class Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ss/android/vesdk/TERecorder$OnSlamDetectListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$3;->this$0:Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlam(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSlam open, register tt ar sensor"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$3;->this$0:Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->access$900(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)Lcom/android/camera/ActivityBase;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSlam close, unregister tt ar sensor"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl$3;->this$0:Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;->access$900(Lcom/android/camera/module/impl/component/LiveConfigChangeTTImpl;)Lcom/android/camera/ActivityBase;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/SensorStateManager;->setTTARSensorEnabled(Z)V

    return-void
.end method
