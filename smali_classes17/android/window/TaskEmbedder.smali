.class public abstract Landroid/window/TaskEmbedder;
.super Ljava/lang/Object;
.source "TaskEmbedder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskEmbedder$Listener;,
        Landroid/window/TaskEmbedder$Host;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskEmbedder"


# instance fields
.field protected mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field protected final mContext:Landroid/content/Context;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field protected mHost:Landroid/window/TaskEmbedder$Host;

.field protected mListener:Landroid/window/TaskEmbedder$Listener;

.field protected mOpened:Z

.field protected mSurfaceControl:Landroid/view/SurfaceControl;

.field protected mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/window/TaskEmbedder$Host;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskEmbedder;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskEmbedder;->mGuard:Ldalvik/system/CloseGuard;

    iput-object p1, p0, Landroid/window/TaskEmbedder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/window/TaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    return-void
.end method

.method private applyTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowSession;->updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_c
    return-void
.end method

.method private clearTapExcludeRegion()V
    .registers 3

    invoke-virtual {p0}, Landroid/window/TaskEmbedder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/window/TaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    invoke-interface {v0}, Landroid/window/TaskEmbedder$Host;->getWindow()Landroid/view/IWindow;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_1a

    :cond_f
    iget-object v0, p0, Landroid/window/TaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    invoke-interface {v0}, Landroid/window/TaskEmbedder$Host;->getWindow()Landroid/view/IWindow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/window/TaskEmbedder;->applyTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    return-void

    :cond_1a
    :goto_1a
    return-void
.end method

.method private performRelease()Z
    .registers 5

    iget-boolean v0, p0, Landroid/window/TaskEmbedder;->mOpened:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Landroid/window/TaskEmbedder;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Landroid/window/TaskEmbedder;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Landroid/window/TaskEmbedder;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    invoke-virtual {p0}, Landroid/window/TaskEmbedder;->onRelease()Z

    move-result v0

    iget-object v2, p0, Landroid/window/TaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    if-eqz v2, :cond_24

    if-eqz v0, :cond_24

    invoke-interface {v2}, Landroid/window/TaskEmbedder$Listener;->onReleased()V

    :cond_24
    iput-boolean v1, p0, Landroid/window/TaskEmbedder;->mOpened:Z

    iget-object v1, p0, Landroid/window/TaskEmbedder;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/window/TaskEmbedder;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/window/TaskEmbedder;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    invoke-direct {p0}, Landroid/window/TaskEmbedder;->performRelease()Z
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    :cond_c
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayId()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public abstract getId()I
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskEmbedder;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Landroid/view/SurfaceControl;)Z
    .registers 6

    invoke-virtual {p0}, Landroid/window/TaskEmbedder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_73

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Landroid/window/TaskEmbedder;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskEmbedder - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "TaskEmbedder.initialize"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Landroid/window/TaskEmbedder;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/window/TaskEmbedder;->onInitialize()Z

    move-result v1

    if-nez v1, :cond_4b

    const/4 v1, 0x0

    return v1

    :cond_4b
    iget-object v1, p0, Landroid/window/TaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    if-eqz v1, :cond_5a

    invoke-virtual {p0}, Landroid/window/TaskEmbedder;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Landroid/window/TaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    invoke-interface {v1}, Landroid/window/TaskEmbedder$Listener;->onInitialized()V

    :cond_5a
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/window/TaskEmbedder;->mOpened:Z

    iget-object v2, p0, Landroid/window/TaskEmbedder;->mGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v3, "release"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/window/TaskEmbedder;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/window/TaskEmbedder;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return v1

    :cond_73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to initialize for the second time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract isInitialized()Z
.end method

.method public notifyBoundsChanged()V
    .registers 1

    invoke-virtual {p0}, Landroid/window/TaskEmbedder;->updateLocationAndTapExcludeRegion()V

    return-void
.end method

.method public onInitialize()Z
    .registers 2

    invoke-virtual {p0}, Landroid/window/TaskEmbedder;->updateLocationAndTapExcludeRegion()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onRelease()Z
    .registers 2

    invoke-direct {p0}, Landroid/window/TaskEmbedder;->clearTapExcludeRegion()V

    const/4 v0, 0x1

    return v0
.end method

.method public abstract performBackPress()V
.end method

.method protected prepareActivityOptions(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .registers 4

    invoke-virtual {p0}, Landroid/window/TaskEmbedder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p1, :cond_c

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    :cond_c
    return-object p1

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to start activity before ActivityView is ready."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .registers 3

    invoke-virtual {p0}, Landroid/window/TaskEmbedder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Landroid/window/TaskEmbedder;->performRelease()Z

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to release container that is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resizeTask(II)V
    .registers 3

    return-void
.end method

.method public setForwardedInsets(Landroid/graphics/Insets;)V
    .registers 2

    return-void
.end method

.method public setListener(Landroid/window/TaskEmbedder$Listener;)V
    .registers 3

    iput-object p1, p0, Landroid/window/TaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroid/window/TaskEmbedder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/window/TaskEmbedder;->mListener:Landroid/window/TaskEmbedder$Listener;

    invoke-interface {v0}, Landroid/window/TaskEmbedder$Listener;->onInitialized()V

    :cond_f
    return-void
.end method

.method public start()V
    .registers 1

    invoke-virtual {p0}, Landroid/window/TaskEmbedder;->updateLocationAndTapExcludeRegion()V

    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;)V
    .registers 11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/window/TaskEmbedder;->prepareActivityOptions(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_b
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_b .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .registers 12

    invoke-virtual {p0, p3}, Landroid/window/TaskEmbedder;->prepareActivityOptions(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    :try_start_3
    iget-object v1, p0, Landroid/window/TaskEmbedder;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/window/TaskEmbedder;->prepareActivityOptions(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskEmbedder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/window/TaskEmbedder;->prepareActivityOptions(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskEmbedder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startShortcutActivity(Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Landroid/window/TaskEmbedder;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, p2}, Landroid/window/TaskEmbedder;->prepareActivityOptions(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Landroid/content/pm/LauncherApps;->startShortcut(Landroid/content/pm/ShortcutInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    return-void
.end method

.method public stop()V
    .registers 1

    invoke-direct {p0}, Landroid/window/TaskEmbedder;->clearTapExcludeRegion()V

    return-void
.end method

.method protected updateLocationAndTapExcludeRegion()V
    .registers 3

    invoke-virtual {p0}, Landroid/window/TaskEmbedder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/window/TaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    invoke-interface {v0}, Landroid/window/TaskEmbedder$Host;->getWindow()Landroid/view/IWindow;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_1f

    :cond_f
    iget-object v0, p0, Landroid/window/TaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    invoke-interface {v0}, Landroid/window/TaskEmbedder$Host;->getWindow()Landroid/view/IWindow;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    invoke-interface {v1}, Landroid/window/TaskEmbedder$Host;->getTapExcludeRegion()Landroid/graphics/Region;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/window/TaskEmbedder;->applyTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    return-void

    :cond_1f
    :goto_1f
    return-void
.end method
