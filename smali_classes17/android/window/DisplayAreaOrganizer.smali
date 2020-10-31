.class public Landroid/window/DisplayAreaOrganizer;
.super Landroid/window/WindowOrganizer;
.source "DisplayAreaOrganizer.java"


# static fields
.field public static final FEATURE_DEFAULT_TASK_CONTAINER:I = 0x1

.field public static final FEATURE_ROOT:I = 0x0

.field public static final FEATURE_SYSTEM_FIRST:I = 0x0

.field public static final FEATURE_SYSTEM_LAST:I = 0x2710

.field public static final FEATURE_UNDEFINED:I = -0x1

.field public static final FEATURE_VENDOR_FIRST:I = 0x2711

.field public static final FEATURE_WINDOW_TOKENS:I = 0x2

.field private static final IDisplayAreaOrganizerControllerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/window/IDisplayAreaOrganizerController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mInterface:Landroid/window/IDisplayAreaOrganizer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/window/DisplayAreaOrganizer$2;

    invoke-direct {v0}, Landroid/window/DisplayAreaOrganizer$2;-><init>()V

    sput-object v0, Landroid/window/DisplayAreaOrganizer;->IDisplayAreaOrganizerControllerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/window/WindowOrganizer;-><init>()V

    new-instance v0, Landroid/window/DisplayAreaOrganizer$1;

    invoke-direct {v0, p0}, Landroid/window/DisplayAreaOrganizer$1;-><init>(Landroid/window/DisplayAreaOrganizer;)V

    iput-object v0, p0, Landroid/window/DisplayAreaOrganizer;->mInterface:Landroid/window/IDisplayAreaOrganizer;

    return-void
.end method

.method private static getController()Landroid/window/IDisplayAreaOrganizerController;
    .registers 1

    sget-object v0, Landroid/window/DisplayAreaOrganizer;->IDisplayAreaOrganizerControllerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/IDisplayAreaOrganizerController;

    return-object v0
.end method


# virtual methods
.method public onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    .registers 3

    return-void
.end method

.method public onDisplayAreaInfoChanged(Landroid/window/DisplayAreaInfo;)V
    .registers 2

    return-void
.end method

.method public onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V
    .registers 2

    return-void
.end method

.method public registerOrganizer(I)V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/window/DisplayAreaOrganizer;->getController()Landroid/window/IDisplayAreaOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/DisplayAreaOrganizer;->mInterface:Landroid/window/IDisplayAreaOrganizer;

    invoke-interface {v0, v1, p1}, Landroid/window/IDisplayAreaOrganizerController;->registerOrganizer(Landroid/window/IDisplayAreaOrganizer;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    nop

    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterOrganizer()V
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/window/DisplayAreaOrganizer;->getController()Landroid/window/IDisplayAreaOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/DisplayAreaOrganizer;->mInterface:Landroid/window/IDisplayAreaOrganizer;

    invoke-interface {v0, v1}, Landroid/window/IDisplayAreaOrganizerController;->unregisterOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    nop

    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
