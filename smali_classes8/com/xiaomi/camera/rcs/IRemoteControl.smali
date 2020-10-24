.class public interface abstract Lcom/xiaomi/camera/rcs/IRemoteControl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract customClientRequest(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract customRequest(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract injectKeyEvent(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/view/KeyEvent;)V
.end method

.method public abstract injectMotionEvent(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/view/MotionEvent;)V
.end method

.method public abstract isStreaming(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Z
.end method

.method public abstract registerRemoteController(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)I
.end method

.method public abstract startStreaming(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/os/Bundle;)V
.end method

.method public abstract stopStreaming(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)V
.end method

.method public abstract unregisterRemoteController(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)V
.end method
