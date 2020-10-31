.class public Lmiui/cameraanimation/CameraAnimationManager;
.super Ljava/lang/Object;
.source "CameraAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cameraanimation/CameraAnimationManager$H;
    }
.end annotation


# static fields
.field private static final FORCE_BLACK_V2:Ljava/lang/String; = "force_black_v2"

.field public static final FRONT_CAMERA_CLOSE:I = 0x1

.field public static final FRONT_CAMERA_OPEN:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CameraAnimationManager"

.field private static final VIRTUAL_CAMERA_BOUNDARY:I = 0x64

.field public static final sMonitorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimationView:Lmiui/cameraanimation/CameraAnimationView;

.field private mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mBackCameraID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mContext:Landroid/content/Context;

.field private mForegroundInfoChangeListener:Lmiui/process/IForegroundInfoListener$Stub;

.field private mForegroundPackage:Ljava/lang/String;

.field private mFrontCameraID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHideNotch:Z

.field private mHideNotchObserver:Landroid/database/ContentObserver;

.field private mIsAddedView:Z

.field private mLastUnavailableCameraId:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/cameraanimation/CameraAnimationManager;->sMonitorList:Ljava/util/ArrayList;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/cameraanimation/CameraAnimationManager;->sMonitorList:Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/cameraanimation/CameraAnimationManager;->sMonitorList:Ljava/util/ArrayList;

    const-string v1, "com.mlab.cam"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mFrontCameraID:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mBackCameraID:Ljava/util/List;

    new-instance v0, Lmiui/cameraanimation/CameraAnimationManager$1;

    invoke-direct {v0, p0}, Lmiui/cameraanimation/CameraAnimationManager$1;-><init>(Lmiui/cameraanimation/CameraAnimationManager;)V

    iput-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    new-instance v0, Lmiui/cameraanimation/CameraAnimationManager$2;

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lmiui/cameraanimation/CameraAnimationManager$2;-><init>(Lmiui/cameraanimation/CameraAnimationManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHideNotchObserver:Landroid/database/ContentObserver;

    new-instance v0, Lmiui/cameraanimation/CameraAnimationManager$3;

    invoke-direct {v0, p0}, Lmiui/cameraanimation/CameraAnimationManager$3;-><init>(Lmiui/cameraanimation/CameraAnimationManager;)V

    iput-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mForegroundInfoChangeListener:Lmiui/process/IForegroundInfoListener$Stub;

    iput-object p1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "camera_animation"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lmiui/cameraanimation/CameraAnimationManager$H;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lmiui/cameraanimation/CameraAnimationManager$H;-><init>(Lmiui/cameraanimation/CameraAnimationManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/cameraanimation/CameraAnimationView;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lmiui/cameraanimation/CameraAnimationView;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mAnimationView:Lmiui/cameraanimation/CameraAnimationView;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mIsAddedView:Z

    iget-object v2, p0, Lmiui/cameraanimation/CameraAnimationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "force_black_v2"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHideNotchObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHideNotchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method static synthetic access$000(Lmiui/cameraanimation/CameraAnimationManager;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mFrontCameraID:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/cameraanimation/CameraAnimationManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/cameraanimation/CameraAnimationManager;->stopCameraAnimation()V

    return-void
.end method

.method static synthetic access$1000(Lmiui/cameraanimation/CameraAnimationManager;)Landroid/view/WindowManager;
    .registers 2

    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/cameraanimation/CameraAnimationManager;)I
    .registers 2

    iget v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mLastUnavailableCameraId:I

    return v0
.end method

.method static synthetic access$202(Lmiui/cameraanimation/CameraAnimationManager;I)I
    .registers 2

    iput p1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mLastUnavailableCameraId:I

    return p1
.end method

.method static synthetic access$300(Lmiui/cameraanimation/CameraAnimationManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/cameraanimation/CameraAnimationManager;->startCameraAnimation()V

    return-void
.end method

.method static synthetic access$402(Lmiui/cameraanimation/CameraAnimationManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHideNotch:Z

    return p1
.end method

.method static synthetic access$500(Lmiui/cameraanimation/CameraAnimationManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lmiui/cameraanimation/CameraAnimationManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mForegroundPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lmiui/cameraanimation/CameraAnimationManager;)Landroid/view/WindowManager$LayoutParams;
    .registers 2

    invoke-direct {p0}, Lmiui/cameraanimation/CameraAnimationManager;->getWindowParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lmiui/cameraanimation/CameraAnimationManager;)Lmiui/cameraanimation/CameraAnimationView;
    .registers 2

    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mAnimationView:Lmiui/cameraanimation/CameraAnimationView;

    return-object v0
.end method

.method static synthetic access$900(Lmiui/cameraanimation/CameraAnimationManager;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mIsAddedView:Z

    return v0
.end method

.method static synthetic access$902(Lmiui/cameraanimation/CameraAnimationManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mIsAddedView:Z

    return p1
.end method

.method private canShowAnimation()Z
    .registers 3

    iget-boolean v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHideNotch:Z

    if-nez v0, :cond_10

    sget-object v0, Lmiui/cameraanimation/CameraAnimationManager;->sMonitorList:Ljava/util/ArrayList;

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mForegroundPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private getWindowParam()Landroid/view/WindowManager$LayoutParams;
    .registers 10

    const/16 v6, 0x55

    const/4 v7, -0x1

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7df

    const/16 v4, 0x538

    const/4 v5, -0x3

    move-object v0, v8

    move v1, v7

    move v2, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "cameraAnimation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private initCameraId()V
    .registers 10

    :try_start_0
    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    array-length v1, v0

    if-lez v1, :cond_4b

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_4b

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_1e

    goto :goto_48

    :cond_1e
    iget-object v5, p0, Lmiui/cameraanimation/CameraAnimationManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_3c

    iget-object v7, p0, Lmiui/cameraanimation/CameraAnimationManager;->mFrontCameraID:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_3c
    const/4 v7, 0x1

    if-ne v6, v7, :cond_48

    iget-object v7, p0, Lmiui/cameraanimation/CameraAnimationManager;->mBackCameraID:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_4c

    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_4b
    goto :goto_54

    :catch_4c
    move-exception v0

    const-string v1, "CameraAnimationManager"

    const-string v2, "Can\'t initCameraId"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    return-void
.end method

.method private startCameraAnimation()V
    .registers 3

    invoke-direct {p0}, Lmiui/cameraanimation/CameraAnimationManager;->canShowAnimation()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_c
    return-void
.end method

.method private stopCameraAnimation()V
    .registers 3

    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public registerForegroundInfoChangeListener()V
    .registers 2

    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mForegroundInfoChangeListener:Lmiui/process/IForegroundInfoListener$Stub;

    invoke-static {v0}, Lmiui/process/ProcessManager;->unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mForegroundInfoChangeListener:Lmiui/process/IForegroundInfoListener$Stub;

    invoke-static {v0}, Lmiui/process/ProcessManager;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    return-void
.end method

.method public systemReady()V
    .registers 4

    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Lmiui/cameraanimation/CameraAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    invoke-virtual {p0}, Lmiui/cameraanimation/CameraAnimationManager;->registerForegroundInfoChangeListener()V

    invoke-direct {p0}, Lmiui/cameraanimation/CameraAnimationManager;->initCameraId()V

    return-void
.end method
