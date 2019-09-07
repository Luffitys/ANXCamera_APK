.class public Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubScribe;
.super Ljava/lang/Object;
.source "Camera2OpenOnSubScribe.java"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;
.implements Lcom/android/camera/module/loader/SurfaceCreatedCallback;
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "Lcom/android/camera/module/loader/camera2/Camera2Result;",
        ">;",
        "Lcom/android/camera/module/loader/SurfaceCreatedCallback;",
        "Lio/reactivex/Observer<",
        "Lcom/android/camera/module/loader/camera2/Camera2Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Camera2OpenOnSubScribe"


# instance fields
.field private mCamera2Result:Lcom/android/camera/module/loader/camera2/Camera2Result;

.field private mSingleEmitter:Lio/reactivex/SingleEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleEmitter<",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceStateListener:Lcom/android/camera/module/loader/SurfaceStateListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/loader/SurfaceStateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubScribe;->mSurfaceStateListener:Lcom/android/camera/module/loader/SurfaceStateListener;

    return-void
.end method

.method private openCamera()V
    .locals 4

    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/snap/SnapTrigger;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->getInstance()Lcom/android/camera/snap/SnapTrigger;

    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->destroy()V

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->openCamera(IILio/reactivex/Observer;Z)V

    return-void
.end method

.method private submitResult(Lcom/android/camera/module/loader/camera2/Camera2Result;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubScribe;->mSingleEmitter:Lio/reactivex/SingleEmitter;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/Camera2Result;->create(I)Lcom/android/camera/module/loader/camera2/Camera2Result;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubScribe;->mCamera2Result:Lcom/android/camera/module/loader/camera2/Camera2Result;

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubScribe;->mCamera2Result:Lcom/android/camera/module/loader/camera2/Camera2Result;

    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubScribe;->submitResult(Lcom/android/camera/module/loader/camera2/Camera2Result;)V

    return-void
.end method

.method public onGlSurfaceCreated()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGlSurfaceCreated: mSingleEmitter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubScribe;->mSingleEmitter:Lio/reactivex/SingleEmitter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2OpenOnSubScribe"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubScribe;->mSingleEmitter:Lio/reactivex/SingleEmitter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubScribe;->mCamera2Result:Lcom/android/camera/module/loader/camera2/Camera2Result;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubScribe;->submitResult(Lcom/android/camera/module/loader/camera2/Camera2Result;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNext(Lcom/android/camera/module/loader/camera2/Camera2Result;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNext: hasSurface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubScribe;->mSurfaceStateListener:Lcom/android/camera/module/loader/SurfaceStateListener;

    invoke-interface {v1}, Lcom/android/camera/module/loader/SurfaceStateListener;->hasSurface()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2OpenOnSubScribe"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubScribe;->mCamera2Result:Lcom/android/camera/module/loader/camera2/Camera2Result;

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCapture()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubScribe;->mSurfaceStateListener:Lcom/android/camera/module/loader/SurfaceStateListener;

    invoke-interface {v0}, Lcom/android/camera/module/loader/SurfaceStateListener;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubScribe;->submitResult(Lcom/android/camera/module/loader/camera2/Camera2Result;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/module/loader/camera2/Camera2Result;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubScribe;->onNext(Lcom/android/camera/module/loader/camera2/Camera2Result;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method

.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubScribe;->mCamera2Result:Lcom/android/camera/module/loader/camera2/Camera2Result;

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubScribe;->mSingleEmitter:Lio/reactivex/SingleEmitter;

    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubScribe;->openCamera()V

    return-void
.end method
