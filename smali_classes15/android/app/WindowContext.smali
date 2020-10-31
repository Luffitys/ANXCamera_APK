.class public Landroid/app/WindowContext;
.super Landroid/content/ContextWrapper;
.source "WindowContext.java"


# instance fields
.field private mOwnsToken:Z

.field private final mToken:Landroid/app/WindowTokenClient;

.field private final mWindowManager:Landroid/view/WindowManagerImpl;

.field private final mWms:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 12

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/WindowContext;->mWms:Landroid/view/IWindowManager;

    new-instance v0, Landroid/app/WindowTokenClient;

    invoke-direct {v0}, Landroid/app/WindowTokenClient;-><init>()V

    iput-object v0, p0, Landroid/app/WindowContext;->mToken:Landroid/app/WindowTokenClient;

    invoke-static {p1, v0}, Landroid/app/WindowContext;->createBaseWindowContext(Landroid/content/Context;Landroid/os/IBinder;)Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/WindowContext;->attachBaseContext(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    iget-object v1, p0, Landroid/app/WindowContext;->mToken:Landroid/app/WindowTokenClient;

    invoke-virtual {v1, p0}, Landroid/app/WindowTokenClient;->attachContext(Landroid/app/WindowContext;)V

    new-instance v1, Landroid/view/WindowManagerImpl;

    invoke-direct {v1, p0}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/app/WindowContext;->mWindowManager:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Landroid/app/WindowContext;->mToken:Landroid/app/WindowTokenClient;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerImpl;->setDefaultToken(Landroid/os/IBinder;)V

    const/4 v1, 0x0

    :try_start_2d
    iget-object v2, p0, Landroid/app/WindowContext;->mWms:Landroid/view/IWindowManager;

    iget-object v3, p0, Landroid/app/WindowContext;->mToken:Landroid/app/WindowTokenClient;

    invoke-virtual {p0}, Landroid/app/WindowContext;->getDisplayId()I

    move-result v5

    invoke-virtual {p0}, Landroid/app/WindowContext;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move v4, p2

    move-object v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/view/IWindowManager;->addWindowTokenWithOptions(Landroid/os/IBinder;IILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v2
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3f} :catch_55

    nop

    const/16 v3, -0xc

    if-eq v2, v3, :cond_4d

    if-nez v2, :cond_47

    const/4 v1, 0x1

    :cond_47
    iput-boolean v1, p0, Landroid/app/WindowContext;->mOwnsToken:Z

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-void

    :cond_4d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v3, "createWindowContext failed! Too many unused window contexts. Please see Context#createWindowContext documentation for detail."

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_55
    move-exception v2

    iput-boolean v1, p0, Landroid/app/WindowContext;->mOwnsToken:Z

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static createBaseWindowContext(Landroid/content/Context;Landroid/os/IBinder;)Landroid/app/ContextImpl;
    .registers 4

    invoke-static {p0}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ContextImpl;->createBaseWindowContext(Landroid/os/IBinder;)Landroid/app/ContextImpl;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method destroy()V
    .registers 4

    invoke-virtual {p0}, Landroid/app/WindowContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/ContextImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowContext"

    invoke-virtual {v0, v1, v2}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/WindowContext;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/app/WindowContext;->mWindowManager:Landroid/view/WindowManagerImpl;

    return-object v0

    :cond_c
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .registers 4

    iget-boolean v0, p0, Landroid/app/WindowContext;->mOwnsToken:Z

    if-eqz v0, :cond_19

    :try_start_4
    iget-object v0, p0, Landroid/app/WindowContext;->mWms:Landroid/view/IWindowManager;

    iget-object v1, p0, Landroid/app/WindowContext;->mToken:Landroid/app/WindowTokenClient;

    invoke-virtual {p0}, Landroid/app/WindowContext;->getDisplayId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WindowContext;->mOwnsToken:Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_19
    :goto_19
    invoke-virtual {p0}, Landroid/app/WindowContext;->destroy()V

    return-void
.end method
