.class public Landroid/window/VirtualDisplayTaskEmbedder;
.super Landroid/window/TaskEmbedder;
.source "VirtualDisplayTaskEmbedder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;
    }
.end annotation


# static fields
.field private static final DISPLAY_NAME:Ljava/lang/String; = "TaskVirtualDisplay"

.field private static final TAG:Ljava/lang/String; = "VirDispTaskEmbedder"


# instance fields
.field private mDisplayDensityDpi:I

.field private mForwardedInsets:Landroid/graphics/Insets;

.field private final mSingleTaskInstance:Z

.field private mTaskStackListener:Landroid/app/TaskStackListener;

.field private mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mUsePublicVirtualDisplay:Z

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/window/TaskEmbedder$Host;ZZ)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/window/TaskEmbedder;-><init>(Landroid/content/Context;Landroid/window/TaskEmbedder$Host;)V

    iput-boolean p3, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mSingleTaskInstance:Z

    iput-boolean p4, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mUsePublicVirtualDisplay:Z

    return-void
.end method

.method private clearActivityViewGeometryForIme()V
    .registers 4

    invoke-virtual {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->reportActivityView(ILandroid/graphics/Matrix;)V

    return-void
.end method

.method private static createKeyEvent(III)Landroid/view/KeyEvent;
    .registers 19

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    new-instance v15, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, v15

    move-wide v1, v13

    move-wide v3, v13

    move/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    return-object v0
.end method

.method private getBaseDisplayDensity()I
    .registers 2

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    return v0
.end method

.method private reportLocation(Landroid/graphics/Matrix;Landroid/graphics/Point;)V
    .registers 8

    :try_start_0
    invoke-virtual {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->reportActivityView(ILandroid/graphics/Matrix;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    iget-object v2, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    invoke-interface {v2}, Landroid/window/TaskEmbedder$Host;->getWindow()Landroid/view/IWindow;

    move-result-object v2

    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/view/IWindowSession;->updateDisplayContentLocation(Landroid/view/IWindow;III)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_27
    return-void
.end method


# virtual methods
.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->notifyBoundsChanged()V

    invoke-super {p0, p1}, Landroid/window/TaskEmbedder;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public getDisplayId()I
    .registers 2

    invoke-virtual {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    return v0

    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public getId()I
    .registers 2

    invoke-virtual {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;
    .registers 2

    invoke-virtual {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onInitialize()Z
    .registers 10

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-direct {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->getBaseDisplayDensity()I

    move-result v1

    iput v1, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mDisplayDensityDpi:I

    const/16 v1, 0x108

    iget-boolean v2, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mUsePublicVirtualDisplay:Z

    if-eqz v2, :cond_1a

    or-int/lit8 v1, v1, 0x1

    move v8, v1

    goto :goto_1b

    :cond_1a
    move v8, v1

    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskVirtualDisplay@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    invoke-interface {v1}, Landroid/window/TaskEmbedder$Host;->getWidth()I

    move-result v3

    iget-object v1, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    invoke-interface {v1}, Landroid/window/TaskEmbedder$Host;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mDisplayDensityDpi:I

    const/4 v6, 0x0

    move-object v1, v0

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iput-object v1, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v1, :cond_52

    const-string v1, "VirDispTaskEmbedder"

    const-string v2, "Failed to initialize TaskEmbedder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_52
    :try_start_52
    invoke-virtual {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->getDisplayId()I

    move-result v1

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v3

    iget-object v4, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    invoke-interface {v4}, Landroid/window/TaskEmbedder$Host;->getWindow()Landroid/view/IWindow;

    move-result-object v4

    iget-object v5, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-interface {v3, v4, v5, v1}, Landroid/view/IWindowSession;->reparentDisplayContent(Landroid/view/IWindow;Landroid/view/SurfaceControl;I)V

    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->dontOverrideDisplayInfo(I)V

    iget-boolean v3, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mSingleTaskInstance:Z

    if-eqz v3, :cond_7d

    iget-object v3, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/ActivityTaskManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityTaskManager;

    invoke-virtual {v3, v1}, Landroid/app/ActivityTaskManager;->setDisplayToSingleTaskInstance(I)V

    :cond_7d
    iget-object v3, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mForwardedInsets:Landroid/graphics/Insets;

    invoke-virtual {p0, v3}, Landroid/window/VirtualDisplayTaskEmbedder;->setForwardedInsets(Landroid/graphics/Insets;)V

    new-instance v3, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;-><init>(Landroid/window/VirtualDisplayTaskEmbedder;Landroid/window/VirtualDisplayTaskEmbedder$1;)V

    iput-object v3, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mTaskStackListener:Landroid/app/TaskStackListener;

    iget-object v3, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v4, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v3, v4}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_91} :catch_92

    goto :goto_96

    :catch_92
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_96
    invoke-super {p0}, Landroid/window/TaskEmbedder;->onInitialize()Z

    move-result v1

    return v1
.end method

.method protected onRelease()Z
    .registers 5

    invoke-super {p0}, Landroid/window/TaskEmbedder;->onRelease()Z

    invoke-direct {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->clearActivityViewGeometryForIme()V

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mTaskStackListener:Landroid/app/TaskStackListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    :try_start_b
    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v2, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v0, v2}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13

    goto :goto_1b

    :catch_13
    move-exception v0

    const-string v2, "VirDispTaskEmbedder"

    const-string v3, "Failed to unregister task stack listener"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    iput-object v1, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mTaskStackListener:Landroid/app/TaskStackListener;

    :cond_1d
    invoke-virtual {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    iput-object v1, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 v0, 0x1

    return v0

    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method public performBackPress()V
    .registers 6

    invoke-virtual {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v2, v3, v0}, Landroid/window/VirtualDisplayTaskEmbedder;->createKeyEvent(III)Landroid/view/KeyEvent;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    const/4 v4, 0x1

    invoke-static {v4, v3, v0}, Landroid/window/VirtualDisplayTaskEmbedder;->createKeyEvent(III)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method protected prepareActivityOptions(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .registers 3

    invoke-super {p0, p1}, Landroid/window/TaskEmbedder;->prepareActivityOptions(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    return-object p1
.end method

.method public resizeTask(II)V
    .registers 5

    invoke-direct {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->getBaseDisplayDensity()I

    move-result v0

    iput v0, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mDisplayDensityDpi:I

    invoke-virtual {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget v1, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mDisplayDensityDpi:I

    invoke-virtual {v0, p1, p2, v1}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    :cond_13
    return-void
.end method

.method public setForwardedInsets(Landroid/graphics/Insets;)V
    .registers 5

    iput-object p1, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mForwardedInsets:Landroid/graphics/Insets;

    invoke-virtual {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mForwardedInsets:Landroid/graphics/Insets;

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->setForwardedInsets(ILandroid/graphics/Insets;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_1b
    return-void
.end method

.method public start()V
    .registers 3

    invoke-super {p0}, Landroid/window/TaskEmbedder;->start()V

    invoke-virtual {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setDisplayState(Z)V

    :cond_f
    return-void
.end method

.method public stop()V
    .registers 3

    invoke-super {p0}, Landroid/window/TaskEmbedder;->stop()V

    invoke-virtual {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setDisplayState(Z)V

    invoke-direct {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->clearActivityViewGeometryForIme()V

    :cond_12
    return-void
.end method

.method protected updateLocationAndTapExcludeRegion()V
    .registers 3

    invoke-super {p0}, Landroid/window/TaskEmbedder;->updateLocationAndTapExcludeRegion()V

    invoke-virtual {p0}, Landroid/window/VirtualDisplayTaskEmbedder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    invoke-interface {v0}, Landroid/window/TaskEmbedder$Host;->getWindow()Landroid/view/IWindow;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_22

    :cond_12
    iget-object v0, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    invoke-interface {v0}, Landroid/window/TaskEmbedder$Host;->getScreenToTaskMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroid/window/VirtualDisplayTaskEmbedder;->mHost:Landroid/window/TaskEmbedder$Host;

    invoke-interface {v1}, Landroid/window/TaskEmbedder$Host;->getPositionInWindow()Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/window/VirtualDisplayTaskEmbedder;->reportLocation(Landroid/graphics/Matrix;Landroid/graphics/Point;)V

    return-void

    :cond_22
    :goto_22
    return-void
.end method
