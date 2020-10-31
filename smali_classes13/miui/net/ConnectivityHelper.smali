.class public Lmiui/net/ConnectivityHelper;
.super Ljava/lang/Object;
.source "ConnectivityHelper.java"


# static fields
.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lmiui/net/ConnectivityHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ConnectivityHelper"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mMacAddress:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/net/ConnectivityHelper$1;

    invoke-direct {v0}, Lmiui/net/ConnectivityHelper$1;-><init>()V

    sput-object v0, Lmiui/net/ConnectivityHelper;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lmiui/net/ConnectivityHelper;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lmiui/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/net/ConnectivityHelper$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/net/ConnectivityHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/net/ConnectivityHelper;
    .registers 1

    sget-object v0, Lmiui/net/ConnectivityHelper;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/net/ConnectivityHelper;

    return-object v0
.end method


# virtual methods
.method public getMacAddress()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->mMacAddress:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_15

    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lmiui/net/ConnectivityHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_15
    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/net/ConnectivityHelper;->mMacAddress:Ljava/lang/String;

    :cond_23
    iget-object v1, p0, Lmiui/net/ConnectivityHelper;->mMacAddress:Ljava/lang/String;

    return-object v1
.end method

.method public getManager()Landroid/net/ConnectivityManager;
    .registers 2

    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public isNetworkConnected()Z
    .registers 3

    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public isUnmeteredNetworkConnected()Z
    .registers 3

    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lmiui/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public isWifiConnected()Z
    .registers 4

    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public isWifiOnly()Z
    .registers 4

    invoke-static {}, Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class$Factory;->get()Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class;

    move-result-object v0

    iget-object v1, p0, Lmiui/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class;->isNetworkSupported(Landroid/net/ConnectivityManager;I)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    return v1
.end method
