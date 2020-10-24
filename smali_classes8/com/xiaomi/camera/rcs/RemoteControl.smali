.class public Lcom/xiaomi/camera/rcs/RemoteControl;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BIND_SERVICE_INTENT:Ljava/lang/String; = "com.xiaomi.camera.REMOTE_CONTROL_SERVICE_BIND"

.field private static final LOG_TAG_PREFIX:Ljava/lang/String; = "CAM_RCS_"

.field public static final STATUS_DISCONNECTED:I = 0x4

.field public static final STATUS_PERMISSION_DENIED:I = 0x1

.field public static final STATUS_SERVICE_UNAVAILABLE:I = 0x3

.field public static final STATUS_STREAMING_SERVER_BIND_FAILED:I = 0x1

.field public static final STATUS_STREAMING_SERVER_READY:I = 0x2

.field public static final STATUS_STREAMING_SESSION_ERROR:I = 0x1

.field public static final STATUS_STREAMING_SESSION_STARTED:I = 0x2

.field public static final STATUS_STREAMING_SESSION_STOPPED:I = 0x3

.field public static final STATUS_SUCCESS:I = 0x0

.field public static final STATUS_UNKNOWN_ERROR:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallbackHandler:Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

.field private final mContext:Landroid/content/Context;

.field private mServiceConnection:Lcom/xiaomi/camera/rcs/RemoteControl$RemoteControlServiceConnection;

.field private mServiceInterface:Lcom/xiaomi/camera/rcs/IRemoteControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CAM_RCS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/xiaomi/camera/rcs/RemoteControl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/rcs/RemoteControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;-><init>(Lcom/xiaomi/camera/rcs/RemoteControl$1;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mCallbackHandler:Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

    iput-object p2, v0, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;->mListener:Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;

    iput-object p3, v0, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;->mStreamingListener:Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;

    iput-object p4, v0, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;->mCustomListener:Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.xiaomi.camera.REMOTE_CONTROL_SERVICE_BIND"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p2, p4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p3

    const/4 p4, 0x3

    if-eqz p3, :cond_2

    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_2

    iget-boolean v2, v0, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v2, :cond_2

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaomi/camera/rcs/RemoteControl$RemoteControlServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/camera/rcs/RemoteControl$RemoteControlServiceConnection;-><init>(Lcom/xiaomi/camera/rcs/RemoteControl;Lcom/xiaomi/camera/rcs/RemoteControl$1;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mServiceConnection:Lcom/xiaomi/camera/rcs/RemoteControl$RemoteControlServiceConnection;

    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/camera/rcs/RemoteControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding to service found in package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p3, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mServiceConnection:Lcom/xiaomi/camera/rcs/RemoteControl$RemoteControlServiceConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/xiaomi/camera/rcs/RemoteControl;->TAG:Ljava/lang/String;

    const-string p3, "bind service failed"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mServiceConnection:Lcom/xiaomi/camera/rcs/RemoteControl$RemoteControlServiceConnection;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mServiceConnection:Lcom/xiaomi/camera/rcs/RemoteControl$RemoteControlServiceConnection;

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mCallbackHandler:Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

    invoke-virtual {p0, p4}, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;->connectionStatus(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    sget-object p1, Lcom/xiaomi/camera/rcs/RemoteControl;->TAG:Ljava/lang/String;

    const-string p2, "Failed to resolve service"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mCallbackHandler:Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

    invoke-virtual {p0, p4}, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;->connectionStatus(I)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/rcs/RemoteControl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaomi/camera/rcs/RemoteControl;)Lcom/xiaomi/camera/rcs/RemoteControl$RemoteControlServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mServiceConnection:Lcom/xiaomi/camera/rcs/RemoteControl$RemoteControlServiceConnection;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaomi/camera/rcs/RemoteControl;Lcom/xiaomi/camera/rcs/RemoteControl$RemoteControlServiceConnection;)Lcom/xiaomi/camera/rcs/RemoteControl$RemoteControlServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mServiceConnection:Lcom/xiaomi/camera/rcs/RemoteControl$RemoteControlServiceConnection;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xiaomi/camera/rcs/RemoteControl;Lcom/xiaomi/camera/rcs/IRemoteControl;)Lcom/xiaomi/camera/rcs/IRemoteControl;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mServiceInterface:Lcom/xiaomi/camera/rcs/IRemoteControl;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaomi/camera/rcs/RemoteControl;)Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mCallbackHandler:Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaomi/camera/rcs/RemoteControl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getCallbackHandler()Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mCallbackHandler:Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException;

    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException;-><init>()V

    throw p0
.end method

.method public static getRemoteControl(Landroid/content/Context;Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;)Lcom/xiaomi/camera/rcs/RemoteControl;
    .locals 2

    new-instance v0, Lcom/xiaomi/camera/rcs/RemoteControl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/xiaomi/camera/rcs/RemoteControl;-><init>(Landroid/content/Context;Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;)V

    return-object v0
.end method

.method public static getRemoteControl(Landroid/content/Context;Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;)Lcom/xiaomi/camera/rcs/RemoteControl;
    .locals 2

    new-instance v0, Lcom/xiaomi/camera/rcs/RemoteControl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/xiaomi/camera/rcs/RemoteControl;-><init>(Landroid/content/Context;Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;)V

    return-object v0
.end method

.method public static getRemoteControl(Landroid/content/Context;Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;)Lcom/xiaomi/camera/rcs/RemoteControl;
    .locals 1

    new-instance v0, Lcom/xiaomi/camera/rcs/RemoteControl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/camera/rcs/RemoteControl;-><init>(Landroid/content/Context;Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;)V

    return-object v0
.end method

.method private getServiceInterface()Lcom/xiaomi/camera/rcs/IRemoteControl;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mServiceInterface:Lcom/xiaomi/camera/rcs/IRemoteControl;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException;

    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException;-><init>()V

    throw p0
.end method

.method public static serviceAvailable(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.camera.REMOTE_CONTROL_SERVICE_BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public declared-synchronized customClientRequest(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/rcs/RemoteControl;->TAG:Ljava/lang/String;

    const-string v1, "customClientRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/RemoteControl;->getServiceInterface()Lcom/xiaomi/camera/rcs/IRemoteControl;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/RemoteControl;->getCallbackHandler()Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaomi/camera/rcs/IRemoteControl;->customClientRequest(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    :try_start_2
    new-instance p1, Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException;

    invoke-direct {p1}, Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized customRequest(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/rcs/RemoteControl;->TAG:Ljava/lang/String;

    const-string v1, "customRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/RemoteControl;->getServiceInterface()Lcom/xiaomi/camera/rcs/IRemoteControl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/camera/rcs/IRemoteControl;->customRequest(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    :try_start_2
    new-instance p1, Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException;

    invoke-direct {p1}, Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/rcs/RemoteControl;->TAG:Ljava/lang/String;

    const-string v1, "finalize: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/RemoteControl;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    sget-object p0, Lcom/xiaomi/camera/rcs/RemoteControl;->TAG:Ljava/lang/String;

    const-string v0, "finalize: X"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public declared-synchronized injectKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/rcs/RemoteControl;->TAG:Ljava/lang/String;

    const-string v1, "injectKeyEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/RemoteControl;->getServiceInterface()Lcom/xiaomi/camera/rcs/IRemoteControl;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/RemoteControl;->getCallbackHandler()Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/camera/rcs/IRemoteControl;->injectKeyEvent(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/view/KeyEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    :try_start_2
    new-instance p1, Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException;

    invoke-direct {p1}, Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized injectMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/rcs/RemoteControl;->TAG:Ljava/lang/String;

    const-string v1, "injectMotionEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/RemoteControl;->getServiceInterface()Lcom/xiaomi/camera/rcs/IRemoteControl;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/RemoteControl;->getCallbackHandler()Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/camera/rcs/IRemoteControl;->injectMotionEvent(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/view/MotionEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    :try_start_2
    new-instance p1, Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException;

    invoke-direct {p1}, Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isStreaming()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/rcs/RemoteControl;->TAG:Ljava/lang/String;

    const-string v1, "isStreaming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/RemoteControl;->getServiceInterface()Lcom/xiaomi/camera/rcs/IRemoteControl;

    move-result-object v1

    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/RemoteControl;->getCallbackHandler()Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaomi/camera/rcs/IRemoteControl;->isStreaming(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    sget-object v1, Lcom/xiaomi/camera/rcs/RemoteControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStreaming: -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/rcs/RemoteControl;->TAG:Ljava/lang/String;

    const-string v1, "release: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mServiceInterface:Lcom/xiaomi/camera/rcs/IRemoteControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mCallbackHandler:Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mServiceInterface:Lcom/xiaomi/camera/rcs/IRemoteControl;

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mCallbackHandler:Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

    invoke-interface {v0, v2}, Lcom/xiaomi/camera/rcs/IRemoteControl;->unregisterRemoteController(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object v0, Lcom/xiaomi/camera/rcs/RemoteControl;->TAG:Ljava/lang/String;

    const-string v2, "failed to unregister client"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v1, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mServiceInterface:Lcom/xiaomi/camera/rcs/IRemoteControl;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mServiceConnection:Lcom/xiaomi/camera/rcs/RemoteControl$RemoteControlServiceConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mServiceConnection:Lcom/xiaomi/camera/rcs/RemoteControl$RemoteControlServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :try_start_4
    iput-object v1, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mServiceConnection:Lcom/xiaomi/camera/rcs/RemoteControl$RemoteControlServiceConnection;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mCallbackHandler:Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mCallbackHandler:Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

    iput-object v1, v0, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;->mListener:Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mCallbackHandler:Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

    iput-object v1, v0, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;->mStreamingListener:Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mCallbackHandler:Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

    iput-object v1, v0, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;->mCustomListener:Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;

    iput-object v1, p0, Lcom/xiaomi/camera/rcs/RemoteControl;->mCallbackHandler:Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

    :cond_2
    sget-object v0, Lcom/xiaomi/camera/rcs/RemoteControl;->TAG:Ljava/lang/String;

    const-string v1, "release: X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startStreaming(Landroid/os/Bundle;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/rcs/RemoteControl;->TAG:Ljava/lang/String;

    const-string v1, "startStreaming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/RemoteControl;->getServiceInterface()Lcom/xiaomi/camera/rcs/IRemoteControl;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/RemoteControl;->getCallbackHandler()Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/camera/rcs/IRemoteControl;->startStreaming(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    :try_start_2
    new-instance p1, Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException;

    invoke-direct {p1}, Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopStreaming()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/rcs/RemoteControl;->TAG:Ljava/lang/String;

    const-string v1, "stopStreaming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/RemoteControl;->getServiceInterface()Lcom/xiaomi/camera/rcs/IRemoteControl;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/RemoteControl;->getCallbackHandler()Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/camera/rcs/IRemoteControl;->stopStreaming(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    :try_start_2
    new-instance v0, Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException;

    invoke-direct {v0}, Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
