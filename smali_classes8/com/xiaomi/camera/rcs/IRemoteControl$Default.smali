.class public Lcom/xiaomi/camera/rcs/IRemoteControl$Default;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/camera/rcs/IRemoteControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public customClientRequest(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public customRequest(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public injectKeyEvent(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public injectMotionEvent(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public isStreaming(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public registerRemoteController(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startStreaming(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public stopStreaming(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)V
    .locals 0

    return-void
.end method

.method public unregisterRemoteController(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)V
    .locals 0

    return-void
.end method
