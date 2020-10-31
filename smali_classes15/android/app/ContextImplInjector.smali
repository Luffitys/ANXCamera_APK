.class Landroid/app/ContextImplInjector;
.super Ljava/lang/Object;
.source "ContextImplInjector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static registerMiuiServices()V
    .registers 3

    const-class v0, Lmiui/security/SecurityManager;

    new-instance v1, Landroid/app/ContextImplInjector$1;

    invoke-direct {v1}, Landroid/app/ContextImplInjector$1;-><init>()V

    const-string/jumbo v2, "security"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/location/LocationPolicyManager;

    new-instance v1, Landroid/app/ContextImplInjector$2;

    invoke-direct {v1}, Landroid/app/ContextImplInjector$2;-><init>()V

    const-string v2, "locationpolicy"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/net/wifi/MiuiWifiManager;

    new-instance v1, Landroid/app/ContextImplInjector$3;

    invoke-direct {v1}, Landroid/app/ContextImplInjector$3;-><init>()V

    const-string v2, "MiuiWifiService"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/net/wifi/SlaveWifiManager;

    new-instance v1, Landroid/app/ContextImplInjector$4;

    invoke-direct {v1}, Landroid/app/ContextImplInjector$4;-><init>()V

    const-string v2, "SlaveWifiService"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    return-void
.end method
