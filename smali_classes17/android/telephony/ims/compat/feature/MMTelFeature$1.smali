.class Landroid/telephony/ims/compat/feature/MMTelFeature$1;
.super Lcom/android/ims/internal/IImsMMTelFeature$Stub;
.source "MMTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/compat/feature/MMTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;


# direct methods
.method constructor <init>(Landroid/telephony/ims/compat/feature/MMTelFeature;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    # getter for: Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    # getter for: Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2, p3}, Landroid/telephony/ims/compat/feature/MMTelFeature;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    # getter for: Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public endSession(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    # getter for: Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->endSession(I)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    # getter for: Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    # getter for: Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getEcbmInterface()Landroid/telephony/ims/stub/ImsEcbmImplBase;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->getImsEcbm()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    monitor-exit v0

    return-object v2

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getFeatureStatus()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    # getter for: Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getFeatureState()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    # getter for: Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getMultiEndpointInterface()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    monitor-exit v0

    return-object v2

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    # getter for: Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getUtInterface()Lcom/android/ims/internal/IImsUt;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    # getter for: Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getUtInterface()Landroid/telephony/ims/stub/ImsUtImplBase;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/telephony/ims/stub/ImsUtImplBase;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    monitor-exit v0

    return-object v2

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public isConnected(II)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    # getter for: Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->isConnected(II)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isOpened()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    # getter for: Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->isOpened()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    # getter for: Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    # getter for: Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->setUiTTYMode(ILandroid/os/Message;)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    # getter for: Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public turnOffIms()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    # getter for: Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->turnOffIms()V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public turnOnIms()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    # getter for: Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->turnOnIms()V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
