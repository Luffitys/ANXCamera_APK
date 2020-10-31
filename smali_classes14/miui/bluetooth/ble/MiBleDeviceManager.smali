.class public Lmiui/bluetooth/ble/MiBleDeviceManager;
.super Ljava/lang/Object;
.source "MiBleDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;
    }
.end annotation


# static fields
.field public static final ACTION_BLE_EVENT:Ljava/lang/String; = "miui.bluetooth.BLE_EVENT"

.field public static final BLE_EVENT_AWAKE:I = 0x5

.field public static final BLE_EVENT_CLICK:I = 0x1

.field public static final BLE_EVENT_CUSTOM:I = 0x100

.field public static final BLE_EVENT_DOUBLE_CLICK:I = 0x2

.field public static final BLE_EVENT_LINK_LOSS:I = 0x6

.field public static final BLE_EVENT_LONG_CLICK:I = 0x3

.field public static final BLE_EVENT_PHONE_HANGUP:I = 0x7

.field public static final BLE_EVENT_PHONE_IGNORE:I = 0x8

.field public static final BLE_EVENT_SLEEP:I = 0x4

.field public static final BLE_EVENT_UNKNOWN:I = 0x0

.field public static final BLE_IMMEDIATE_ALERT_PERMISSION:Ljava/lang/String; = "miui.permission.BLE_IMMEDIATE_ALERT"

.field private static final DBG:Z = true

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "miui.bluetooth.extras.DEVICE"

.field public static final EXTRA_EVENT:Ljava/lang/String; = "miui.bluetooth.extras.EVENT"

.field public static final EXTRA_EVENT_DATA:Ljava/lang/String; = "miui.bluetooth.extras.EVENT_DATA"

.field public static final SERVICE_VERSION_UNKNOWN:I = -0x1

.field public static final SETTING_BIND_DEVICE:Ljava/lang/String; = "device_type"

.field public static final SETTING_IMMEDIATE_ALERT_ALARM_ENABLED:Ljava/lang/String; = "alert_alarm_enabled"

.field public static final SETTING_IMMEDIATE_ALERT_INCALL_DELAYED:Ljava/lang/String; = "alert_incall_delayed"

.field public static final SETTING_IMMEDIATE_ALERT_INCALL_ENABLED:Ljava/lang/String; = "alert_incall_enabled"

.field public static final SETTING_IMMEDIATE_ALERT_INCALL_IN_CONTACTS_ENABLED:Ljava/lang/String; = "alert_incall_enabled_in_contacts"

.field public static final SETTING_IMMEDIATE_ALERT_INCALL_NO_CONTACTS_ENABLED:Ljava/lang/String; = "alert_incall_enabled_no_contacts"

.field public static final SETTING_IMMEDIATE_ALERT_SMS_ENABLED:Ljava/lang/String; = "alert_sms_enabled"

.field public static final SETTING_IMMEDIATE_ALERT_SMS_IN_CONTACTS_ENABLED:Ljava/lang/String; = "alert_sms_enabled_in_contacts"

.field public static final SETTING_IMMEDIATE_ALERT_SMS_NO_CONTACTS_ENABLED:Ljava/lang/String; = "alert_sms_enabled_no_contacts"

.field private static final TAG:Ljava/lang/String; = "MiBleDeviceManager"

.field public static final TYPE_MI_BAND:I = 0x1

.field public static final TYPE_MI_KEY:I = 0x45

.field public static final TYPE_MI_VR_CONTROLLER:I = 0x2

.field public static final TYPE_UNKNOWN:I


# instance fields
.field private mClientId:Landroid/os/ParcelUuid;

.field private mContext:Landroid/content/Context;

.field private mListener:Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

.field private mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/bluetooth/ble/MiBleDeviceManager$1;

    invoke-direct {v0, p0}, Lmiui/bluetooth/ble/MiBleDeviceManager$1;-><init>(Lmiui/bluetooth/ble/MiBleDeviceManager;)V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2d

    new-instance v0, Landroid/os/ParcelUuid;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mClientId:Landroid/os/ParcelUuid;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mListener:Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

    return-void

    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lmiui/bluetooth/ble/MiBleDeviceManager;Lmiui/bluetooth/ble/IMiBleDeviceManager;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->setServie(Lmiui/bluetooth/ble/IMiBleDeviceManager;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/bluetooth/ble/MiBleDeviceManager;)Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;
    .registers 2

    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mListener:Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

    return-object v0
.end method

.method private checkReady()Z
    .registers 3

    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    if-nez v0, :cond_d

    const-string v0, "MiBleDeviceManager"

    const-string v1, "Manager is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public static createManager(Landroid/content/Context;Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;)Lmiui/bluetooth/ble/MiBleDeviceManager;
    .registers 3

    new-instance v0, Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-direct {v0, p0, p1}, Lmiui/bluetooth/ble/MiBleDeviceManager;-><init>(Landroid/content/Context;Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;)V

    invoke-direct {v0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->init()V

    return-object v0
.end method

.method public static getSettingKeyForEvent(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "miui_ble_event_%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.bluetooth.mible.DeviceManagerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.bluetooth"

    const-string v3, "com.android.bluetooth.ble.app.MiBleDeviceManagerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_31

    new-instance v4, Landroid/content/ComponentName;

    const-string v6, "com.android.bluetooth"

    invoke-direct {v4, v6, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    :cond_31
    if-nez v2, :cond_5a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind manager service error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiBleDeviceManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mListener:Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;

    if-eqz v3, :cond_5a

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lmiui/bluetooth/ble/MiBleDeviceManager$2;

    invoke-direct {v4, p0}, Lmiui/bluetooth/ble/MiBleDeviceManager$2;-><init>(Lmiui/bluetooth/ble/MiBleDeviceManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5a
    return-void
.end method

.method private setServie(Lmiui/bluetooth/ble/IMiBleDeviceManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    return-void
.end method


# virtual methods
.method public bindDevice(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    :try_start_7
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    const-string v2, "device_type"

    invoke-interface {v0, p1, v2, v1}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setSettingInteger(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_14
    return v1
.end method

.method public bindDevice(Ljava/lang/String;[B)Z
    .registers 4

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1, p2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setToken(Ljava/lang/String;[B)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "MiBleDeviceManager"

    const-string v2, "Close manager service error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method public getBoundDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getBoundDevices()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceType(Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getRegisterAppForBleEvent(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1, p2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getRegisterAppForBleEvent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScanResult(Ljava/lang/String;)Lmiui/bluetooth/ble/ScanResult;
    .registers 3

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getScanResult(Ljava/lang/String;)Lmiui/bluetooth/ble/ScanResult;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceVersion()I
    .registers 2

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getServiceVersion()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public getSettingsBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    :try_start_7
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1, p2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getSettingInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_11

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_15
    return v1
.end method

.method public getSettingsInteger(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1, p2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getSettingInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getSettingsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1, p2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->getSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAppForBleEvent(Ljava/lang/String;I)Z
    .registers 6

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_1b

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-static {p2}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getSettingKeyForEvent(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public registerBleEventListener(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    :cond_4
    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v1

    if-eqz v1, :cond_15

    :try_start_a
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->registerBleEventListener(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_15
    return v0
.end method

.method public setSettings(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setSettingInteger(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public setSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public setSettings(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    :try_start_7
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    if-eqz p3, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    move v2, v1

    :goto_e
    invoke-interface {v0, p1, p2, v2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setSettingInteger(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_17
    return v1
.end method

.method public startScanDevice(ILandroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .registers 7

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_19

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mClientId:Landroid/os/ParcelUuid;

    new-instance v3, Lmiui/bluetooth/ble/MiBleDeviceManager$3;

    invoke-direct {v3, p0, p1, p2}, Lmiui/bluetooth/ble/MiBleDeviceManager$3;-><init>(Lmiui/bluetooth/ble/MiBleDeviceManager;ILandroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    invoke-interface {v0, v1, v2, p1, v3}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->startScanDevice(Landroid/os/IBinder;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IScanDeviceCallback;)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_19
    :goto_19
    const/4 v0, 0x0

    return v0
.end method

.method public stopScanDevice()V
    .registers 3

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_12

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->stopScanDevice(Landroid/os/ParcelUuid;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_12
    :goto_12
    return-void
.end method

.method public unbindDevice(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->deleteSettings(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterAppForBleEvent(Ljava/lang/String;I)Z
    .registers 6

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_16

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-static {p2}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getSettingKeyForEvent(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->setSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    return v0

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterBleEventListener(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .registers 5

    invoke-direct {p0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->checkReady()Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleDeviceManager;->mService:Lmiui/bluetooth/ble/IMiBleDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/bluetooth/ble/IMiBleDeviceManager;->unregisterBleEventListener(Ljava/lang/String;ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_11
    const/4 v0, 0x0

    return v0
.end method
