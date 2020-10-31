.class final Lmiui/maml/ActionCommand$WifiStateTracker;
.super Lmiui/maml/ActionCommand$StateTracker;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# static fields
.field private static final MAX_SCAN_ATTEMPT:I = 0x3


# instance fields
.field public zConnected:Z

.field private zScanAttempt:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiui/maml/ActionCommand$StateTracker;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    iput v0, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/ActionCommand$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/maml/ActionCommand$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .registers 4

    const/4 v0, 0x3

    if-eqz p0, :cond_11

    const/4 v1, 0x1

    if-eq p0, v1, :cond_f

    const/4 v2, 0x2

    if-eq p0, v2, :cond_e

    if-eq p0, v0, :cond_d

    const/4 v0, 0x4

    return v0

    :cond_d
    return v1

    :cond_e
    return v2

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    return v0
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .registers 4

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v1}, Lmiui/maml/ActionCommand$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    return v1

    :cond_13
    const/4 v1, 0x4

    return v1
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v0, :cond_24

    const/4 v0, -0x1

    const-string v4, "wifi_state"

    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lmiui/maml/ActionCommand$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lmiui/maml/ActionCommand$WifiStateTracker;->setCurrentState(Landroid/content/Context;I)V

    if-ne v3, v0, :cond_23

    iput-boolean v2, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    iput v1, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    :cond_23
    goto :goto_6d

    :cond_24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget v0, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    if-ge v0, v3, :cond_6d

    add-int/2addr v0, v2

    iput v0, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    if-ne v0, v3, :cond_6d

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    goto :goto_6d

    :cond_3c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iput v3, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v3, :cond_6a

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v3, :cond_6a

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v3, :cond_6a

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v3, :cond_6a

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v3, :cond_6b

    :cond_6a
    move v1, v2

    :cond_6b
    iput-boolean v1, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    :cond_6d
    :goto_6d
    return-void
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .registers 5

    new-instance v0, Lmiui/maml/ActionCommand$WifiEnableAsyncTask;

    invoke-direct {v0, p1, p2}, Lmiui/maml/ActionCommand$WifiEnableAsyncTask;-><init>(Landroid/content/Context;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/maml/ActionCommand$WifiEnableAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
