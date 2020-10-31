.class public final Landroid/net/IpSecManager$IpSecTunnelInterface;
.super Ljava/lang/Object;
.source "IpSecManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpSecTunnelInterface"
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mInterfaceName:Ljava/lang/String;

.field private final mLocalAddress:Ljava/net/InetAddress;

.field private final mOpPackageName:Ljava/lang/String;

.field private final mRemoteAddress:Ljava/net/InetAddress;

.field private mResourceId:I

.field private final mService:Landroid/net/IIpSecService;

.field private final mUnderlyingNetwork:Landroid/net/Network;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/net/IIpSecService;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mCloseGuard:Ldalvik/system/CloseGuard;

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mOpPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mService:Landroid/net/IIpSecService;

    iput-object p3, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mLocalAddress:Ljava/net/InetAddress;

    iput-object p4, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mRemoteAddress:Ljava/net/InetAddress;

    iput-object p5, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mUnderlyingNetwork:Landroid/net/Network;

    nop

    :try_start_1b
    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    iget-object v6, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mOpPackageName:Ljava/lang/String;

    move-object v1, p2

    move-object v4, p5

    invoke-interface/range {v1 .. v6}, Landroid/net/IIpSecService;->createTunnelInterface(Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTunnelInterfaceResponse;

    move-result-object v0

    iget v1, v0, Landroid/net/IpSecTunnelInterfaceResponse;->status:I

    if-eqz v1, :cond_58

    const/4 v2, 0x1

    if-eq v1, v2, :cond_50

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown status returned by IpSecService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/net/IpSecTunnelInterfaceResponse;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_50
    new-instance v1, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string v2, "No more tunnel interfaces may be allocated by this requester."

    invoke-direct {v1, v2}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_58
    nop

    iget v1, v0, Landroid/net/IpSecTunnelInterfaceResponse;->resourceId:I

    iput v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    iget-object v1, v0, Landroid/net/IpSecTunnelInterfaceResponse;->interfaceName:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mInterfaceName:Ljava/lang/String;
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_61} :catch_6a

    nop

    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "constructor"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :catch_6a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/net/IIpSecService;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;Landroid/net/IpSecManager$1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Landroid/net/IpSecManager$IpSecTunnelInterface;-><init>(Landroid/content/Context;Landroid/net/IIpSecService;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)V

    return-void
.end method


# virtual methods
.method public addAddress(Ljava/net/InetAddress;I)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mService:Landroid/net/IIpSecService;

    iget v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, p1, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v3, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/net/IIpSecService;->addAddressToTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_e} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    nop

    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_16
    move-exception v0

    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public close()V
    .registers 6

    const/4 v0, -0x1

    :try_start_1
    iget-object v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mService:Landroid/net/IIpSecService;

    iget v2, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    iget-object v3, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/net/IIpSecService;->deleteTunnelInterface(ILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_15
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    nop

    :goto_b
    iput v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_36

    :catchall_13
    move-exception v1

    goto :goto_3d

    :catch_15
    move-exception v1

    :try_start_16
    const-string v2, "IpSecManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_b

    :goto_36
    return-void

    :catch_37
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_3d
    .catchall {:try_start_16 .. :try_end_3d} :catchall_13

    :goto_3d
    iput v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    throw v1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_7
    invoke-virtual {p0}, Landroid/net/IpSecManager$IpSecTunnelInterface;->close()V

    return-void
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()I
    .registers 2

    iget v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    return v0
.end method

.method public removeAddress(Ljava/net/InetAddress;I)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mService:Landroid/net/IIpSecService;

    iget v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, p1, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v3, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/net/IIpSecService;->removeAddressFromTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_e} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    nop

    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_16
    move-exception v0

    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IpSecTunnelInterface{ifname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",resourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
