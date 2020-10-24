.class public Lcom/xiaomi/camera/rcs/IRemoteControlClient$Default;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/camera/rcs/IRemoteControlClient;


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

.method public customCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public streamingServerStatus(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public streamingSessionStatus(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
