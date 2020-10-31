.class public Lmiui/securitycenter/utils/MiAssistantUtil;
.super Ljava/lang/Object;
.source "MiAssistantUtil.java"


# static fields
.field private static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field private static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkinfo"

.field private static final INTERFACE_USBNET0:Ljava/lang/String; = "usbnet0"

.field private static final TAG:Ljava/lang/String; = "MiAssistantManager"

.field private static final USB_SHARE_NET_STATE_CHANGE:Ljava/lang/String; = "miui.intent.action.USB_SHARE_NET_STATE_CHANGE"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveInterfaceName()Ljava/lang/String;
    .registers 4

    nop

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_c
    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_12

    move-object v1, v2

    goto :goto_16

    :catch_12
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_16
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1d
    const-string v2, "MiAssistantManager"

    const-string v3, "activeLink is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "null"

    return-object v2
.end method

.method public static usbnet0Down(Landroid/content/Context;)V
    .registers 9

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.USB_SHARE_NET_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/net/NetworkInfo;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const-string v4, "ETHERNET"

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "networkinfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    const-string v3, "linkProperties"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    :try_start_38
    const-string v5, "usbnet0"

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v5

    const-string v6, "MiAssistantManager"

    const-string v7, "disable usbnet0 error"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    return-void
.end method
