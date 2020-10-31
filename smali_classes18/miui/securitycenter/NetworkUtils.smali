.class public Lmiui/securitycenter/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OverLayUtil"

.field private static mNMService:Landroid/os/INetworkManagementService;

.field private static mSystemServiceClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdjustedNetworkStatsTethering()Landroid/net/NetworkStats;
    .registers 11

    const-string v0, "an exception occurred!!"

    const-string v1, "OverLayUtil"

    const/4 v2, 0x0

    :try_start_5
    sget-object v3, Lmiui/securitycenter/NetworkUtils;->mNMService:Landroid/os/INetworkManagementService;

    if-nez v3, :cond_15

    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    sput-object v3, Lmiui/securitycenter/NetworkUtils;->mNMService:Landroid/os/INetworkManagementService;

    :cond_15
    sget-object v3, Lmiui/securitycenter/NetworkUtils;->mNMService:Landroid/os/INetworkManagementService;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_79

    invoke-virtual {v2}, Landroid/net/NetworkStats;->size()I

    move-result v3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_7a

    if-lez v3, :cond_79

    :try_start_25
    sget-object v3, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    if-nez v3, :cond_47

    const-string v3, "SYSTEMSERVERCLASSPATH"

    invoke-static {v3}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    new-instance v5, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v5, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    goto :goto_47

    :cond_3d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    sput-object v5, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    :cond_47
    :goto_47
    const-string v3, "com.android.server.NetPluginDelegate"

    sget-object v5, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v6, 0x0

    invoke-static {v3, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getTetherStats"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/net/NetworkStats;

    aput-object v9, v8, v6

    const-class v9, Landroid/net/NetworkStats;

    aput-object v9, v8, v4

    const-class v9, Landroid/net/NetworkStats;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v6

    const/4 v6, 0x0

    aput-object v6, v7, v4

    aput-object v6, v7, v10

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_72} :catch_78
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_72} :catch_73

    goto :goto_79

    :catch_73
    move-exception v3

    :try_start_74
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_7a

    goto :goto_79

    :catch_78
    move-exception v0

    :cond_79
    :goto_79
    goto :goto_7e

    :catch_7a
    move-exception v3

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7e
    return-object v2
.end method

.method public static getMobileIface(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    nop

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_d
    invoke-interface {v0, v2}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_13

    move-object v1, v2

    goto :goto_17

    :catch_13
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_17
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1e
    const-string v2, ""

    return-object v2
.end method

.method public static getNetworkStatsTethering()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lmiui/securitycenter/NetworkUtils;->getAdjustedNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_57

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    const/4 v3, 0x0

    :goto_f
    invoke-virtual {v1}, Landroid/net/NetworkStats;->size()I

    move-result v4

    if-ge v3, v4, :cond_57

    invoke-virtual {v1, v3, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget v5, v2, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "uid"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const-string v6, "iface"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "rxBytes"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "txBytes"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, v2, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tag"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_57
    return-object v0
.end method

.method public static isVpnConnected()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_17

    if-eqz v3, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0

    :catch_17
    move-exception v1

    const-string v2, "OverLayUtil"

    const-string v3, "isVpnConnected"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static saveWifiConfiguration(Landroid/content/Context;Ljava/net/InetAddress;Landroid/net/wifi/WifiConfiguration;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    if-eqz p0, :cond_b8

    if-eqz p1, :cond_b8

    if-nez p2, :cond_8

    goto/16 :goto_b8

    :cond_8
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_13

    return-void

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v2

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v2, v3, :cond_4e

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3b

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/net/InetAddress;

    :cond_3b
    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_4c

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    const/4 v1, 0x1

    goto :goto_ac

    :cond_4e
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v2

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v2, v3, :cond_ac

    new-instance v2, Landroid/net/StaticIpConfiguration;

    invoke-direct {v2}, Landroid/net/StaticIpConfiguration;-><init>()V

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v3

    if-eqz v3, :cond_aa

    iget v4, v3, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v4}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v4

    new-instance v5, Landroid/net/LinkAddress;

    iget v6, v3, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v6}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    move-result v6

    invoke-direct {v5, v4, v6}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v5, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    iget v5, v3, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v5}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v5

    iput-object v5, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    iget-object v5, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_85
    iget-object v5, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    iget v6, v3, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v6}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_90} :catch_91

    goto :goto_9d

    :catch_91
    move-exception v5

    iget-object v6, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    const-string v7, "8.8.8.8"

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9d
    new-instance v5, Landroid/net/IpConfiguration;

    sget-object v6, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v2, v8}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {p2, v5}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    :cond_aa
    const/4 v1, 0x1

    goto :goto_ad

    :cond_ac
    :goto_ac
    nop

    :goto_ad
    if-eqz v1, :cond_b7

    new-instance v2, Lmiui/securitycenter/NetworkUtils$1;

    invoke-direct {v2}, Lmiui/securitycenter/NetworkUtils$1;-><init>()V

    invoke-virtual {v0, p2, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_b7
    return-void

    :cond_b8
    :goto_b8
    const-string v0, "OverLayUtil"

    const-string v1, "saveWifiConfiguration:  invalidate parameter!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setMobileDataState(Landroid/content/Context;Z)V
    .registers 3

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    return-void
.end method

.method public static vpnPrepareAndAuthorize(Ljava/lang/String;)V
    .registers 5

    nop

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    :try_start_b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, p0, v1}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Landroid/net/IConnectivityManager;->setVpnPackageAuthorization(Ljava/lang/String;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_1b

    :cond_1a
    goto :goto_23

    :catch_1b
    move-exception v1

    const-string v2, "OverLayUtil"

    const-string v3, "prepareAndAuthorize"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    return-void
.end method
