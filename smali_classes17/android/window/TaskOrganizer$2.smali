.class Landroid/window/TaskOrganizer$2;
.super Landroid/util/Singleton;
.source "TaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/window/ITaskOrganizerController;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Landroid/window/ITaskOrganizerController;
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/window/WindowOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IWindowOrganizerController;->getTaskOrganizerController()Landroid/window/ITaskOrganizerController;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/window/TaskOrganizer$2;->create()Landroid/window/ITaskOrganizerController;

    move-result-object v0

    return-object v0
.end method
