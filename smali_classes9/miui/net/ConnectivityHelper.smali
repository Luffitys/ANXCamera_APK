.class public Lmiui/net/ConnectivityHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;

.field private static final TAG:Ljava/lang/String; = "ConnectivityHelper"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mMacAddress:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/net/ConnectivityHelper$1;

    invoke-direct {v0}, Lmiui/net/ConnectivityHelper$1;-><init>()V

    sput-object v0, Lmiui/net/ConnectivityHelper;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

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
    .locals 0

    invoke-direct {p0}, Lmiui/net/ConnectivityHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/net/ConnectivityHelper;
    .locals 1

    sget-object v0, Lmiui/net/ConnectivityHelper;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/net/ConnectivityHelper;

    return-object v0
.end method


# virtual methods
.method public getMacAddress()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->mMacAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lmiui/net/ConnectivityHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_1
    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/net/ConnectivityHelper;->mMacAddress:Ljava/lang/String;

    :cond_2
    iget-object p0, p0, Lmiui/net/ConnectivityHelper;->mMacAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getManager()Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lmiui/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public isNetworkConnected()Z
    .locals 0

    iget-object p0, p0, Lmiui/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnmeteredNetworkConnected()Z
    .locals 1

    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiui/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWifiConnected()Z
    .locals 2

    iget-object p0, p0, Lmiui/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWifiOnly()Z
    .locals 2

    invoke-static {}, Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class$Factory;->get()Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class;

    move-result-object v0

    iget-object p0, p0, Lmiui/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class;->isNetworkSupported(Landroid/net/ConnectivityManager;I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
