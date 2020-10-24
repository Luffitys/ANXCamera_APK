.class public Lcom/xiaomi/camera/device/CameraService;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final NORMAL_MSG_TYPE:I = 0x1

.field public static final REASON_CLOSE:I = 0x0

.field public static final REASON_DISCONNECTED:I = 0x1

.field public static final SHOTBOOST_TYPE:I = 0x65

.field private static final STICKY_MSG_TYPE:I = 0xa

.field private static final sInstance:Lcom/xiaomi/camera/util/Singleton;


# instance fields
.field private final mCameraCallableHandler:Landroid/os/Handler;

.field private final mCameraHandlerThread:Lcom/xiaomi/camera/device/CameraHandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/camera/device/CameraService$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/device/CameraService$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/device/CameraService;->sInstance:Lcom/xiaomi/camera/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/camera/device/CameraHandlerThread;

    invoke-direct {v0}, Lcom/xiaomi/camera/device/CameraHandlerThread;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/device/CameraService;->mCameraHandlerThread:Lcom/xiaomi/camera/device/CameraHandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/xiaomi/camera/device/CameraService;->mCameraHandlerThread:Lcom/xiaomi/camera/device/CameraHandlerThread;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/CameraHandlerThread;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v1

    iput-object v0, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/camera/device/CameraService;->mCameraHandlerThread:Lcom/xiaomi/camera/device/CameraHandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/camera/device/OooO0OO;->OooO00o:Lcom/xiaomi/camera/device/OooO0OO;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/camera/device/CameraService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/device/CameraService;-><init>()V

    return-void
.end method

.method static synthetic OooO00o(Landroid/os/Message;)Z
    .locals 1

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Lcom/xiaomi/camera/device/callable/CameraCallable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/xiaomi/camera/device/callable/CameraCallable;

    invoke-virtual {p0}, Lcom/xiaomi/camera/device/callable/CameraCallable;->run()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static addCameraCallable(ILcom/xiaomi/camera/device/callable/CameraCallable;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static addCameraCallable(Lcom/xiaomi/camera/device/callable/CameraCallable;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/xiaomi/camera/device/CameraService;->addCameraCallable(ILcom/xiaomi/camera/device/callable/CameraCallable;)V

    return-void
.end method

.method private static addCameraCallableDelayed(ILcom/xiaomi/camera/device/callable/CameraCallable;J)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static addShotBoostCallableDelayed(Lcom/xiaomi/camera/device/callable/CameraCallable;J)V
    .locals 1

    const/16 v0, 0x65

    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/camera/device/CameraService;->addCameraCallableDelayed(ILcom/xiaomi/camera/device/callable/CameraCallable;J)V

    return-void
.end method

.method public static addStickyCameraCallable(Lcom/xiaomi/camera/device/callable/CameraCallable;)V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0, p0}, Lcom/xiaomi/camera/device/CameraService;->addCameraCallable(ILcom/xiaomi/camera/device/callable/CameraCallable;)V

    return-void
.end method

.method public static varargs closeCamera(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CameraListener;Landroid/os/Handler;[Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/camera/device/callable/CloseCameraCallable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/camera/device/callable/CloseCameraCallable;-><init>(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CameraListener;Landroid/os/Handler;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/camera/device/CameraService;->addCameraCallable(Lcom/xiaomi/camera/device/callable/CameraCallable;)V

    return-void
.end method

.method public static execute(Lcom/xiaomi/camera/device/callable/CameraCallable;)Lcom/xiaomi/camera/device/callable/CallableReturn;
    .locals 2

    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/xiaomi/camera/device/OooO00o;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/device/OooO00o;-><init>(Lcom/xiaomi/camera/device/callable/CameraCallable;)V

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/device/callable/CallableReturn;

    return-object p0
.end method

.method public static execute(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    invoke-static {v0, p0}, Lcom/xiaomi/camera/util/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    invoke-static {v0, p0}, Lcom/xiaomi/camera/util/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getCameraCallableHandler()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;
    .locals 1

    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraHandlerThread:Lcom/xiaomi/camera/device/CameraHandlerThread;

    invoke-virtual {v0}, Lcom/xiaomi/camera/device/CameraHandlerThread;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance()Lcom/xiaomi/camera/device/CameraService;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/device/CameraService;->sInstance:Lcom/xiaomi/camera/util/Singleton;

    invoke-virtual {v0}, Lcom/xiaomi/camera/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/device/CameraService;

    return-object v0
.end method

.method public static hasPendingCallable(I)Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public static varargs openCamera(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CameraListener;Lcom/xiaomi/camera/device/callable/OpenCameraListener;Landroid/os/Handler;[Ljava/lang/String;)V
    .locals 8

    new-instance v7, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getCameraCallableHandler()Landroid/os/Handler;

    move-result-object v4

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;-><init>(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CameraListener;Lcom/xiaomi/camera/device/callable/OpenCameraListener;Landroid/os/Handler;Landroid/os/Handler;[Ljava/lang/String;)V

    invoke-static {v7}, Lcom/xiaomi/camera/device/CameraService;->addCameraCallable(Lcom/xiaomi/camera/device/callable/CameraCallable;)V

    return-void
.end method

.method public static preload()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    return-void
.end method

.method public static release(Ljava/lang/String;ZLcom/xiaomi/camera/device/callable/CameraListener;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/camera/device/callable/ReleaseCameraCallable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/camera/device/callable/ReleaseCameraCallable;-><init>(Ljava/lang/String;ZLcom/xiaomi/camera/device/callable/CameraListener;Landroid/os/Handler;)V

    invoke-static {v0}, Lcom/xiaomi/camera/device/CameraService;->addCameraCallable(Lcom/xiaomi/camera/device/callable/CameraCallable;)V

    return-void
.end method

.method public static removeCameraCallables()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public static removeShotBoostCallable()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->getInstance()Lcom/xiaomi/camera/device/CameraService;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/camera/device/CameraService;->mCameraCallableHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public getConcurrentStreamingCameraIds()Ljava/util/Set;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
