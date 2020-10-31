.class public Lmiui/upnp/manager/UpnpHost;
.super Lmiui/upnp/utils/Binding;
.source "UpnpHost.java"


# static fields
.field private static SVC_NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String;

.field private static final UPNP_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.upnp"


# instance fields
.field private serviceInstance:Lmiui/upnp/service/host/IUpnpHostService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmiui/upnp/manager/UpnpHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/manager/UpnpHost;->TAG:Ljava/lang/String;

    const-class v0, Lmiui/upnp/service/host/IUpnpHostService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/manager/UpnpHost;->SVC_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/upnp/utils/Binding;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized bind()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "com.xiaomi.upnp"

    sget-object v1, Lmiui/upnp/manager/UpnpHost;->SVC_NAME:Ljava/lang/String;

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

.method protected onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    invoke-static {p2}, Lmiui/upnp/service/host/IUpnpHostService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/host/IUpnpHostService;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/manager/UpnpHost;->serviceInstance:Lmiui/upnp/service/host/IUpnpHostService;

    return-void
.end method

.method protected onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/upnp/manager/UpnpHost;->serviceInstance:Lmiui/upnp/service/host/IUpnpHostService;

    return-void
.end method

.method public register(Lmiui/upnp/typedef/device/Device;Lmiui/upnp/manager/handler/UpnpCompletionHandler;Lmiui/upnp/manager/handler/UpnpActionHandler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    sget-object v0, Lmiui/upnp/manager/UpnpHost;->TAG:Ljava/lang/String;

    const-string v1, "register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_36

    if-eqz p1, :cond_2e

    :try_start_f
    iget-object v0, p0, Lmiui/upnp/manager/UpnpHost;->serviceInstance:Lmiui/upnp/service/host/IUpnpHostService;

    new-instance v1, Lmiui/upnp/manager/UpnpHost$1;

    invoke-direct {v1, p0, p2}, Lmiui/upnp/manager/UpnpHost$1;-><init>(Lmiui/upnp/manager/UpnpHost;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V

    new-instance v2, Lmiui/upnp/manager/UpnpHost$2;

    invoke-direct {v2, p0, p3}, Lmiui/upnp/manager/UpnpHost$2;-><init>(Lmiui/upnp/manager/UpnpHost;Lmiui/upnp/manager/handler/UpnpActionHandler;)V

    invoke-interface {v0, p1, v1, v2}, Lmiui/upnp/service/host/IUpnpHostService;->register(Lmiui/upnp/typedef/device/Device;Lmiui/upnp/service/handler/ICompletionHandler;Lmiui/upnp/service/handler/IActionListener;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1e} :catch_20

    nop

    return-void

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v3, "register failed: RemoteException"

    invoke-direct {v1, v2, v3}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v1

    :cond_2e
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->INVALID_ARGUMENT:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0

    :cond_36
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method

.method public sendEvents(Lmiui/upnp/typedef/device/invocation/EventInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    sget-object v0, Lmiui/upnp/manager/UpnpHost;->TAG:Ljava/lang/String;

    const-string v1, "sendEvents"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_2c

    if-eqz p1, :cond_24

    :try_start_f
    iget-object v0, p0, Lmiui/upnp/manager/UpnpHost;->serviceInstance:Lmiui/upnp/service/host/IUpnpHostService;

    invoke-interface {v0, p1}, Lmiui/upnp/service/host/IUpnpHostService;->sendEvents(Lmiui/upnp/typedef/device/invocation/EventInfo;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16

    nop

    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v3, "sendEvents failed: RemoteException"

    invoke-direct {v1, v2, v3}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v1

    :cond_24
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->INVALID_ARGUMENT:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0

    :cond_2c
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method

.method public start()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    sget-object v0, Lmiui/upnp/manager/UpnpHost;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_22

    :try_start_d
    iget-object v0, p0, Lmiui/upnp/manager/UpnpHost;->serviceInstance:Lmiui/upnp/service/host/IUpnpHostService;

    invoke-interface {v0}, Lmiui/upnp/service/host/IUpnpHostService;->start()V
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

.method public stop()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    sget-object v0, Lmiui/upnp/manager/UpnpHost;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_22

    :try_start_d
    iget-object v0, p0, Lmiui/upnp/manager/UpnpHost;->serviceInstance:Lmiui/upnp/service/host/IUpnpHostService;

    invoke-interface {v0}, Lmiui/upnp/service/host/IUpnpHostService;->stop()V
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

.method public unregister(Lmiui/upnp/typedef/device/Device;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/UpnpException;
        }
    .end annotation

    sget-object v0, Lmiui/upnp/manager/UpnpHost;->TAG:Ljava/lang/String;

    const-string v1, "unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/upnp/utils/Binding;->isBound()Z

    move-result v0

    if-eqz v0, :cond_31

    if-eqz p1, :cond_29

    :try_start_f
    iget-object v0, p0, Lmiui/upnp/manager/UpnpHost;->serviceInstance:Lmiui/upnp/service/host/IUpnpHostService;

    new-instance v1, Lmiui/upnp/manager/UpnpHost$3;

    invoke-direct {v1, p0, p2}, Lmiui/upnp/manager/UpnpHost$3;-><init>(Lmiui/upnp/manager/UpnpHost;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V

    invoke-interface {v0, p1, v1}, Lmiui/upnp/service/host/IUpnpHostService;->unregister(Lmiui/upnp/typedef/device/Device;Lmiui/upnp/service/handler/ICompletionHandler;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b

    nop

    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v2, Lmiui/upnp/typedef/error/UpnpError;->INTERNAL:Lmiui/upnp/typedef/error/UpnpError;

    const-string v3, "unregister failed: RemoteException"

    invoke-direct {v1, v2, v3}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;Ljava/lang/String;)V

    throw v1

    :cond_29
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->INVALID_ARGUMENT:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0

    :cond_31
    new-instance v0, Lmiui/upnp/typedef/exception/UpnpException;

    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->SERVICE_NOT_BOUND:Lmiui/upnp/typedef/error/UpnpError;

    invoke-direct {v0, v1}, Lmiui/upnp/typedef/exception/UpnpException;-><init>(Lmiui/upnp/typedef/error/UpnpError;)V

    throw v0
.end method
