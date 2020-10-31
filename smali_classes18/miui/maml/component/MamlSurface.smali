.class public Lmiui/maml/component/MamlSurface;
.super Ljava/lang/Object;
.source "MamlSurface.java"

# interfaces
.implements Lmiui/maml/RendererController$IRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/component/MamlSurface$OnExternCommandListener;
    }
.end annotation


# static fields
.field public static final MODE_ASSETS_FOLDER:I = 0x2

.field public static final MODE_FOLDER:I = 0x3

.field public static final MODE_ZIP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MamlSurface"


# instance fields
.field private final mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

.field private mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/maml/component/MamlSurface$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mFinished:Z

.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/wallpaper/WallpaperService$Engine;)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/maml/component/MamlSurface;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/service/wallpaper/WallpaperService$Engine;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/service/wallpaper/WallpaperService$Engine;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/maml/component/MamlSurface$1;

    invoke-direct {v0, p0}, Lmiui/maml/component/MamlSurface$1;-><init>(Lmiui/maml/component/MamlSurface;)V

    iput-object v0, p0, Lmiui/maml/component/MamlSurface;->mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/maml/component/MamlSurface;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lmiui/maml/ResourceLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0, p5}, Lmiui/maml/component/MamlSurface;->load(Landroid/content/Context;Lmiui/maml/ResourceLoader;Landroid/service/wallpaper/WallpaperService$Engine;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;Landroid/service/wallpaper/WallpaperService$Engine;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/maml/component/MamlSurface$1;

    invoke-direct {v0, p0}, Lmiui/maml/component/MamlSurface$1;-><init>(Lmiui/maml/component/MamlSurface;)V

    iput-object v0, p0, Lmiui/maml/component/MamlSurface;->mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/component/MamlSurface;->load(Landroid/content/Context;Lmiui/maml/ResourceLoader;Landroid/service/wallpaper/WallpaperService$Engine;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/component/MamlSurface;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlSurface;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private finish()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/component/MamlSurface;->mFinished:Z

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/component/MamlSurface;->mFinished:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/component/MamlSurface;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->selfFinish()V

    iget-object v1, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->detachFromVsync()V

    iget-object v1, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/data/Variables;->reset()V

    iget-object v1, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-static {}, Lmiui/maml/ResourceManager;->clear()V

    iput-object v0, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    :cond_2c
    return-void
.end method

.method private getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lmiui/maml/ResourceLoader;
    .registers 6

    const/4 v0, 0x1

    if-eq p4, v0, :cond_17

    const/4 v0, 0x2

    if-eq p4, v0, :cond_11

    const/4 v0, 0x3

    if-eq p4, v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    new-instance v0, Lmiui/maml/util/FolderResourceLoader;

    invoke-direct {v0, p2}, Lmiui/maml/util/FolderResourceLoader;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_11
    new-instance v0, Lmiui/maml/util/AssetsResourceLoader;

    invoke-direct {v0, p1, p2}, Lmiui/maml/util/AssetsResourceLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :cond_17
    new-instance v0, Lmiui/maml/util/ZipResourceLoader;

    invoke-direct {v0, p2, p3}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private load(Landroid/content/Context;Lmiui/maml/ResourceLoader;Landroid/service/wallpaper/WallpaperService$Engine;)V
    .registers 8

    invoke-virtual {p3}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-object p3, p0, Lmiui/maml/component/MamlSurface;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz p2, :cond_4c

    new-instance v0, Lmiui/maml/ResourceManager;

    invoke-direct {v0, p2}, Lmiui/maml/ResourceManager;-><init>(Lmiui/maml/ResourceLoader;)V

    new-instance v1, Lmiui/maml/ScreenElementRoot;

    new-instance v2, Lmiui/maml/ScreenContext;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V

    invoke-direct {v1, v2}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    invoke-virtual {v1, p0}, Lmiui/maml/ScreenElementRoot;->setMamlSurface(Lmiui/maml/component/MamlSurface;)V

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->load()Z

    move-result v2

    if-eqz v2, :cond_4c

    iput-object v1, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v2, p0, Lmiui/maml/component/MamlSurface;->mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->setMamlSurfaceOnExternCommandListener(Lmiui/maml/ScreenElementRoot$OnExternCommandListener;)V

    iget-object v2, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2, p0}, Lmiui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lmiui/maml/RendererController$IRenderable;)V

    iget-object v2, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->attachToVsync()V

    iget-object v2, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->selfInit()V

    iget-object v2, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->isTransparentSurface()Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lmiui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_4c

    const/4 v3, -0x2

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_4c
    return-void
.end method


# virtual methods
.method public doRender()V
    .registers 6

    const-string v0, "unlockCanvasAndPost exception."

    const-string v1, "MamlSurface"

    iget-object v2, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v2, :cond_71

    iget-object v2, p0, Lmiui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_71

    const/4 v3, 0x0

    :try_start_d
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    move-object v3, v2

    if-nez v3, :cond_26

    const-string v2, ":( fail to lock canvas."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_4f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_19} :catch_40
    .catchall {:try_start_d .. :try_end_19} :catchall_3e

    if-eqz v3, :cond_25

    :try_start_1b
    iget-object v2, p0, Lmiui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    :goto_25
    return-void

    :cond_26
    const/4 v2, 0x0

    :try_start_27
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2, v3}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_4f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_27 .. :try_end_31} :catch_40
    .catchall {:try_start_27 .. :try_end_31} :catchall_3e

    if-eqz v3, :cond_5e

    :try_start_33
    iget-object v2, p0, Lmiui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3d
    goto :goto_5e

    :catchall_3e
    move-exception v2

    goto :goto_64

    :catch_40
    move-exception v2

    :try_start_41
    const-string v4, "render oom error."

    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_3e

    nop

    if-eqz v3, :cond_5e

    :try_start_49
    iget-object v2, p0, Lmiui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_39

    goto :goto_3d

    :catch_4f
    move-exception v2

    :try_start_50
    const-string v4, "render exception."

    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_3e

    nop

    if-eqz v3, :cond_5e

    :try_start_58
    iget-object v2, p0, Lmiui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5d} :catch_39

    goto :goto_3d

    :cond_5e
    :goto_5e
    iget-object v0, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->doneRender()V

    goto :goto_71

    :goto_64
    if-eqz v3, :cond_70

    :try_start_66
    iget-object v4, p0, Lmiui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6b} :catch_6c

    goto :goto_70

    :catch_6c
    move-exception v4

    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_70
    :goto_70
    throw v2

    :cond_71
    :goto_71
    return-void
.end method

.method public doneRender()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->doneRender()V

    :cond_7
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Lmiui/maml/component/MamlSurface;->finish()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lmiui/maml/component/MamlSurface;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lmiui/maml/util/HideSdkDependencyUtils;->SurfaceControl_getInstance_with_engine(Landroid/service/wallpaper/WallpaperService$Engine;)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoot()Lmiui/maml/ScreenElementRoot;
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getVariables()Lmiui/maml/data/Variables;
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public isLoaded()Z
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "MamlSurface"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiui/maml/component/MamlSurface;->finish()V

    return-void
.end method

.method public onPause()V
    .registers 3

    const-string v0, "MamlSurface"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfPause()V

    :cond_e
    return-void
.end method

.method public onResume()V
    .registers 3

    const-string v0, "MamlSurface"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfResume()V

    :cond_e
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public requestUpdate()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_7
    return-void
.end method

.method public sendCommand(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setAutoDarkenWallpaper(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setAutoDarkenWallpaper(Z)V

    :cond_8
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setConfig(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setOnExternCommandListener(Lmiui/maml/component/MamlSurface$OnExternCommandListener;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_9
    iput-object v0, p0, Lmiui/maml/component/MamlSurface;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setSaveConfigOnlyInPause(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setSaveConfigViaProvider(Z)V

    :cond_7
    return-void
.end method

.method public setSaveConfigViaProvider(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlSurface;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setSaveConfigViaProvider(Z)V

    :cond_7
    return-void
.end method
