.class public abstract Landroid/app/role/RoleControllerService;
.super Landroid/app/Service;
.source "RoleControllerService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.app.role.RoleControllerService"


# instance fields
.field private mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/role/RoleControllerService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/app/role/RoleControllerService;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/role/RoleControllerService;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/role/RoleControllerService;->onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/role/RoleControllerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/role/RoleControllerService;->onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/role/RoleControllerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/role/RoleControllerService;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/role/RoleControllerService;Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/role/RoleControllerService;->grantDefaultRoles(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private grantDefaultRoles(Landroid/os/RemoteCallback;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/role/RoleControllerService;->onGrantDefaultRoles()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method private onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 7

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/role/RoleControllerService;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p4, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method private onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 6

    invoke-virtual {p0, p1, p2}, Landroid/app/role/RoleControllerService;->onClearRoleHolders(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p3, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method private onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .registers 7

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/role/RoleControllerService;->onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p4, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public abstract onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    new-instance v0, Landroid/app/role/RoleControllerService$1;

    invoke-direct {v0, p0}, Landroid/app/role/RoleControllerService$1;-><init>(Landroid/app/role/RoleControllerService;)V

    return-object v0
.end method

.method public abstract onClearRoleHolders(Ljava/lang/String;I)Z
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Landroid/app/role/RoleControllerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/role/RoleControllerService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/role/RoleControllerService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/role/RoleControllerService;->mWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Landroid/app/role/RoleControllerService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public abstract onGrantDefaultRoles()Z
.end method

.method public abstract onIsApplicationQualifiedForRole(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public onIsApplicationVisibleForRole(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/app/role/RoleControllerService;->onIsApplicationQualifiedForRole(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract onIsRoleVisible(Ljava/lang/String;)Z
.end method

.method public abstract onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;I)Z
.end method
