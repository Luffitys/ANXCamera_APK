.class public Lcom/android/server/net/BaseNetworkObserver;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "BaseNetworkObserver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3

    return-void
.end method

.method public addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3

    return-void
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V
    .registers 5

    return-void
.end method

.method public interfaceConfigurationLost()V
    .registers 1

    return-void
.end method

.method public interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public routeRemoved(Landroid/net/RouteInfo;)V
    .registers 2

    return-void
.end method

.method public routeUpdated(Landroid/net/RouteInfo;)V
    .registers 2

    return-void
.end method
