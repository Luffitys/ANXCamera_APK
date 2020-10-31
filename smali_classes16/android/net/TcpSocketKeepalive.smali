.class final Landroid/net/TcpSocketKeepalive;
.super Landroid/net/SocketKeepalive;
.source "TcpSocketKeepalive.java"


# direct methods
.method constructor <init>(Landroid/net/IConnectivityManager;Landroid/net/Network;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/net/SocketKeepalive;-><init>(Landroid/net/IConnectivityManager;Landroid/net/Network;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$startImpl$0$TcpSocketKeepalive(I)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/net/TcpSocketKeepalive;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v1, p0, Landroid/net/TcpSocketKeepalive;->mService:Landroid/net/IConnectivityManager;

    iget-object v2, p0, Landroid/net/TcpSocketKeepalive;->mNetwork:Landroid/net/Network;

    iget-object v3, p0, Landroid/net/TcpSocketKeepalive;->mCallback:Landroid/net/ISocketKeepaliveCallback;

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/net/IConnectivityManager;->startTcpKeepalive(Landroid/net/Network;Ljava/io/FileDescriptor;ILandroid/net/ISocketKeepaliveCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    nop

    return-void

    :catch_11
    move-exception v0

    const-string v1, "SocketKeepalive"

    const-string v2, "Error starting packet keepalive: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public synthetic lambda$stopImpl$1$TcpSocketKeepalive()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/net/TcpSocketKeepalive;->mSlot:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/net/TcpSocketKeepalive;->mService:Landroid/net/IConnectivityManager;

    iget-object v1, p0, Landroid/net/TcpSocketKeepalive;->mNetwork:Landroid/net/Network;

    iget-object v2, p0, Landroid/net/TcpSocketKeepalive;->mSlot:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->stopKeepalive(Landroid/net/Network;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    :cond_11
    nop

    return-void

    :catch_13
    move-exception v0

    const-string v1, "SocketKeepalive"

    const-string v2, "Error stopping packet keepalive: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method startImpl(I)V
    .registers 4

    iget-object v0, p0, Landroid/net/TcpSocketKeepalive;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/-$$Lambda$TcpSocketKeepalive$E1MP45uBTM6jPfrxAAqXFllEmAA;

    invoke-direct {v1, p0, p1}, Landroid/net/-$$Lambda$TcpSocketKeepalive$E1MP45uBTM6jPfrxAAqXFllEmAA;-><init>(Landroid/net/TcpSocketKeepalive;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method stopImpl()V
    .registers 3

    iget-object v0, p0, Landroid/net/TcpSocketKeepalive;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/-$$Lambda$TcpSocketKeepalive$XcFd1FxqMQjF6WWgzFIVR4hV2xk;

    invoke-direct {v1, p0}, Landroid/net/-$$Lambda$TcpSocketKeepalive$XcFd1FxqMQjF6WWgzFIVR4hV2xk;-><init>(Landroid/net/TcpSocketKeepalive;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
