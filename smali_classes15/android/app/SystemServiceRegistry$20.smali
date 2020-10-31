.class Landroid/app/SystemServiceRegistry$20;
.super Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher<",
        "Landroid/net/TestNetworkManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/content/Context;)Landroid/net/TestNetworkManager;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    nop

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    nop

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    :try_start_c
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->startOrGetTestNetworkService()Landroid/os/IBinder;

    move-result-object v2
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_1b

    nop

    invoke-static {v2}, Landroid/net/ITestNetworkManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITestNetworkManager;

    move-result-object v3

    new-instance v4, Landroid/net/TestNetworkManager;

    invoke-direct {v4, v3}, Landroid/net/TestNetworkManager;-><init>(Landroid/net/ITestNetworkManager;)V

    return-object v4

    :catch_1b
    move-exception v2

    new-instance v3, Landroid/os/ServiceManager$ServiceNotFoundException;

    const-string/jumbo v4, "test_network"

    invoke-direct {v3, v4}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic createService(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$20;->createService(Landroid/content/Context;)Landroid/net/TestNetworkManager;

    move-result-object p1

    return-object p1
.end method
