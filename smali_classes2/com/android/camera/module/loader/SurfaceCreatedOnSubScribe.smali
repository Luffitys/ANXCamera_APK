.class public Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;
.super Ljava/lang/Object;
.source "SurfaceCreatedOnSubScribe.java"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;
.implements Lcom/android/camera/module/loader/SurfaceCreatedCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/android/camera/module/loader/SurfaceCreatedCallback;"
    }
.end annotation


# instance fields
.field private mSingleEmitter:Lio/reactivex/SingleEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleEmitter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceStateListener:Lcom/android/camera/module/loader/SurfaceStateListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/loader/SurfaceStateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->mSurfaceStateListener:Lcom/android/camera/module/loader/SurfaceStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;)Lio/reactivex/SingleEmitter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->mSingleEmitter:Lio/reactivex/SingleEmitter;

    return-object p0
.end method

.method private onSurfaceCreated(Lio/reactivex/SingleEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->mSingleEmitter:Lio/reactivex/SingleEmitter;

    invoke-direct {p0}, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->openCamera2()V

    return-void
.end method

.method private openCamera2()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v1

    new-instance v4, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe$1;

    invoke-direct {v4, p0}, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe$1;-><init>(Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;)V

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->getCameraHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, v3, v4, p0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    array-length p0, v2

    :goto_1
    if-ge v1, p0, :cond_0

    aget-object v0, v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ids:"

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method


# virtual methods
.method public onGlSurfaceCreated()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->mSingleEmitter:Lio/reactivex/SingleEmitter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->mSingleEmitter:Lio/reactivex/SingleEmitter;

    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->onSurfaceCreated(Lio/reactivex/SingleEmitter;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->mSingleEmitter:Lio/reactivex/SingleEmitter;

    :cond_1
    :goto_0
    return-void
.end method

.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->mSurfaceStateListener:Lcom/android/camera/module/loader/SurfaceStateListener;

    invoke-interface {v0}, Lcom/android/camera/module/loader/SurfaceStateListener;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->mSingleEmitter:Lio/reactivex/SingleEmitter;

    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->onSurfaceCreated(Lio/reactivex/SingleEmitter;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->mSingleEmitter:Lio/reactivex/SingleEmitter;

    :goto_0
    return-void
.end method
