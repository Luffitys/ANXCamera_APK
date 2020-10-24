.class public Lcom/xiaomi/camera/rcs/service/RemoteControlService;
.super Landroid/app/Service;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final CAMERA_APP_PACKAGE_NAME:Ljava/lang/String; = "com.android.camera"

.field private static final MC_MI_APP_ID:I = 0x3ff8

.field private static final SERVICE_SIDE_NETWORK_CONNECTION_MANAGEMENT:Z = false

.field private static final SYSTEM_APP_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String;

.field private static final mCondVar:Ljava/lang/Object;


# instance fields
.field private final mClients:Ljava/util/HashMap;

.field private mEventInjector:Lcom/xiaomi/camera/rcs/input/EventInjector;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mInterface:Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;

.field private mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

.field private mStreamingServer:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

.field private mSystemSigningKeys:Ljava/util/Set;

.field private mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->createTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mCondVar:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;-><init>(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/service/RemoteControlService$1;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mInterface:Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mClients:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mClients:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->checkClient(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->cleanupClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mStreamingServer:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Landroid/hardware/input/InputManager;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mInputManager:Landroid/hardware/input/InputManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/input/EventInjector;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mEventInjector:Lcom/xiaomi/camera/rcs/input/EventInjector;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mCondVar:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mSystemSigningKeys:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$900(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->getSigningKeysForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private checkClient(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;
    .locals 3

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not registered"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private cleanupClient(Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->access$200(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;)V

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static getHexString([B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSigningKeysForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/16 v1, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " signing keys for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->getHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string p1, "Failed to find package for getting signing keys"

    goto :goto_1

    :catch_1
    sget-object p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string p1, "Failed to find algorithm for getting signing keys"

    :goto_1
    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    sget-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mCondVar:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v1, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binderDied: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->cleanupClient(Landroid/os/IBinder;)V

    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    sget-object p1, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string v0, "onBind: E "

    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string v0, "onBind: X "

    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mInterface:Lcom/xiaomi/camera/rcs/service/RemoteControlService$BinderInterface;

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    sget-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->getSigningKeysForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mSystemSigningKeys:Ljava/util/Set;

    const-string v0, "input"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mInputManager:Landroid/hardware/input/InputManager;

    new-instance v0, Lcom/xiaomi/camera/rcs/input/EventInjector;

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/rcs/input/EventInjector;-><init>(Landroid/hardware/input/InputManager;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mEventInjector:Lcom/xiaomi/camera/rcs/input/EventInjector;

    new-instance v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mStreamingServer:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    new-instance v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$1;-><init>(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string v2, "++ mWifiStateReceiver"

    invoke-static {v1, v2}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string v0, "onCreate: X"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string v1, "-- mWifiStateReceiver"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mStreamingServer:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->mStreamingServer:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->stop()V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string v0, "onDestroy: X"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    sget-object p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string p1, "onRebind: E "

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string p1, "onRebind: X "

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    sget-object p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string p1, "onUnbind: E "

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->TAG:Ljava/lang/String;

    const-string p1, "onUnbind: X "

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
