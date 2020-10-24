.class public Lcom/xiaomi/camera/rx/CameraOpenObservable;
.super Lio/reactivex/Single;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraOpenObservable"


# instance fields
.field private final mCameraId:Ljava/lang/String;

.field private final mExclusions:[Ljava/lang/String;


# direct methods
.method private varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mCameraId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mExclusions:[Ljava/lang/String;

    return-void
.end method

.method public static varargs create(Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaomi/camera/rx/CameraOpenObservable;
    .locals 1

    new-instance v0, Lcom/xiaomi/camera/rx/CameraOpenObservable;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/camera/rx/CameraOpenObservable;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/camera/rx/CameraOpenObservable$Listener;

    iget-object v1, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mCameraId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/xiaomi/camera/rx/CameraOpenObservable$Listener;-><init>(Ljava/lang/String;Lio/reactivex/SingleObserver;Lcom/xiaomi/camera/rx/CameraOpenObservable$1;)V

    invoke-interface {p1, v0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subscribeActual: openCamera: cid = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", listener = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraOpenObservable"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getCameraCallableHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mExclusions:[Ljava/lang/String;

    invoke-static {p1, v0, v0, v1, p0}, Lcom/xiaomi/camera/device/CameraService;->openCamera(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CameraListener;Lcom/xiaomi/camera/device/callable/OpenCameraListener;Landroid/os/Handler;[Ljava/lang/String;)V

    return-void
.end method
