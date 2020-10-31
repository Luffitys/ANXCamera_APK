.class public Lmiui/bluetooth/ble/MiBleProfile;
.super Ljava/lang/Object;
.source "MiBleProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;,
        Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;
    }
.end annotation


# static fields
.field public static final ACTION_MIBLE_SERVICE:Ljava/lang/String; = "miui.bluetooth.mible.Service"

.field public static final ACTION_SELECT_DEVICE:Ljava/lang/String; = "miui.bluetooth.action.PICK_DEVICE"

.field protected static final DBG:Z = true

.field public static final EXTRA_MIBLE_PROPERTY:Ljava/lang/String; = "miui.bluetooth.extra.MIBLE_PROPERTY"

.field private static final MSG_PROPERTY:I = 0x2

.field private static final MSG_STATUS:I = 0x1

.field public static final PROPERTY_ALARM_CLOCK:I = 0x6a

.field public static final PROPERTY_ALERT_NOTIFICATION:I = 0x8

.field public static final PROPERTY_BATTERY:I = 0x6

.field public static final PROPERTY_DEVICE_CONTROL:I = 0x2

.field public static final PROPERTY_DEVICE_INFO:I = 0x65

.field public static final PROPERTY_FIRMWARE:I = 0x3

.field public static final PROPERTY_IMMEDIATE_ALERT:I = 0x5

.field public static final PROPERTY_LINK_LOSS:I = 0x7

.field public static final PROPERTY_MI_BAND_EVENT:I = 0x6c

.field public static final PROPERTY_MI_KEY:I = 0x6b

.field public static final PROPERTY_PAY:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROPERTY_SPORT_ACTIVITIES:I = 0x68

.field public static final PROPERTY_SPORT_STEPS:I = 0x67

.field public static final PROPERTY_THEME_COLOR:I = 0x69

.field public static final PROPERTY_UNDEFINED:I = 0x0

.field public static final PROPERTY_UNLOCK:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROPERTY_USER_INFO:I = 0x66

.field public static final SERVICE_VERSION_UNKNOWN:I = -0x1

.field public static final STATUS_CONNECTED:I = 0x2

.field public static final STATUS_CONNECTING:I = 0x1

.field public static final STATUS_DISCONNECTED:I = 0x0

.field public static final STATUS_DISCONNECTING:I = 0x3

.field public static final STATUS_ERROR:I = -0x1

.field public static final STATUS_READY:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "MiBleProfile"


# instance fields
.field protected mCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

.field protected final mClientId:Landroid/os/ParcelUuid;

.field private mConnectWhenBind:Z

.field protected mContext:Landroid/content/Context;

.field protected mDevice:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mProfileState:I

.field private mPropertyCallback:Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

.field private mPropertyCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

.field private mServiceCallback:Lmiui/bluetooth/ble/IBluetoothMiBleCallback;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/bluetooth/ble/MiBleProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/ParcelUuid;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mConnectWhenBind:Z

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;

    iput v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mProfileState:I

    new-instance v0, Lmiui/bluetooth/ble/MiBleProfile$1;

    invoke-direct {v0, p0}, Lmiui/bluetooth/ble/MiBleProfile$1;-><init>(Lmiui/bluetooth/ble/MiBleProfile;)V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lmiui/bluetooth/ble/MiBleProfile$2;

    invoke-direct {v0, p0}, Lmiui/bluetooth/ble/MiBleProfile$2;-><init>(Lmiui/bluetooth/ble/MiBleProfile;)V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mServiceCallback:Lmiui/bluetooth/ble/IBluetoothMiBleCallback;

    new-instance v0, Lmiui/bluetooth/ble/MiBleProfile$3;

    invoke-direct {v0, p0}, Lmiui/bluetooth/ble/MiBleProfile$3;-><init>(Lmiui/bluetooth/ble/MiBleProfile;)V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallback:Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    iput-object p2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    :try_start_3c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_45

    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_45} :catch_46

    :cond_45
    goto :goto_4e

    :catch_46
    move-exception v0

    const-string v1, "MiBleProfile"

    const-string v2, "prepare looper failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4e
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lmiui/bluetooth/ble/MiBleProfile$4;

    invoke-direct {v1, p0}, Lmiui/bluetooth/ble/MiBleProfile$4;-><init>(Lmiui/bluetooth/ble/MiBleProfile;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lmiui/bluetooth/ble/MiBleProfile;I)I
    .registers 2

    iput p1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mProfileState:I

    return p1
.end method

.method static synthetic access$100(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/bluetooth/ble/MiBleProfile;)Lmiui/bluetooth/ble/IBluetoothMiBleCallback;
    .registers 2

    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mServiceCallback:Lmiui/bluetooth/ble/IBluetoothMiBleCallback;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/bluetooth/ble/MiBleProfile;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mConnectWhenBind:Z

    return v0
.end method

.method static synthetic access$402(Lmiui/bluetooth/ble/MiBleProfile;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mConnectWhenBind:Z

    return p1
.end method

.method static synthetic access$500(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public connect()V
    .registers 11

    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "MiBleProfile"

    const/4 v4, 0x1

    if-nez v0, :cond_60

    iput-boolean v4, p0, Lmiui/bluetooth/ble/MiBleProfile;->mConnectWhenBind:Z

    new-instance v0, Landroid/content/Intent;

    const-string v5, "miui.bluetooth.mible.Service"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.xiaomi.bluetooth"

    const-string v7, "com.android.bluetooth.ble.BluetoothMiBleService"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lmiui/bluetooth/ble/MiBleProfile;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lmiui/bluetooth/ble/MiBleProfile;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v8, v0, v9, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v8

    if-nez v8, :cond_3c

    const-string v6, "com.android.bluetooth"

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v9

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lmiui/bluetooth/ble/MiBleProfile;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lmiui/bluetooth/ble/MiBleProfile;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v0, v7, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v8

    :cond_3c
    if-nez v8, :cond_5f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connect: bind service error"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5f
    goto :goto_77

    :cond_60
    :try_start_60
    iget-object v5, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v6, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v0, v5, v6}, Lmiui/bluetooth/ble/IBluetoothMiBle;->connect(Ljava/lang/String;Landroid/os/ParcelUuid;)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_67} :catch_68

    goto :goto_77

    :catch_68
    move-exception v0

    const-string v5, "connect: "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_77
    return-void
.end method

.method public disconnect()V
    .registers 10

    const-string v0, "disconnect: "

    const-string v1, "MiBleProfile"

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-nez v2, :cond_9

    return-void

    :cond_9
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    :try_start_c
    iget-object v6, p0, Lmiui/bluetooth/ble/MiBleProfile;->mToken:Landroid/os/IBinder;

    iget-object v7, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v8, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v2, v6, v7, v8}, Lmiui/bluetooth/ble/IBluetoothMiBle;->unregisterClient(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/ParcelUuid;)V

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lmiui/bluetooth/ble/MiBleProfile;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1c} :catch_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_1c} :catch_1d

    goto :goto_38

    :catch_1d
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v4, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_39

    :catch_2b
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v4, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_38
    nop

    :goto_39
    return-void
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)[B
    .registers 5

    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v0, :cond_15

    :try_start_4
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1, v2, p1}, Lmiui/bluetooth/ble/IBluetoothMiBle;->getProperty(Ljava/lang/String;Landroid/os/ParcelUuid;I)[B

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-string v1, "MiBleProfile"

    const-string v2, "getProperty: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRssi()I
    .registers 4

    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiBleProfile;->isReady()Z

    move-result v0

    if-eqz v0, :cond_19

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1, v2}, Lmiui/bluetooth/ble/IBluetoothMiBle;->getRssi(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v0

    :catch_11
    move-exception v0

    const-string v1, "MiBleProfile"

    const-string v2, "getRssi: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    const/high16 v0, -0x80000000

    return v0
.end method

.method public getServiceVersion()I
    .registers 4

    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v0, :cond_11

    :try_start_4
    invoke-interface {v0}, Lmiui/bluetooth/ble/IBluetoothMiBle;->getServiceVersion()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const-string v1, "MiBleProfile"

    const-string v2, "getServiceVersion"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public isReady()Z
    .registers 3

    iget v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mProfileState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isSupportProperty(I)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lmiui/bluetooth/ble/IBluetoothMiBle;->supportProperty(Ljava/lang/String;I)Z

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    :catch_11
    move-exception v1

    const-string v2, "MiBleProfile"

    const-string v3, "isSupportProperty: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public registerPropertyNotifyCallback(ILmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;)Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v1, :cond_1e

    :try_start_a
    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallback:Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    invoke-interface {v1, v2, v3, p1, v4}, Lmiui/bluetooth/ble/IBluetoothMiBle;->registerPropertyCallback(Ljava/lang/String;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;)Z

    move-result v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    move v0, v1

    goto :goto_1e

    :catch_16
    move-exception v1

    const-string v2, "MiBleProfile"

    const-string v3, "registerPropertyNotifyCallback: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    :goto_1e
    if-nez v0, :cond_27

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 v1, 0x0

    return v1

    :cond_27
    const/4 v1, 0x1

    return v1
.end method

.method public setProfileStateChangeCallback(Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V
    .registers 2

    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    return-void
.end method

.method public setProperty(I[B)Z
    .registers 6

    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v0, :cond_15

    :try_start_4
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1, v2, p1, p2}, Lmiui/bluetooth/ble/IBluetoothMiBle;->setProperty(Ljava/lang/String;Landroid/os/ParcelUuid;I[B)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    const-string v1, "MiBleProfile"

    const-string v2, "setProperty: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterPropertyNotifyCallback(I)Z
    .registers 7

    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 v0, 0x1

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_29

    :try_start_e
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleProfile;->mDevice:Ljava/lang/String;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile;->mClientId:Landroid/os/ParcelUuid;

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallback:Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    invoke-interface {v1, v2, v3, p1, v4}, Lmiui/bluetooth/ble/IBluetoothMiBle;->unregisterPropertyCallback(Ljava/lang/String;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;)Z

    move-result v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1e} :catch_20

    move v0, v1

    :cond_1f
    goto :goto_29

    :catch_20
    move-exception v1

    const/4 v0, 0x0

    const-string v2, "MiBleProfile"

    const-string v3, "unregisterPropertyNotifyCallback: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_29
    :goto_29
    return v0
.end method
