.class Lcom/android/camera/module/loader/camera2/Camera2OpenManager$1;
.super Lcom/xiaomi/camera/util/Singleton;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/android/camera/module/loader/camera2/Camera2OpenManager;
    .locals 0

    new-instance p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager$1;->create()Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    move-result-object p0

    return-object p0
.end method
