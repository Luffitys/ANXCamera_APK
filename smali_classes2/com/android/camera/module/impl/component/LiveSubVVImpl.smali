.class public Lcom/android/camera/module/impl/component/LiveSubVVImpl;
.super Ljava/lang/Object;
.source "LiveSubVVImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;
.implements Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;
.implements Lcom/xiaomi/mediaprocess/EffectCameraNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/impl/component/LiveSubVVImpl$PreviewImageRunnable;
    }
.end annotation


# static fields
.field public static final COMPOSE_PATH:Ljava/lang/String;

.field private static final PREVIEW_SAVER_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final SEGMENTS_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LiveSubVVImpl"

.field public static final TEMPLATE_PATH:Ljava/lang/String;

.field public static final VV_DIR:Ljava/lang/String;

.field private static final WATERMARK_PATH:Ljava/lang/String;

.field public static final WORKSPACE_PATH:Ljava/lang/String;

.field private static final mPreviewRequestQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private liveVVProcess:Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field private mComposeFile:Lcom/xiaomi/mediaprocess/MediaComposeFile;

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mCurrentOrientation:I

.field private mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

.field private mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

.field private mHandler:Landroid/os/Handler;

.field private mLastFrameTime:J

.field private mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

.field private mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

.field private mMediaRecorderRecording:Z

.field private mMediaRecorderRecordingPaused:Z

.field private mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;

.field private mNeedRequestRender:Z

.field private mNeedStop:Z

.field private mOpenGlRender:Lcom/xiaomi/mediaprocess/OpenGlRender;

.field private mPlayFinished:Z

.field private mRecordingTimerDisposable:Lio/reactivex/disposables/Disposable;

.field private mTempVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/MIUI/Camera/vv/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->VV_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->VV_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "template/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TEMPLATE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->VV_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "workspace/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->WORKSPACE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->WORKSPACE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "segments"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->SEGMENTS_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->WORKSPACE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "compose/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->COMPOSE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "watermark.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->WATERMARK_PATH:Ljava/lang/String;

    new-instance v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$2;

    invoke-direct {v0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$2;-><init>()V

    sput-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mPreviewRequestQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mPreviewRequestQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0xa

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->PREVIEW_SAVER_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentOrientation:I

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->notifyModuleRecordingFinish()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/module/impl/component/LiveSubVVImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mNeedStop:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/module/impl/component/LiveSubVVImpl;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mRecordingTimerDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/module/impl/component/LiveSubVVImpl;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->updateRecordingTime(J)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/module/impl/component/LiveSubVVImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mPlayFinished:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->liveVVProcess:Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)Lcom/android/camera/data/observeable/VMProcessing;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    return-object p0
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/LiveSubVVImpl;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private notifyModuleRecordingFinish()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->resetFlag()V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb3

    if-ne v0, v1, :cond_0

    check-cast p0, Lcom/android/camera/module/LiveModuleSubVV;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/LiveModuleSubVV;->stopVideoRecording(ZZ)V

    :cond_0
    return-void
.end method

.method private prepareEffectGraph()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v1, v0, Lcom/android/camera/fragment/vv/VVItem;->composeJsonPath:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/camera/fragment/vv/VVItem;->musicPath:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mTempVideoList:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->WATERMARK_PATH:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-instance v4, Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    invoke-direct {v4}, Lcom/xiaomi/mediaprocess/MediaEffectGraph;-><init>()V

    iput-object v4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    iget-object v4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    invoke-virtual {v4}, Lcom/xiaomi/mediaprocess/MediaEffectGraph;->ConstructMediaEffectGraph()V

    iget-object v4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/xiaomi/mediaprocess/MediaEffectGraph;->SetAudioMute(Z)V

    iget-object v4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    invoke-virtual {v4, v2, v1}, Lcom/xiaomi/mediaprocess/MediaEffectGraph;->AddSourceAndEffectByTemplate([Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    invoke-virtual {p0, v0, v3}, Lcom/xiaomi/mediaprocess/MediaEffectGraph;->AddAudioTrack(Ljava/lang/String;Z)J

    return-void
.end method

.method private resetFlag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaRecorderRecording:Z

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mNeedRequestRender:Z

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mNeedStop:Z

    return-void
.end method

.method private restoreWorkSpace()V
    .locals 0

    return-void
.end method

.method private saveWorkSpace()V
    .locals 0

    return-void
.end method

.method private startCountDown(J)V
    .locals 11

    const-wide/16 v0, 0x64

    div-long v4, p1, v0

    sget-object v2, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startCountDown: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-long p1, v4, v0

    sub-long/2addr p1, v0

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x64

    invoke-static/range {v2 .. v10}, Lio/reactivex/Observable;->intervalRange(JJJJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$5;-><init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;J)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private updateRecordingTime(J)V
    .locals 2

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%.1fS"

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->liveVVProcess:Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->updateRecordingTime(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public OnNeedStopRecording()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TAG:Ljava/lang/String;

    const-string v1, "OnNeedStopRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl$4;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$4;-><init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public OnNotifyRender()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TAG:Ljava/lang/String;

    const-string v1, "OnNotifyRender"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mNeedRequestRender:Z

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    return-void
.end method

.method public OnRecordFailed()V
    .locals 1

    sget-object p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TAG:Ljava/lang/String;

    const-string v0, "OnRecordFailed"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OnRecordFinish(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mTempVideoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnRecordFinish | s: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;-><init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public canFinishRecording()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mTempVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVItem;->getEssentialFragmentSize()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public combineVideoAudio(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->StopPreView()V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->prepareEffectGraph()V

    new-instance v0, Lcom/xiaomi/mediaprocess/MediaComposeFile;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    invoke-direct {v0, v1}, Lcom/xiaomi/mediaprocess/MediaComposeFile;-><init>(Lcom/xiaomi/mediaprocess/MediaEffectGraph;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mComposeFile:Lcom/xiaomi/mediaprocess/MediaComposeFile;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mComposeFile:Lcom/xiaomi/mediaprocess/MediaComposeFile;

    const/16 v1, 0x780

    const/16 v2, 0x438

    const/high16 v3, 0x1e00000

    const/16 v4, 0x1e

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/mediaprocess/MediaComposeFile;->ConstructMediaComposeFile(IIII)Z

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mComposeFile:Lcom/xiaomi/mediaprocess/MediaComposeFile;

    new-instance v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl$7;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$7;-><init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mediaprocess/MediaComposeFile;->SetComposeNotify(Lcom/xiaomi/mediaprocess/EffectNotifier;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mComposeFile:Lcom/xiaomi/mediaprocess/MediaComposeFile;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mediaprocess/MediaComposeFile;->SetComposeFileName(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mComposeFile:Lcom/xiaomi/mediaprocess/MediaComposeFile;

    invoke-virtual {p0}, Lcom/xiaomi/mediaprocess/MediaComposeFile;->BeginComposeFile()V

    return-void
.end method

.method public deleteLastFragment()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mTempVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mTempVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mTempVideoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mTempVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mTempVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentIndex:I

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->liveVVProcess:Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/vv/VVItem;->getDuration(I)J

    move-result-wide v2

    neg-long v2, v2

    invoke-interface {v1, v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->onRecordingFragmentUpdate(IJ)V

    return-void
.end method

.method public getAlgorithmPreviewSize(Ljava/util/List;)Lcom/android/camera/CameraSize;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->getPreviewRatio()F

    move-result p0

    float-to-double v0, p0

    const/16 p0, 0xf00

    const/16 v2, 0x870

    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public getAuthResult()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNextRecordStep()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public getPreviewRatio()F
    .locals 0

    const p0, 0x3fe38e38

    return p0
.end method

.method public getSegmentPath(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mTempVideoList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public initResource()V
    .locals 0

    sget-object p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->VV_DIR:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->makeDir(Ljava/lang/String;)Z

    sget-object p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->VV_DIR:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->makeSureNoMedia(Ljava/lang/String;)V

    sget-object p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->makeDir(Ljava/lang/String;)Z

    sget-object p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->WORKSPACE_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->makeDir(Ljava/lang/String;)Z

    sget-object p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->SEGMENTS_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->makeDir(Ljava/lang/String;)Z

    sget-object p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->COMPOSE_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->makeDir(Ljava/lang/String;)Z

    return-void
.end method

.method public isProcessorReady()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRecording()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaRecorderRecording:Z

    return p0
.end method

.method public isRecordingPaused()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaRecorderRecordingPaused:Z

    return p0
.end method

.method public onBackPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDrawFrame(Landroid/graphics/Rect;IIZ)V
    .locals 1

    iget-object p4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mOpenGlRender:Lcom/xiaomi/mediaprocess/OpenGlRender;

    if-nez p4, :cond_0

    new-instance p4, Lcom/xiaomi/mediaprocess/OpenGlRender;

    invoke-direct {p4}, Lcom/xiaomi/mediaprocess/OpenGlRender;-><init>()V

    iput-object p4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mOpenGlRender:Lcom/xiaomi/mediaprocess/OpenGlRender;

    new-instance p4, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mOpenGlRender:Lcom/xiaomi/mediaprocess/OpenGlRender;

    invoke-direct {p4, v0}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;-><init>(Lcom/xiaomi/mediaprocess/OpenGlRender;)V

    iput-object p4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;

    iget-object p4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;

    invoke-virtual {p4}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->init()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->isRecording()Z

    move-result p4

    if-nez p4, :cond_1

    return-void

    :cond_1
    iget-boolean p4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mNeedRequestRender:Z

    if-nez p4, :cond_2

    return-void

    :cond_2
    const/high16 p4, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p4, 0x4000

    invoke-static {p4}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object p4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->bind(Landroid/graphics/Rect;II)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mOpenGlRender:Lcom/xiaomi/mediaprocess/OpenGlRender;

    invoke-virtual {p0}, Lcom/xiaomi/mediaprocess/OpenGlRender;->RenderFrame()V

    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 0

    iget p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentOrientation:I

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentOrientation:I

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    const/16 p1, 0xb4

    invoke-virtual {p0, p1}, Lcom/xiaomi/mediaprocess/MediaEffectCamera;->SetOrientation(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->isRecording()Z

    move-result p2

    const/4 p3, 0x1

    const-wide/16 v0, -0x1

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mNeedStop:Z

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v2, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mLastFrameTime:J

    cmp-long p2, v2, v0

    if-nez p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mLastFrameTime:J

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mLastFrameTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "frame time\uff1a"

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mLastFrameTime:J

    :goto_0
    sget-object p2, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mPreviewRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p2

    const/4 v0, 0x4

    if-le p2, v0, :cond_2

    sget-object p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TAG:Ljava/lang/String;

    const-string p1, "queue full"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_2
    new-instance p2, Lcom/android/camera/module/impl/component/LiveSubVVImpl$PreviewImageRunnable;

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    invoke-direct {p2, p1, p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$PreviewImageRunnable;-><init>(Landroid/media/Image;Lcom/xiaomi/mediaprocess/MediaEffectCamera;)V

    sget-object p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->PREVIEW_SAVER_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    iput-wide v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mLastFrameTime:J

    return p3
.end method

.method public onRecordingNewFragmentFinished()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->resetFlag()V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->stopRecording()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mRecordingTimerDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mRecordingTimerDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->liveVVProcess:Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    iget v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentIndex:I

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/vv/VVItem;->getDuration(I)J

    move-result-wide v2

    neg-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->onRecordingFragmentUpdate(IJ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->liveVVProcess:Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    iget v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentIndex:I

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/vv/VVItem;->getDuration(I)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->onRecordingFragmentUpdate(IJ)V

    :goto_0
    return-void
.end method

.method public pausePlay()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    invoke-virtual {p0}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->PausePreView()V

    return-void
.end method

.method public prepare()V
    .locals 7

    const-string v0, "vvc++_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "vvmediaeditor"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mContext:Landroid/content/Context;

    const/16 v1, 0x7b

    invoke-static {v0, v1}, Lcom/xiaomi/utils/SystemUtil;->Init(Landroid/content/Context;I)V

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mContext:Landroid/content/Context;

    const-string v1, "vv/watermark.zip"

    sget-object v2, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TEMPLATE_PATH:Ljava/lang/String;

    const/16 v3, 0x2000

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/Util;->verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getCurrentVVItem()Lcom/android/camera/fragment/vv/VVItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->prepare(Lcom/android/camera/fragment/vv/VVItem;)V

    new-instance v0, Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    invoke-direct {v0}, Lcom/xiaomi/mediaprocess/MediaEffectCamera;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    const/16 v2, 0x780

    const/16 v3, 0x438

    const/high16 v4, 0x1400000

    const/16 v5, 0x1e

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/mediaprocess/MediaEffectCamera;->ConstructMediaEffectCamera(IIIILcom/xiaomi/mediaprocess/EffectCameraNotifier;)V

    return-void
.end method

.method public prepare(Lcom/android/camera/fragment/vv/VVItem;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/observeable/VMProcessing;

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/VMProcessing;->getTempVideoList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mTempVideoList:Ljava/util/List;

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public release()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->resetFlag()V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->stopRecording()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->StopPreView()V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->saveWorkSpace()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mRecordingTimerDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_2
    invoke-static {}, Lcom/xiaomi/utils/SystemUtil;->UnInit()V

    return-void
.end method

.method public releaseRender()V
    .locals 0

    return-void
.end method

.method public resumePlay()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    invoke-virtual {p0}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->ResumePreView()Z

    return-void
.end method

.method public startPlay(Landroid/view/Surface;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->prepareEffectGraph()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mPlayFinished:Z

    new-instance v0, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    invoke-direct {v0, v1}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;-><init>(Lcom/xiaomi/mediaprocess/MediaEffectGraph;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->ConstructMediaPlayer()Z

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    new-instance v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl$6;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$6;-><init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->SetPlayerNotify(Lcom/xiaomi/mediaprocess/EffectNotifier;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->SetViewSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    sget-object v0, Lcom/xiaomi/mediaprocess/EffectMediaPlayer$SurfaceGravity;->SurfaceGravityResizeAspectFit:Lcom/xiaomi/mediaprocess/EffectMediaPlayer$SurfaceGravity;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->setGravity(Lcom/xiaomi/mediaprocess/EffectMediaPlayer$SurfaceGravity;II)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->SetPlayLoop(Z)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    invoke-virtual {p1, v0}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->SetGraphLoop(Z)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    invoke-virtual {p0}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->StartPreView()V

    return-void
.end method

.method public startPreview(IIILcom/android/camera/CameraScreenNail;)V
    .locals 0

    invoke-virtual {p4, p0}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    return-void
.end method

.method public startRecordingNewFragment()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->startRecordingNextFragment()V

    return-void
.end method

.method public startRecordingNextFragment()V
    .locals 13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaRecorderRecordingPaused:Z

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    new-instance v2, Lcom/android/camera/module/impl/component/LiveSubVVImpl$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$1;-><init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->liveVVProcess:Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xe6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    iput-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->liveVVProcess:Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mTempVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentIndex:I

    iget v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentIndex:I

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->SEGMENTS_PATH:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteSubFiles(Ljava/lang/String;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget v2, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/vv/VVItem;->getDuration(I)J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v10, v4, Lcom/android/camera/fragment/vv/VVItem;->musicPath:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/camera/fragment/vv/VVItem;->configJsonPath:Ljava/lang/String;

    iget-object v9, v4, Lcom/android/camera/fragment/vv/VVItem;->filterPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->liveVVProcess:Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    iget v5, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentIndex:I

    invoke-interface {v4, v5, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->onRecordingNewFragmentStart(IJ)V

    const-wide/16 v4, 0x0

    move-wide v11, v4

    :goto_0
    iget v4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentIndex:I

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {v4, v0}, Lcom/android/camera/fragment/vv/VVItem;->getDuration(I)J

    move-result-wide v4

    add-long/2addr v11, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start : !!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    iget v6, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentIndex:I

    sget-object v7, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->SEGMENTS_PATH:Ljava/lang/String;

    invoke-virtual/range {v5 .. v12}, Lcom/xiaomi/mediaprocess/MediaEffectCamera;->StartRecording(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-boolean v3, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaRecorderRecording:Z

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->startCountDown(J)V

    return-void
.end method

.method public stopRecording()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    invoke-virtual {p0}, Lcom/xiaomi/mediaprocess/MediaEffectCamera;->StopRecording()V

    return-void
.end method

.method public trackVideoParams()V
    .locals 0

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->release()V

    return-void
.end method
