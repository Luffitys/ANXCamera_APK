.class Landroid/app/SystemServiceRegistry$82;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "Landroid/service/oemlock/OemLockManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService()Landroid/service/oemlock/OemLockManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    const-string v0, "oem_lock"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/oemlock/IOemLockService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/oemlock/IOemLockService;

    move-result-object v1

    if-eqz v1, :cond_12

    new-instance v2, Landroid/service/oemlock/OemLockManager;

    invoke-direct {v2, v1}, Landroid/service/oemlock/OemLockManager;-><init>(Landroid/service/oemlock/IOemLockService;)V

    return-object v2

    :cond_12
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$82;->createService()Landroid/service/oemlock/OemLockManager;

    move-result-object v0

    return-object v0
.end method
