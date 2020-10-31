.class public final Landroid/se/omapi/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# static fields
.field private static final TAG:Ljava/lang/String; = "OMAPI.Channel"


# instance fields
.field private final mChannel:Landroid/se/omapi/ISecureElementChannel;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/se/omapi/SEService;

.field private mSession:Landroid/se/omapi/Session;


# direct methods
.method constructor <init>(Landroid/se/omapi/SEService;Landroid/se/omapi/Session;Landroid/se/omapi/ISecureElementChannel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/se/omapi/Channel;->mLock:Ljava/lang/Object;

    if-eqz p1, :cond_17

    if-eqz p2, :cond_17

    if-eqz p3, :cond_17

    iput-object p1, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    iput-object p2, p0, Landroid/se/omapi/Channel;->mSession:Landroid/se/omapi/Session;

    iput-object p3, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    return-void

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 5

    invoke-virtual {p0}, Landroid/se/omapi/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/se/omapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementChannel;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_11
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    goto :goto_19

    :catchall_f
    move-exception v1

    goto :goto_1b

    :catch_11
    move-exception v1

    :try_start_12
    const-string v2, "OMAPI.Channel"

    const-string v3, "Error closing channel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    monitor-exit v0

    goto :goto_1d

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_f

    throw v1

    :cond_1d
    :goto_1d
    return-void
.end method

.method public getSelectResponse()[B
    .registers 4

    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_21

    :try_start_8
    iget-object v0, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementChannel;->getSelectResponse()[B

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_16

    nop

    if-eqz v0, :cond_15

    array-length v1, v0

    if-nez v1, :cond_15

    const/4 v0, 0x0

    :cond_15
    return-object v0

    :catch_16
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSession()Landroid/se/omapi/Session;
    .registers 2

    iget-object v0, p0, Landroid/se/omapi/Channel;->mSession:Landroid/se/omapi/Session;

    return-object v0
.end method

.method public isBasicChannel()Z
    .registers 4

    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    :try_start_8
    iget-object v0, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementChannel;->isBasicChannel()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .registers 5

    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OMAPI.Channel"

    if-nez v0, :cond_12

    const-string/jumbo v0, "service not connected to system"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_12
    :try_start_12
    iget-object v0, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementChannel;->isClosed()Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_1b

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_1b
    move-exception v0

    const-string v3, "Exception in isClosed()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public selectNext()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2c

    :try_start_8
    iget-object v0, p0, Landroid/se/omapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_b} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_16

    :try_start_b
    iget-object v1, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementChannel;->selectNext()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    :try_start_15
    throw v1
    :try_end_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_15 .. :try_end_16} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_16} :catch_16

    :catch_16
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_21
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transmit([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/se/omapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v1, p1}, Landroid/se/omapi/ISecureElementChannel;->transmit([B)[B

    move-result-object v1
    :try_end_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_11} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_1f
    .catchall {:try_start_b .. :try_end_11} :catchall_1d

    if-eqz v1, :cond_15

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_1d

    return-object v1

    :cond_15
    :try_start_15
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error in communicating with Secure Element"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1d
    .catch Landroid/os/ServiceSpecificException; {:try_start_15 .. :try_end_1d} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1d} :catch_1f
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v1

    goto :goto_35

    :catch_1f
    move-exception v1

    :try_start_20
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_2a
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_1d

    throw v1

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
