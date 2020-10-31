.class public Lmiui/app/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApEnabler"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDisabledByAirplane:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mOpen:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusChanging:Z

.field private mToggleManager:Lmiui/app/ToggleManager;

.field private mWaitForWifiStateChange:Z

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/app/ToggleManager;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/app/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lmiui/app/WifiApEnabler$1;-><init>(Lmiui/app/WifiApEnabler;)V

    iput-object v0, p0, Lmiui/app/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lmiui/app/WifiApEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateAirplaneMode()V

    invoke-virtual {p0}, Lmiui/app/WifiApEnabler;->isWifiApOn()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    return-void
.end method

.method static synthetic access$000(Lmiui/app/WifiApEnabler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/app/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lmiui/app/WifiApEnabler;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateAirplaneMode()V

    return-void
.end method

.method static synthetic access$200(Lmiui/app/WifiApEnabler;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z

    return v0
.end method

.method static synthetic access$300(Lmiui/app/WifiApEnabler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/app/WifiApEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method private handleWifiApStateChanged(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_26

    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_22

    :pswitch_a
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_22

    :pswitch_f
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_22

    :pswitch_14
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z

    if-nez v0, :cond_22

    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_22

    :pswitch_1d
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    nop

    :cond_22
    :goto_22
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    return-void

    :pswitch_data_26
    .packed-switch 0xa
        :pswitch_1d
        :pswitch_14
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .registers 3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    goto :goto_10

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z

    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    nop

    :goto_10
    return-void
.end method

.method private initWifiTethering()V
    .registers 4

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2e

    const-string v1, "AndroidAP"

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "AndroidAP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    sget-boolean v2, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v2, :cond_1f

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_25

    :cond_1f
    iget-object v2, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_25
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lmiui/app/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    :cond_2e
    return-void
.end method

.method private setSoftapEnabledWithConnectivityManager(Z)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSoftapEnabledWithConnectivityManager() enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiApEnabler"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_22

    iget-object v4, p0, Lmiui/app/WifiApEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lmiui/app/ConnectivityManagerReflector;->startTethering(Landroid/net/ConnectivityManager;IZ)Z

    move-result v0

    goto :goto_28

    :cond_22
    iget-object v4, p0, Lmiui/app/WifiApEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v4, v3}, Lmiui/app/ConnectivityManagerReflector;->stopTethering(Landroid/net/ConnectivityManager;I)Z

    move-result v0

    :goto_28
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    if-nez v0, :cond_47

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";result="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-void
.end method

.method private setSoftapEnabledWithWifiManager(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1, p1}, Lmiui/app/CompatibilityP;->setWifiApEnabled(Landroid/net/wifi/WifiManager;Z)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    iput-boolean p1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    :cond_16
    return-void
.end method

.method private updateAirplaneMode()V
    .registers 4

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    iput-boolean v2, p0, Lmiui/app/WifiApEnabler;->mDisabledByAirplane:Z

    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    return-void
.end method

.method private updateToggle()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/app/WifiApEnabler;->updateWifiApToggle(Z)V

    return-void
.end method


# virtual methods
.method isWifiApDisabled()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mDisabledByAirplane:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method isWifiApOn()Z
    .registers 3

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method setSoftapEnabled(Z)V
    .registers 4

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->initWifiTethering()V

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_f

    invoke-direct {p0, p1}, Lmiui/app/WifiApEnabler;->setSoftapEnabledWithWifiManager(Z)V

    goto :goto_12

    :cond_f
    invoke-direct {p0, p1}, Lmiui/app/WifiApEnabler;->setSoftapEnabledWithConnectivityManager(Z)V

    :goto_12
    return-void
.end method

.method public toggleWifiAp()V
    .registers 2

    const/16 v0, 0x18

    invoke-static {v0}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_15

    :cond_11
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/app/WifiApEnabler;->setSoftapEnabled(Z)V

    :cond_15
    :goto_15
    return-void
.end method

.method public unregisterReceiver()V
    .registers 3

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method updateWifiApToggle(Z)V
    .registers 6

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    iget-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    iget-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    const/4 v3, 0x0

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lmiui/app/WifiApEnabler;->mDisabledByAirplane:Z

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    move v1, v3

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    :goto_18
    invoke-virtual {v0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    iget-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    if-eqz v1, :cond_25

    const v1, 0x110701c1

    goto :goto_28

    :cond_25
    const v1, 0x110701c0

    :goto_28
    invoke-virtual {v0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    if-eqz p1, :cond_3a

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, v3}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    :cond_3a
    return-void
.end method
