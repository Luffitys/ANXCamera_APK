.class public abstract Landroid/bluetooth/BluetoothProfileConnector;
.super Ljava/lang/Object;
.source "BluetoothProfileConnector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mProfileId:I

.field private final mProfileName:Ljava/lang/String;

.field private final mProfileProxy:Landroid/bluetooth/BluetoothProfile;

.field private volatile mService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mServiceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/bluetooth/BluetoothProfileConnector$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothProfileConnector$1;-><init>(Landroid/bluetooth/BluetoothProfileConnector;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    new-instance v0, Landroid/bluetooth/BluetoothProfileConnector$2;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothProfileConnector$2;-><init>(Landroid/bluetooth/BluetoothProfileConnector;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    iput p2, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileId:I

    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileProxy:Landroid/bluetooth/BluetoothProfile;

    iput-object p3, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileName:Ljava/lang/String;

    iput-object p4, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothProfileConnector;)Z
    .registers 2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doBind()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothProfileConnector;)V
    .registers 1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doUnbind()V

    return-void
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothProfileConnector;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothProfileConnector;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Landroid/bluetooth/BluetoothProfileConnector;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothProfileConnector;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/bluetooth/BluetoothProfileConnector;)I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileId:I

    return v0
.end method

.method static synthetic access$600(Landroid/bluetooth/BluetoothProfileConnector;)Landroid/bluetooth/BluetoothProfile;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileProxy:Landroid/bluetooth/BluetoothProfile;

    return-object v0
.end method

.method private doBind()Z
    .registers 8

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    if-nez v1, :cond_5e

    const-string v1, "Binding service..."

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothProfileConnector;->logDebug(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_61

    const/4 v1, 0x0

    :try_start_d
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v3, :cond_31

    iget-object v4, p0, Landroid/bluetooth/BluetoothProfileConnector;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5, v1, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_30

    goto :goto_31

    :cond_30
    goto :goto_5e

    :cond_31
    :goto_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_45} :catch_47
    .catchall {:try_start_d .. :try_end_45} :catchall_61

    :try_start_45
    monitor-exit v0

    return v1

    :catch_47
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind service. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V

    monitor-exit v0

    return v1

    :cond_5e
    :goto_5e
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_45 .. :try_end_63} :catchall_61

    throw v1
.end method

.method private doUnbind()V
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    if-eqz v1, :cond_35

    const-string v1, "Unbinding service..."

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothProfileConnector;->logDebug(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_37

    const/4 v1, 0x0

    :try_start_d
    iget-object v2, p0, Landroid/bluetooth/BluetoothProfileConnector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_14} :catch_19
    .catchall {:try_start_d .. :try_end_14} :catchall_17

    :try_start_14
    iput-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_37

    :goto_16
    goto :goto_35

    :catchall_17
    move-exception v2

    goto :goto_31

    :catch_19
    move-exception v2

    :try_start_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to unbind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_17

    :try_start_2e
    iput-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    goto :goto_16

    :goto_31
    iput-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    nop

    throw v2

    :cond_35
    :goto_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_37

    throw v1
.end method

.method private logDebug(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logError(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 7

    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_29

    :try_start_e
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_29

    :catch_14
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register state change callback. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V

    :cond_29
    :goto_29
    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doBind()Z

    return-void
.end method

.method disconnect()V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_28

    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_28

    :catch_13
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister state change callback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V

    :cond_28
    :goto_28
    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doUnbind()V

    return-void
.end method

.method getService()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getServiceInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method
