.class public Landroid/window/WindowOrganizer;
.super Ljava/lang/Object;
.source "WindowOrganizer.java"


# static fields
.field private static final IWindowOrganizerControllerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/window/IWindowOrganizerController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/window/WindowOrganizer$1;

    invoke-direct {v0}, Landroid/window/WindowOrganizer$1;-><init>()V

    sput-object v0, Landroid/window/WindowOrganizer;->IWindowOrganizerControllerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/window/WindowOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/window/IWindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static getWindowOrganizerController()Landroid/window/IWindowOrganizerController;
    .registers 1

    sget-object v0, Landroid/window/WindowOrganizer;->IWindowOrganizerControllerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/IWindowOrganizerController;

    return-object v0
.end method

.method public static takeScreenshot(Landroid/window/WindowContainerToken;)Landroid/view/SurfaceControl;
    .registers 3

    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    invoke-static {}, Landroid/window/WindowOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/window/IWindowOrganizerController;->takeScreenshot(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)Z

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_12

    if-eqz v1, :cond_10

    return-object v0

    :cond_10
    const/4 v1, 0x0

    return-object v1

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/window/WindowOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    iget-object v1, p2, Landroid/window/WindowContainerTransactionCallback;->mInterface:Landroid/window/IWindowContainerTransactionCallback;

    invoke-interface {v0, p1, v1}, Landroid/window/IWindowOrganizerController;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
