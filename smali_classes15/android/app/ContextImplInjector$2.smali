.class Landroid/app/ContextImplInjector$2;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "ContextImplInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ContextImplInjector;->registerMiuiServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/location/LocationPolicyManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/location/LocationPolicyManager;
    .registers 4

    new-instance v0, Landroid/location/LocationPolicyManager;

    const-string v1, "locationpolicy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/ILocationPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationPolicyManager;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/LocationPolicyManager;-><init>(Landroid/location/ILocationPolicyManager;)V

    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/ContextImplInjector$2;->createService(Landroid/app/ContextImpl;)Landroid/location/LocationPolicyManager;

    move-result-object p1

    return-object p1
.end method
