.class public Lcom/android/camera/module/loader/camera2/Camera2OpenManager;
.super Ljava/lang/Object;
.source "Camera2OpenManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/loader/camera2/Camera2OpenManager$ManagerState;
    }
.end annotation


# static fields
.field private static final CAMERA_OPEN_OR_CLOSE_TIMEOUT:J = 0x1388L

.field private static final MANAGER_MSG_CLOSE_CAMERA_AFTER_CAPTURE:I = 0x5

.field private static final MANAGER_MSG_CLOSE_FINISH:I = 0x3

.field private static final MANAGER_MSG_FORCE_CLOSE_CAMERA:I = 0x2

.field private static final MANAGER_MSG_OPEN_FINISH:I = 0x4

.field private static final MANAGER_MSG_REQUEST_CAMERA:I = 0x1

.field private static final MANAGER_STATE_IDLE:I = 0x1

.field private static final MANAGER_STATE_WAITING_CLOSE:I = 0x2

.field private static final MANAGER_STATE_WAITING_OPEN:I = 0x3

.field private static final POP_CAMERA_DELAY_CREATE_SESSION:J

.field public static final REASON_CLOSE:I = 0x0

.field public static final REASON_DISCONNECTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Camera2OpenManager"

.field private static sInstance:Lcom/android/camera/module/loader/camera2/Camera2OpenManager;


# instance fields
.field private mCamera2Device:Lcom/android/camera2/Camera2Proxy;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraMainThreadHandler:Landroid/os/Handler;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mCameraOpenCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCameraPreviewHandler:Landroid/os/Handler;

.field private mCameraResultEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraResultObservable:Lio/reactivex/observables/ConnectableObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/observables/ConnectableObservable<",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentModule:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCurrentState:I

.field private final mEmitterLock:Ljava/lang/Object;

.field private mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPopCameraTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "delay_create_session"

    const-wide/16 v1, 0x1c2

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->POP_CAMERA_DELAY_CREATE_SESSION:J

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mEmitterLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCurrentModule:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPopCameraTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCurrentState:I

    new-instance v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager$2;-><init>(Lcom/android/camera/module/loader/camera2/Camera2OpenManager;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraOpenCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->initData()V

    return-void
.end method

.method private abandonOpenObservableIfExists()V
    .locals 4

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string v1, "abandonOpenObservableIfExists: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mEmitterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abandonOpenObservableIfExists: start mCameraResultEmitter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/camera/module/loader/camera2/Camera2Result;->create(I)Lcom/android/camera/module/loader/camera2/Camera2Result;

    move-result-object v2

    const/16 v3, 0xe1

    invoke-virtual {v2, v3}, Lcom/android/camera/module/loader/camera2/Camera2Result;->setCameraError(I)Lcom/android/camera/module/loader/camera2/Camera2Result;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v1}, Lio/reactivex/Emitter;->onComplete()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string v0, "abandonOpenObservableIfExists: X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic access$000(Lcom/android/camera/module/loader/camera2/Camera2OpenManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->onMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/module/loader/camera2/Camera2OpenManager;)Lcom/android/camera2/Camera2Proxy;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/camera/module/loader/camera2/Camera2OpenManager;Lcom/android/camera2/Camera2Proxy;)Lcom/android/camera2/Camera2Proxy;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/module/loader/camera2/Camera2OpenManager;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPopCameraTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()J
    .locals 2

    sget-wide v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->POP_CAMERA_DELAY_CREATE_SESSION:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/camera/module/loader/camera2/Camera2OpenManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/module/loader/camera2/Camera2OpenManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->onCameraOpenFailed(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/module/loader/camera2/Camera2OpenManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private attachInObservable(Lio/reactivex/Observer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mEmitterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultObservable:Lio/reactivex/observables/ConnectableObservable;

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Lcom/android/camera/module/loader/camera2/a;

    invoke-direct {v1, p0}, Lcom/android/camera/module/loader/camera2/a;-><init>(Lcom/android/camera/module/loader/camera2/Camera2OpenManager;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->getCameraOpTimeout()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/loader/camera2/b;

    invoke-direct {v2, p0}, Lcom/android/camera/module/loader/camera2/b;-><init>(Lcom/android/camera/module/loader/camera2/Camera2OpenManager;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/android/camera/constant/GlobalConstant;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Observable;->publish()Lio/reactivex/observables/ConnectableObservable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultObservable:Lio/reactivex/observables/ConnectableObservable;

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultObservable:Lio/reactivex/observables/ConnectableObservable;

    invoke-virtual {v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultObservable:Lio/reactivex/observables/ConnectableObservable;

    invoke-virtual {p0}, Lio/reactivex/observables/ConnectableObservable;->connect()Lio/reactivex/disposables/Disposable;

    const/4 p0, 0x0

    :goto_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getCameraOpTimeout()J
    .locals 6

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const-wide/16 v0, 0x1388

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getExposureTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/camera/module/loader/camera2/Camera2OpenManager;
    .locals 2

    const-class v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    invoke-direct {v1}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;-><init>()V

    sput-object v1, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    :cond_0
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2OpenManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getManagerState()I
    .locals 0
    .annotation build Lcom/android/camera/module/loader/camera2/Camera2OpenManager$ManagerState;
    .end annotation

    iget p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCurrentState:I

    return p0
.end method

.method private initData()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/camera/module/loader/camera2/Camera2OpenManager$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager$1;-><init>(Lcom/android/camera/module/loader/camera2/Camera2OpenManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraPreviewHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraPreviewHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraMainThreadHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-static {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    return-void
.end method

.method private onCameraOpenFailed(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOpenFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->setManagerState(I)V

    iget-object p2, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mEmitterLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/camera/module/loader/camera2/Camera2Result;->create(I)Lcom/android/camera/module/loader/camera2/Camera2Result;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/module/loader/camera2/Camera2Result;->setCameraError(I)Lcom/android/camera/module/loader/camera2/Camera2Result;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onCameraOpenSuccess()V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->setManagerState(I)V

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string v1, "onCameraOpenSuccess: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mEmitterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraOpenSuccess: mCameraResultEmitter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/camera/module/loader/camera2/Camera2Result;->create(I)Lcom/android/camera/module/loader/camera2/Camera2Result;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string v0, "onCameraOpenSuccess: X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private onMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string v0, "open finish"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->setManagerState(I)V

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_1
    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string v0, "close finish"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->eb()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPopCameraTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->takebackMotor()Z

    :cond_2
    invoke-direct {p0, v5}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->setManagerState(I)V

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->getManagerState()I

    move-result v0

    if-eq v0, v5, :cond_5

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not idle, break on msg.what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mCurrentState "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCurrentState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, v4}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->setManagerState(I)V

    iget p1, p1, Landroid/os/Message;->arg1:I

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force close start reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->releasePreview(I)V

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->resetConfigs()V

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->close()V

    iput-object v3, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    goto/16 :goto_0

    :cond_6
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v3}, Lcom/android/camera2/Camera2Proxy;->setCaptureBusyCallback(Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;)V

    :cond_7
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const-string v0, "close start"

    if-gez p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p1, :cond_e

    invoke-direct {p0, v4}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->setManagerState(I)V

    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->close()V

    iput-object v3, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    goto/16 :goto_0

    :cond_8
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p1

    iget-object v6, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-ne p1, v6, :cond_b

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Camera "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " was opened successfully"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but corresponding CameraCapabilities is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xe7

    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->onCameraOpenFailed(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->bb()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->cancelSession()V

    :cond_a
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->onCameraOpenSuccess()V

    goto :goto_0

    :cond_b
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p1, :cond_c

    invoke-direct {p0, v4}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->setManagerState(I)V

    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->close()V

    iput-object v3, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    goto :goto_0

    :cond_c
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->getManagerState()I

    move-result p1

    if-eq p1, v5, :cond_d

    goto :goto_0

    :cond_d
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->setManagerState(I)V

    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string v0, "open start"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraOpenCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v2, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0xe6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->onCameraOpenFailed(ILjava/lang/String;)V

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCamera: failed to open camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_0
    return-void
.end method

.method public static preload()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string v1, "preload"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeAllAppMessages()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private setManagerState(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/android/camera/module/loader/camera2/Camera2OpenManager$ManagerState;
        .end annotation
    .end param

    iput p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCurrentState:I

    return-void
.end method


# virtual methods
.method public synthetic a(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraResultEmitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method public synthetic c(Ljava/lang/Throwable;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurs in camera open or close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/MessageQueue;->isPolling()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    const-string p1, "CameraHandlerThread is being stuck..."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0}, Lcom/android/camera/module/loader/camera2/Camera2Result;->create(I)Lcom/android/camera/module/loader/camera2/Camera2Result;

    move-result-object p0

    const/16 p1, 0xec

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2Result;->setCameraError(I)Lcom/android/camera/module/loader/camera2/Camera2Result;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public synthetic d(ZZ)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release onCaptureCompleted: success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " immediate:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public getCameraHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getCameraMainThreadHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getCameraPreviewHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraPreviewHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getCurrentCamera2Device()Lcom/android/camera2/Camera2Proxy;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    return-object p0
.end method

.method public getPendingCameraId()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public openCamera(IILio/reactivex/Observer;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lio/reactivex/Observer<",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getActualOpenCameraId(II)I

    move-result v0

    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera: pendingOpenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPendingCameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currentMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentModule = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCurrentModule:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", forceClose = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->eb()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne p1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->popupMotor()Z

    move-result p1

    iget-object v1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPopCameraTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCamera: popupMotor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPopCameraTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCurrentModule:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eq p1, p2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->removeAllAppMessages()V

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCurrentModule:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->abandonOpenObservableIfExists()V

    :cond_3
    invoke-direct {p0, p3}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->attachInObservable(Lio/reactivex/Observer;)Z

    if-eqz p4, :cond_4

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method public release(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->abandonOpenObservableIfExists()V

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mPendingCameraId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCurrentModule:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v1, Lcom/android/camera/module/loader/camera2/c;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/module/loader/camera2/c;-><init>(Lcom/android/camera/module/loader/camera2/Camera2OpenManager;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setCaptureBusyCallback(Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;)V

    return-void
.end method
