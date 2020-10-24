.class Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;
.super Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub;
.source ""


# instance fields
.field mCustomListener:Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;

.field mListener:Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;

.field mStreamingListener:Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/camera/rcs/RemoteControl$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionStatus(I)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;->mListener:Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;->connectionStatus(I)V

    :cond_0
    return-void
.end method

.method public customCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;->mCustomListener:Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;->customCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public streamingServerStatus(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;->mStreamingListener:Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;->streamingServerStatus(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public streamingSessionStatus(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;->mStreamingListener:Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;->streamingSessionStatus(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
