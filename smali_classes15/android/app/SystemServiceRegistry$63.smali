.class Landroid/app/SystemServiceRegistry$63;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/gamepad/BsGamePadManager;",
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
.method public createService(Landroid/app/ContextImpl;)Landroid/gamepad/BsGamePadManager;
    .registers 5

    const-string v0, "bsgamepad"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/gamepad/IBsGamePadService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gamepad/IBsGamePadService;

    move-result-object v1

    new-instance v2, Landroid/gamepad/BsGamePadManager;

    invoke-direct {v2, p1, v1}, Landroid/gamepad/BsGamePadManager;-><init>(Landroid/content/Context;Landroid/gamepad/IBsGamePadService;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$63;->createService(Landroid/app/ContextImpl;)Landroid/gamepad/BsGamePadManager;

    move-result-object p1

    return-object p1
.end method
