.class public Lcom/miui/enterprise/sdk/RestrictionsManager;
.super Ljava/lang/Object;
.source "RestrictionsManager.java"


# static fields
.field public static final AIRPLANE_STATE:Ljava/lang/String; = "airplane_state"

.field public static final BLUETOOTH_STATE:Ljava/lang/String; = "bluetooth_state"

.field public static final CLOSE:I = 0x3

.field public static final DISABLE:I = 0x0

.field public static final DISABLE_ACCELEROMETER:Ljava/lang/String; = "disable_accelerometer"

.field public static final DISALLOW_AUTO_SYNC:Ljava/lang/String; = "disallow_auto_sync"

.field public static final DISALLOW_BACKUP:Ljava/lang/String; = "disallow_backup"

.field public static final DISALLOW_CAMERA:Ljava/lang/String; = "disallow_camera"

.field public static final DISALLOW_CHANGE_LANGUAGE:Ljava/lang/String; = "disallow_change_language"

.field public static final DISALLOW_FACTORYRESET:Ljava/lang/String; = "disallow_factoryreset"

.field public static final DISALLOW_FINGERPRINT:Ljava/lang/String; = "disallow_fingerprint"

.field public static final DISALLOW_IMEIREAD:Ljava/lang/String; = "disallow_imeiread"

.field public static final DISALLOW_KEY_BACK:Ljava/lang/String; = "disallow_key_back"

.field public static final DISALLOW_KEY_HOME:Ljava/lang/String; = "disallow_key_home"

.field public static final DISALLOW_KEY_MENU:Ljava/lang/String; = "disallow_key_menu"

.field public static final DISALLOW_LANDSCAPE_STATUSBAR:Ljava/lang/String; = "disallow_landscape_statusbar"

.field public static final DISALLOW_MICROPHONE:Ljava/lang/String; = "disallow_microphone"

.field public static final DISALLOW_MI_ACCOUNT:Ljava/lang/String; = "disallow_mi_account"

.field public static final DISALLOW_MTP:Ljava/lang/String; = "disallow_mtp"

.field public static final DISALLOW_OTG:Ljava/lang/String; = "disallow_otg"

.field public static final DISALLOW_SAFE_MODE:Ljava/lang/String; = "disallow_safe_mode"

.field public static final DISALLOW_SCREENCAPTURE:Ljava/lang/String; = "disallow_screencapture"

.field public static final DISALLOW_SDCARD:Ljava/lang/String; = "disallow_sdcard"

.field public static final DISALLOW_STATUS_BAR:Ljava/lang/String; = "disallow_status_bar"

.field public static final DISALLOW_SYSTEM_UPDATE:Ljava/lang/String; = "disallow_system_update"

.field public static final DISALLOW_TETHER:Ljava/lang/String; = "disallow_tether"

.field public static final DISALLOW_TIMESET:Ljava/lang/String; = "disallow_timeset"

.field public static final DISALLOW_USBDEBUG:Ljava/lang/String; = "disallow_usbdebug"

.field public static final DISALLOW_USB_DEVICE:Ljava/lang/String; = "disable_usb_device"

.field public static final DISALLOW_VPN:Ljava/lang/String; = "disallow_vpn"

.field public static final ENABLE:I = 0x1

.field public static final FORCE_OPEN:I = 0x4

.field public static final GPS_STATE:Ljava/lang/String; = "gps_state"

.field public static final NFC_STATE:Ljava/lang/String; = "nfc_state"

.field public static final OPEN:I = 0x2

.field public static final WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field private static volatile sInstance:Lcom/miui/enterprise/sdk/RestrictionsManager;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mService:Lcom/miui/enterprise/IRestrictionsManager;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RestrictionsManager"

    iput-object v0, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->TAG:Ljava/lang/String;

    const-string v0, "restrictions_manager"

    invoke-static {v0}, Lcom/miui/enterprise/EnterpriseManager;->getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/IRestrictionsManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IRestrictionsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->mService:Lcom/miui/enterprise/IRestrictionsManager;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/enterprise/sdk/RestrictionsManager;
    .registers 2

    const-class v0, Lcom/miui/enterprise/sdk/RestrictionsManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/miui/enterprise/sdk/RestrictionsManager;->sInstance:Lcom/miui/enterprise/sdk/RestrictionsManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/miui/enterprise/sdk/RestrictionsManager;

    invoke-direct {v1}, Lcom/miui/enterprise/sdk/RestrictionsManager;-><init>()V

    sput-object v1, Lcom/miui/enterprise/sdk/RestrictionsManager;->sInstance:Lcom/miui/enterprise/sdk/RestrictionsManager;

    :cond_e
    sget-object v1, Lcom/miui/enterprise/sdk/RestrictionsManager;->sInstance:Lcom/miui/enterprise/sdk/RestrictionsManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getControlStatus(Ljava/lang/String;)I
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/RestrictionsManager;->getControlStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getControlStatus(Ljava/lang/String;I)I
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->mService:Lcom/miui/enterprise/IRestrictionsManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IRestrictionsManager;->getControlStatus(Ljava/lang/String;I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    iget-object v1, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->TAG:Ljava/lang/String;

    const-string v2, "Remote service dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method public hasRestriction(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/RestrictionsManager;->hasRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasRestriction(Ljava/lang/String;I)Z
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->mService:Lcom/miui/enterprise/IRestrictionsManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IRestrictionsManager;->hasRestriction(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    iget-object v1, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->TAG:Ljava/lang/String;

    const-string v2, "Remote service dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public setControlStatus(Ljava/lang/String;I)V
    .registers 4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/enterprise/sdk/RestrictionsManager;->setControlStatus(Ljava/lang/String;II)V

    return-void
.end method

.method public setControlStatus(Ljava/lang/String;II)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->mService:Lcom/miui/enterprise/IRestrictionsManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/enterprise/IRestrictionsManager;->setControlStatus(Ljava/lang/String;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    iget-object v1, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->TAG:Ljava/lang/String;

    const-string v2, "Remote service dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void
.end method

.method public setRestriction(Ljava/lang/String;Z)V
    .registers 4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/enterprise/sdk/RestrictionsManager;->setRestriction(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setRestriction(Ljava/lang/String;ZI)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->mService:Lcom/miui/enterprise/IRestrictionsManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/enterprise/IRestrictionsManager;->setRestriction(Ljava/lang/String;ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    iget-object v1, p0, Lcom/miui/enterprise/sdk/RestrictionsManager;->TAG:Ljava/lang/String;

    const-string v2, "Remote service dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void
.end method
