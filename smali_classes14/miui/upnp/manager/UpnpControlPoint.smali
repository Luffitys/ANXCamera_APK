.class public Lmiui/upnp/manager/UpnpControlPoint;
.super Lmiui/upnp/utils/Binding;
.source "UpnpControlPoint.java"


# static fields
.field private static SVC_NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String;

.field private static final UPNP_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.upnp"


# instance fields
.field private serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmiui/upnp/manager/UpnpControlPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/manager/UpnpControlPoint;->TAG:Ljava/lang/String;

    const-class v0, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/manager/UpnpControlPoint;->SVC_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/upnp/utils/Binding;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/upnp/manager/UpnpControlPoint;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized bind()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "com.xiaomi.upnp"

    sget-object v1, Lmiui/upnp/manager/UpnpControlPoint;->SVC_NAME:Ljava/lang/String;

    invoke-super {p0, v0, v1}, Lmiui/upnp/utils/Binding;->bind(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invoke(Lmiui/upnp/typedef/device/invocation/ActionInfo;Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    sget-object v0, Lmiui/upnp/manager/UpnpControlPoint;->TAG:Ljava/lang/String;

    const-string v1, "invoke"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz p1, :cond_26

    :try_start_f
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint;->serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    new-instance v1, Lmiui/upnp/manager/UpnpControlPoint$4;

    invoke-direct {v1, p0, p2}, Lmiui/upnp/manager/UpnpControlPoint$4;-><init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;)V

    invoke-interface {v0, p1, v1}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;->invoke(Lmiui/upnp/typedef/device/invocation/ActionInfo;Lmiui/upnp/service/handler/IInvokeCompletionHandler;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b

    nop

    return-void

    :catch_1b
    move-exception v0

    new-instance v1, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v3, "invoke failed: RemoteException"

    invoke-direct {v1, v2, v3}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v1

    :cond_26
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->INVALID_ARGUMENT:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0

    :cond_2e
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method

.method protected onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    invoke-static {p2}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint;->serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    return-void
.end method

.method protected onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint;->serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    return-void
.end method

.method public start()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    sget-object v0, Lmiui/upnp/manager/UpnpControlPoint;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_22

    :try_start_d
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint;->serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    invoke-interface {v0}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;->start()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v3, "start failed: RemoteException"

    invoke-direct {v1, v2, v3}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v1

    :cond_22
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method

.method public startScan(Ljava/util/List;Lmiui/upnp/manager/handler/UpnpCompletionHandler;Lmiui/upnp/manager/handler/UpnpScanListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/urn/Urn;",
            ">;",
            "Lmiui/upnp/manager/handler/UpnpCompletionHandler;",
            "Lmiui/upnp/manager/handler/UpnpScanListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    sget-object v0, Lmiui/upnp/manager/UpnpControlPoint;->TAG:Ljava/lang/String;

    const-string v1, "startScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_2c

    :try_start_d
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint;->serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    new-instance v1, Lmiui/upnp/manager/UpnpControlPoint$1;

    invoke-direct {v1, p0, p2}, Lmiui/upnp/manager/UpnpControlPoint$1;-><init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V

    new-instance v2, Lmiui/upnp/manager/UpnpControlPoint$2;

    invoke-direct {v2, p0, p3}, Lmiui/upnp/manager/UpnpControlPoint$2;-><init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/manager/handler/UpnpScanListener;)V

    invoke-interface {v0, p1, v1, v2}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;->startScan(Ljava/util/List;Lmiui/upnp/service/handler/ICompletionHandler;Lmiui/upnp/service/handler/IScanListener;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1e

    nop

    return-void

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v3, "startScan failed: RemoteException"

    invoke-direct {v1, v2, v3}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v1

    :cond_2c
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method

.method public stop()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    sget-object v0, Lmiui/upnp/manager/UpnpControlPoint;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_22

    :try_start_d
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint;->serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    invoke-interface {v0}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;->stop()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v3, "stop failed: RemoteException"

    invoke-direct {v1, v2, v3}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v1

    :cond_22
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method

.method public stopScan(Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    sget-object v0, Lmiui/upnp/manager/UpnpControlPoint;->TAG:Ljava/lang/String;

    const-string v1, "stopScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_24

    :try_start_d
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint;->serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    new-instance v1, Lmiui/upnp/manager/UpnpControlPoint$3;

    invoke-direct {v1, p0, p1}, Lmiui/upnp/manager/UpnpControlPoint$3;-><init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V

    invoke-interface {v0, v1}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;->stopScan(Lmiui/upnp/service/handler/ICompletionHandler;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_19

    nop

    return-void

    :catch_19
    move-exception v0

    new-instance v1, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v3, "stopScan failed: RemoteException"

    invoke-direct {v1, v2, v3}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v1

    :cond_24
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method

.method public subscribe(Lmiui/upnp/typedef/device/Service;Lmiui/upnp/manager/handler/UpnpCompletionHandler;Lmiui/upnp/manager/handler/UpnpEventListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    sget-object v0, Lmiui/upnp/manager/UpnpControlPoint;->TAG:Ljava/lang/String;

    const-string v1, "subscribe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lmiui/upnp/typedef/device/Service;->isSubscribed()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-static {p1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoCreator;->create(Lmiui/upnp/typedef/device/Service;)Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;

    move-result-object v0

    :try_start_17
    iget-object v1, p0, Lmiui/upnp/manager/UpnpControlPoint;->serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    new-instance v2, Lmiui/upnp/manager/UpnpControlPoint$5;

    invoke-direct {v2, p0, p1, p2}, Lmiui/upnp/manager/UpnpControlPoint$5;-><init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/typedef/device/Service;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V

    new-instance v3, Lmiui/upnp/manager/UpnpControlPoint$6;

    invoke-direct {v3, p0, p1, p3}, Lmiui/upnp/manager/UpnpControlPoint$6;-><init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/typedef/device/Service;Lmiui/upnp/manager/handler/UpnpEventListener;)V

    invoke-interface {v1, v0, v2, v3}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;->subscribe(Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;Lmiui/upnp/service/handler/ISubscribeCompletionHandler;Lmiui/upnp/service/handler/IEventListener;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_26} :catch_28

    nop

    return-void

    :catch_28
    move-exception v1

    new-instance v2, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v3, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v4, "invoke failed: RemoteException"

    invoke-direct {v2, v3, v4}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v2

    :cond_33
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_SUBSCRIBED:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0

    :cond_3b
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method

.method public unsubscribe(Lmiui/upnp/typedef/device/Service;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    sget-object v0, Lmiui/upnp/manager/UpnpControlPoint;->TAG:Ljava/lang/String;

    const-string v1, "unsubscribe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lmiui/upnp/typedef/device/Service;->isSubscribed()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {p1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoCreator;->create(Lmiui/upnp/typedef/device/Service;)Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;

    move-result-object v0

    :try_start_17
    iget-object v1, p0, Lmiui/upnp/manager/UpnpControlPoint;->serviceInstance:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    new-instance v2, Lmiui/upnp/manager/UpnpControlPoint$7;

    invoke-direct {v2, p0, p1, p2}, Lmiui/upnp/manager/UpnpControlPoint$7;-><init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/typedef/device/Service;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V

    invoke-interface {v1, v0, v2}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;->unsubscribe(Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;Lmiui/upnp/service/handler/ICompletionHandler;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_21} :catch_23

    nop

    return-void

    :catch_23
    move-exception v1

    new-instance v2, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v3, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v4, "invoke failed: RemoteException"

    invoke-direct {v2, v3, v4}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v2

    :cond_2e
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_SUBSCRIBED:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0

    :cond_36
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method
