.class public Lcom/android/camera/PreloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PreloadReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreloadReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "PreloadReceiver"

    const-string p1, "receive boot complete"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->preload()V

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    new-instance p0, Lcom/android/camera/module/Camera2Module;

    invoke-direct {p0}, Lcom/android/camera/module/Camera2Module;-><init>()V

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->preload()V

    new-instance p0, Lcom/android/camera/CameraSettings;

    invoke-direct {p0}, Lcom/android/camera/CameraSettings;-><init>()V

    invoke-static {}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->preload()V

    :cond_0
    return-void
.end method
