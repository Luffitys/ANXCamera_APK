.class public final Landroid/se/omapi/Session;
.super Ljava/lang/Object;
.source "Session.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OMAPI.Session"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mReader:Landroid/se/omapi/Reader;

.field private final mService:Landroid/se/omapi/SEService;

.field private final mSession:Landroid/se/omapi/ISecureElementSession;


# direct methods
.method constructor <init>(Landroid/se/omapi/SEService;Landroid/se/omapi/ISecureElementSession;Landroid/se/omapi/Reader;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/se/omapi/Session;->mLock:Ljava/lang/Object;

    if-eqz p1, :cond_17

    if-eqz p3, :cond_17

    if-eqz p2, :cond_17

    iput-object p1, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    iput-object p3, p0, Landroid/se/omapi/Session;->mReader:Landroid/se/omapi/Reader;

    iput-object p2, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

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

    iget-object v0, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "OMAPI.Session"

    const-string/jumbo v1, "service not connected to system"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, p0, Landroid/se/omapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_14
    iget-object v1, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementSession;->close()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1c
    .catchall {:try_start_14 .. :try_end_19} :catchall_1a

    goto :goto_24

    :catchall_1a
    move-exception v1

    goto :goto_26

    :catch_1c
    move-exception v1

    :try_start_1d
    const-string v2, "OMAPI.Session"

    const-string v3, "Error closing session"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_1a

    throw v1
.end method

.method public closeChannels()V
    .registers 5

    iget-object v0, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "OMAPI.Session"

    const-string/jumbo v1, "service not connected to system"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, p0, Landroid/se/omapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_14
    iget-object v1, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementSession;->closeChannels()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1c
    .catchall {:try_start_14 .. :try_end_19} :catchall_1a

    goto :goto_24

    :catchall_1a
    move-exception v1

    goto :goto_26

    :catch_1c
    move-exception v1

    :try_start_1d
    const-string v2, "OMAPI.Session"

    const-string v3, "Error closing channels"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_1a

    throw v1
.end method

.method public getATR()[B
    .registers 4

    iget-object v0, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    :try_start_8
    iget-object v0, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementSession;->getAtr()[B

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

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

.method public getReader()Landroid/se/omapi/Reader;
    .registers 2

    iget-object v0, p0, Landroid/se/omapi/Session;->mReader:Landroid/se/omapi/Reader;

    return-object v0
.end method

.method public isClosed()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementSession;->isClosed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const/4 v1, 0x1

    return v1
.end method

.method public openBasicChannel([B)Landroid/se/omapi/Channel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/se/omapi/Session;->openBasicChannel([BB)Landroid/se/omapi/Channel;

    move-result-object v0

    return-object v0
.end method

.method public openBasicChannel([BB)Landroid/se/omapi/Channel;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Landroid/se/omapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    iget-object v2, p0, Landroid/se/omapi/Session;->mReader:Landroid/se/omapi/Reader;

    invoke-virtual {v2}, Landroid/se/omapi/Reader;->getSEService()Landroid/se/omapi/SEService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/se/omapi/SEService;->getListener()Landroid/se/omapi/ISecureElementListener;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/se/omapi/ISecureElementSession;->openBasicChannel([BBLandroid/se/omapi/ISecureElementListener;)Landroid/se/omapi/ISecureElementChannel;

    move-result-object v1
    :try_end_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_1b} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1b} :catch_2b
    .catchall {:try_start_b .. :try_end_1b} :catchall_29

    if-nez v1, :cond_20

    const/4 v2, 0x0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_29

    return-object v2

    :cond_20
    :try_start_20
    new-instance v2, Landroid/se/omapi/Channel;

    iget-object v3, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-direct {v2, v3, p0, v1}, Landroid/se/omapi/Channel;-><init>(Landroid/se/omapi/SEService;Landroid/se/omapi/Session;Landroid/se/omapi/ISecureElementChannel;)V
    :try_end_27
    .catch Landroid/os/ServiceSpecificException; {:try_start_20 .. :try_end_27} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_2b
    .catchall {:try_start_20 .. :try_end_27} :catchall_29

    :try_start_27
    monitor-exit v0

    return-object v2

    :catchall_29
    move-exception v1

    goto :goto_5f

    :catch_2b
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_36
    move-exception v1

    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_55

    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4b

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4b
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_55
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_27 .. :try_end_60} :catchall_29

    throw v1

    :cond_61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openLogicalChannel([B)Landroid/se/omapi/Channel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/se/omapi/Session;->openLogicalChannel([BB)Landroid/se/omapi/Channel;

    move-result-object v0

    return-object v0
.end method

.method public openLogicalChannel([BB)Landroid/se/omapi/Channel;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Landroid/se/omapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    iget-object v2, p0, Landroid/se/omapi/Session;->mReader:Landroid/se/omapi/Reader;

    invoke-virtual {v2}, Landroid/se/omapi/Reader;->getSEService()Landroid/se/omapi/SEService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/se/omapi/SEService;->getListener()Landroid/se/omapi/ISecureElementListener;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/se/omapi/ISecureElementSession;->openLogicalChannel([BBLandroid/se/omapi/ISecureElementListener;)Landroid/se/omapi/ISecureElementChannel;

    move-result-object v1
    :try_end_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_1b} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1b} :catch_2b
    .catchall {:try_start_b .. :try_end_1b} :catchall_29

    if-nez v1, :cond_20

    const/4 v2, 0x0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_29

    return-object v2

    :cond_20
    :try_start_20
    new-instance v2, Landroid/se/omapi/Channel;

    iget-object v3, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-direct {v2, v3, p0, v1}, Landroid/se/omapi/Channel;-><init>(Landroid/se/omapi/SEService;Landroid/se/omapi/Session;Landroid/se/omapi/ISecureElementChannel;)V
    :try_end_27
    .catch Landroid/os/ServiceSpecificException; {:try_start_20 .. :try_end_27} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_2b
    .catchall {:try_start_20 .. :try_end_27} :catchall_29

    :try_start_27
    monitor-exit v0

    return-object v2

    :catchall_29
    move-exception v1

    goto :goto_5f

    :catch_2b
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_36
    move-exception v1

    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_55

    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4b

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4b
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_55
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_27 .. :try_end_60} :catchall_29

    throw v1

    :cond_61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
