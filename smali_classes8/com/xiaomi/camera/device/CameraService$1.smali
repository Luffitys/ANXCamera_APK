.class Lcom/xiaomi/camera/device/CameraService$1;
.super Lcom/xiaomi/camera/util/Singleton;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaomi/camera/device/CameraService;
    .locals 1

    new-instance p0, Lcom/xiaomi/camera/device/CameraService;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/device/CameraService;-><init>(Lcom/xiaomi/camera/device/CameraService$1;)V

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/device/CameraService$1;->create()Lcom/xiaomi/camera/device/CameraService;

    move-result-object p0

    return-object p0
.end method
