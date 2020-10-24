.class public Lcom/android/camera/module/impl/component/FilmDreamImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$FilmDreamConfig;
.implements Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;
.implements Lcom/xiaomi/inceptionmediaprocess/EffectCameraNotifier;


# static fields
.field public static final FILM_DIR:Ljava/lang/String;

.field public static final SEGMENTS_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FilmDreamImpl"

.field public static final TEMPLATE_PATH:Ljava/lang/String;

.field public static final WORKSPACE_PATH:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mAudioController:Lcom/android/camera/module/AudioController;

.field private mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field private mComposeFile:Lcom/xiaomi/inceptionmediaprocess/MediaComposeFile;

.field private mContext:Landroid/content/Context;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mCurrentFilmItem:Lcom/android/camera/fragment/film/FilmItem;

.field private mCurrentOrientation:I

.field private mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

.field private mFilmDreamProcess:Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

.field private mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

.field private mHandler:Landroid/os/Handler;

.field private volatile mInited:Z

.field private mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

.field private mMediaEffectGraph:Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

.field private mMediaRecorderRecording:Z

.field private mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

.field private mNeedRequestRender:Z

.field private mNeedStop:Z

.field private mOpenGlRender:Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

.field private mPlayFinished:Z

.field private mStartTime:J

.field private mTempVideoList:Ljava/util/List;

.field private mTotalRecordingTime:J

.field private mTotalTime:J

.field private mValidTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->ROOT_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/film/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->FILM_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FilmDreamImpl;->FILM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "template/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TEMPLATE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FilmDreamImpl;->FILM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "workspace/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->WORKSPACE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FilmDreamImpl;->WORKSPACE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "segments"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->SEGMENTS_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2904

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTotalRecordingTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCurrentOrientation:I

    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/camera/module/AudioController;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/module/AudioController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mAudioController:Lcom/android/camera/module/AudioController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/ActivityBase;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mActivity:Lcom/android/camera/ActivityBase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/ui/V6CameraGLSurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcess:Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->notifyModuleRecordingFinish()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/camera/module/impl/component/FilmDreamImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mNeedStop:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/camera/module/impl/component/FilmDreamImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mPlayFinished:Z

    return p1
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string p0, "copyFile error"

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p2, 0x1000

    :try_start_2
    new-array p2, p2, [B

    :goto_0
    invoke-virtual {v2, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    sget-object p2, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object p1, v1

    :goto_2
    move-object v1, v2

    goto :goto_6

    :catch_3
    move-exception p2

    move-object p1, v1

    :goto_3
    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception p2

    move-object p1, v1

    goto :goto_6

    :catch_4
    move-exception p2

    move-object p1, v1

    :goto_4
    :try_start_5
    sget-object v2, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, p0, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_2
    if-eqz p1, :cond_3

    :try_start_7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    sget-object p2, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_5
    return v0

    :catchall_3
    move-exception p2

    :goto_6
    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_4
    if-eqz p1, :cond_5

    :try_start_9
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    move-exception p1

    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_7
    throw p2

    :cond_6
    :goto_8
    return v0
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/FilmDreamImpl;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private makeSureFilmDreamProcess()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcess:Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    iput-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcess:Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    :cond_0
    return-void
.end method

.method private notifyModuleRecordingFinish()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->resetFlag()V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xd4

    if-ne v0, v1, :cond_0

    check-cast p0, Lcom/android/camera/module/FilmDreamModule;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/module/FilmDreamModule;->stopVideoRecording(ZZ)V

    :cond_0
    return-void
.end method

.method private prepareEffectGraph()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTempVideoList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v2, Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

    invoke-direct {v2}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;-><init>()V

    iput-object v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaEffectGraph:Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

    invoke-virtual {v2}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;->ConstructMediaEffectGraph()V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaEffectGraph:Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;->AddSourcesAndEffectBySourcesPath([Ljava/lang/String;[F)V

    return-void
.end method

.method private resetFlag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaRecorderRecording:Z

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mNeedRequestRender:Z

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mNeedStop:Z

    return-void
.end method

.method private setTotalTime()V
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTotalTime:J

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    iget-wide v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTotalTime:J

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->setTotalTime(J)V

    return-void
.end method

.method private startRecordingTime()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v7, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/android/camera/module/impl/component/FilmDreamImpl$3;

    iget-wide v3, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTotalRecordingTime:J

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/module/impl/component/FilmDreamImpl$3;-><init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;JJLcom/android/camera/protocol/ModeProtocol$TopAlert;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mStartTime:J

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public OnNeedStopRecording()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    const-string v1, "OnNeedStopRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/impl/component/FilmDreamImpl$5;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl$5;-><init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public OnNotifyRender()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    const-string v1, "OnNotifyRender"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mNeedRequestRender:Z

    return-void
.end method

.method public OnRecordFailed()V
    .locals 1

    sget-object p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    const-string v0, "OnRecordFailed"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OnRecordFinish(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mValidTime:J

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->setTotalTime()V

    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnRecordFinish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mTotalTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTempVideoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/module/impl/component/FilmDreamImpl$4;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl$4;-><init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public OnRecordFinish(Ljava/lang/String;JJ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->OnRecordFinish(Ljava/lang/String;)V

    return-void
.end method

.method public canFinishRecording()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTempVideoList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canRecordingStop()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public combineVideoAudio(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->StopPreView()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTempVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTempVideoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_1

    :cond_2
    const/16 p1, 0x9

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->updateState(I)V

    return-void
.end method

.method public getAlgorithmPreviewSize(Ljava/util/List;)Lcom/android/camera/CameraSize;
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->getPreviewRatio()F

    move-result p0

    float-to-double v0, p0

    const/16 p0, 0xb0

    const/16 v2, 0x90

    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public getAuthResult()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public getPreviewRatio()F
    .locals 0

    const p0, 0x3fe38e38

    return p0
.end method

.method public getRecordSpeed()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getSegmentPath(I)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/io/File;

    sget-object p1, Lcom/android/camera/module/impl/component/FilmDreamImpl;->SEGMENTS_PATH:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getStartRecordingTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mStartTime:J

    return-wide v0
.end method

.method public getTotalRecordingTime()J
    .locals 2

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {p0}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->getTotalTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public initPreview(IIILcom/android/camera/CameraScreenNail;)V
    .locals 2

    iget-object p3, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mOpenGlRender:Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mValidTime:J

    :cond_0
    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInited:Z

    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p3}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance p2, Lcom/android/camera/module/impl/component/FilmDreamImpl$1;

    invoke-direct {p2, p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl$1;-><init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    invoke-virtual {p4, p0}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    return-void
.end method

.method public initResource()V
    .locals 0

    sget-object p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->FILM_DIR:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->makeDir(Ljava/lang/String;)Z

    sget-object p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    sget-object p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->WORKSPACE_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    sget-object p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->SEGMENTS_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    return-void
.end method

.method public isInited()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInited:Z

    return p0
.end method

.method public isProcessorReady()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRecording()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaRecorderRecording:Z

    return p0
.end method

.method public onBackPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDrawFrame(Landroid/graphics/Rect;IIZ)V
    .locals 5

    iget-object p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result p4

    if-eqz p4, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mOpenGlRender:Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

    const/4 v0, 0x0

    if-nez p4, :cond_1

    new-instance p4, Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

    invoke-direct {p4}, Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;-><init>()V

    iput-object p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mOpenGlRender:Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

    new-instance p4, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mOpenGlRender:Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

    invoke-direct {p4, v1}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;-><init>(Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;)V

    iput-object p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p4, v1}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->init(Landroid/graphics/SurfaceTexture;)V

    iget-object p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mOpenGlRender:Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

    invoke-static {}, Lcom/android/camera/Display;->getWindowHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    invoke-virtual {p4, v0, v1, v3, v2}, Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;->SetWindowSize(IIII)V

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInited:Z

    :cond_1
    iget-object p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    invoke-virtual {p4}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->updateTexImage()V

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p4, 0x4000

    invoke-static {p4}, Landroid/opengl/GLES20;->glClear(I)V

    iget-wide v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mValidTime:J

    const-wide/16 v3, 0x0

    cmp-long p4, v1, v3

    if-gtz p4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mValidTime:J

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->isRecording()Z

    move-result p4

    if-eqz p4, :cond_4

    iget-boolean p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mNeedStop:Z

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    iget-object p4, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->bind(Landroid/graphics/Rect;II)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    iget-object p2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p2}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide p2

    const-wide/32 v0, 0xf4240

    div-long/2addr p2, v0

    const/16 p4, 0xf00

    const/16 v0, 0x870

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->NeedProcessTexture(JII)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mOpenGlRender:Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

    invoke-virtual {p0}, Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;->RenderFrame()V

    return-void

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    invoke-static {}, Lcom/android/camera/Display;->getWindowHeight()I

    move-result p2

    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    iget p4, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p1

    invoke-virtual {p0, v0, p2, p4, p3}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->DrawCameraPreview(IIII)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 0

    iget p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCurrentOrientation:I

    add-int/2addr p2, p3

    rem-int/lit16 p2, p2, 0x168

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCurrentOrientation:I

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->SetRotateAngle(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public pausePlay()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->PausePreView()V

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 7

    const-string v0, "vvc++_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "inception_video"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mContext:Landroid/content/Context;

    const/16 v1, 0x7b

    invoke-static {v0, v1}, Lcom/xiaomi/inceptionmediaprocess/SystemUtil;->Init(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getCurrentFilmItem()Lcom/android/camera/fragment/film/FilmItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCurrentFilmItem:Lcom/android/camera/fragment/film/FilmItem;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->prepare(Lcom/android/camera/fragment/vv/VVItem;)V

    new-instance v1, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    invoke-direct {v1}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    const/16 v2, 0x780

    const/16 v3, 0x438

    const/high16 v4, 0x1e00000

    const/16 v5, 0x1e

    move-object v6, p0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->ConstructMediaEffectCamera(IIIILcom/xiaomi/inceptionmediaprocess/EffectCameraNotifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    const/4 v0, 0x2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoEncoder()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "h264"

    goto :goto_0

    :cond_0
    const-string v0, "h265"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->SetEncoderType(Ljava/lang/String;)Z

    return-void
.end method

.method public prepare(Lcom/android/camera/fragment/vv/VVItem;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->getTempVideoList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mTempVideoList:Ljava/util/List;

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a2

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe8

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public release()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->resetFlag()V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->stopRecording()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    const-string v2, "release mediaCamera"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    invoke-virtual {v0}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->DestructMediaEffectCamera()V

    iput-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    const-string v2, "release mediaPlayer"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->StopPreView()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->DestructMediaPlayer()V

    iput-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaEffectGraph:Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->TAG:Ljava/lang/String;

    const-string v2, "release mediaEffectGraph"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaEffectGraph:Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

    invoke-virtual {v0}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;->DestructMediaEffectGraph()V

    iput-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaEffectGraph:Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/inceptionmediaprocess/SystemUtil;->UnInit()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    new-instance v1, Lcom/android/camera/module/impl/component/FilmDreamImpl$2;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl$2;-><init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public releaseRender()V
    .locals 0

    return-void
.end method

.method public resumePlay()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->ResumePreView()Z

    :cond_0
    return-void
.end method

.method public setRecordSpeed(I)V
    .locals 0

    return-void
.end method

.method public startPlay(Landroid/view/Surface;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->makeSureFilmDreamProcess()V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->prepareEffectGraph()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mPlayFinished:Z

    new-instance v0, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaEffectGraph:Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;

    invoke-direct {v0, v1}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;-><init>(Lcom/xiaomi/inceptionmediaprocess/MediaEffectGraph;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->ConstructMediaPlayer()Z

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    new-instance v1, Lcom/android/camera/module/impl/component/FilmDreamImpl$6;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl$6;-><init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->SetPlayerNotify(Lcom/xiaomi/inceptionmediaprocess/EffectNotifier;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->SetViewSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer$SurfaceGravity;->SurfaceGravityResizeAspectFit:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer$SurfaceGravity;

    const/16 v1, 0x438

    const/16 v2, 0x780

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->setGravity(Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer$SurfaceGravity;II)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->EnableUserAdjustRotatePlay(Z)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    invoke-virtual {p1, v0}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->SetGraphLoop(Z)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mEffectMediaPlayer:Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;

    invoke-virtual {p0}, Lcom/xiaomi/inceptionmediaprocess/EffectMediaPlayer;->StartPreView()V

    return-void
.end method

.method public startRecording()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaRecorderRecording:Z

    iget-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->updateState(I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->makeSureFilmDreamProcess()V

    sget-object v0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->SEGMENTS_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteSubFiles(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mAudioController:Lcom/android/camera/module/AudioController;

    invoke-virtual {v0}, Lcom/android/camera/module/AudioController;->stopAudio()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCurrentFilmItem:Lcom/android/camera/fragment/film/FilmItem;

    iget-object v0, v0, Lcom/android/camera/fragment/film/FilmItem;->configJsonPath:Ljava/lang/String;

    const/16 v1, 0xd4

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    iget v3, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCurrentOrientation:I

    invoke-virtual {v2, v3}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->SetOrientation(I)V

    iget-object v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mFilmDreamProcess:Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    iget v3, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCurrentOrientation:I

    add-int/lit8 v3, v3, -0x5a

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;->setThumbnailOrientation(I)V

    iget-object v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCurrentOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->SetRotateAngle(I)V

    iget-object v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    invoke-virtual {v2, v1}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->EnableFilmPicture(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    invoke-virtual {v2, v1}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->EnableFilmPicture(Z)V

    iget-object v1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    sget-object v2, Lcom/android/camera/module/impl/component/FilmDreamImpl;->SEGMENTS_PATH:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->StartRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->startRecordingTime()V

    return-void
.end method

.method public stopRecording()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->setTotalTime()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaRecorderRecording:Z

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mMediaCamera:Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;

    invoke-virtual {v0}, Lcom/xiaomi/inceptionmediaprocess/MediaEffectCamera;->StopRecording()V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl;->mAudioController:Lcom/android/camera/module/AudioController;

    invoke-virtual {p0}, Lcom/android/camera/module/AudioController;->restoreAudio()V

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

    const/16 v1, 0x3a2

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe8

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->release()V

    return-void
.end method
