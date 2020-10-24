.class public Lcom/android/camera/module/impl/component/LiveSubVVImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;
.implements Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;
.implements Lcom/xiaomi/mediaprocess/EffectCameraNotifier;


# static fields
.field private static final TAG:Ljava/lang/String; = "LiveSubVVImpl"

.field public static final TEMPLATE_PATH:Ljava/lang/String;

.field public static final VV_DIR:Ljava/lang/String;

.field public static final WATERMARK_PATH:Ljava/lang/String;

.field public static final WORKSPACE_PATH:Ljava/lang/String;


# instance fields
.field private RGBColor:Ljava/nio/ByteBuffer;

.field private final TABLESIZE:I

.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mAudioController:Lcom/android/camera/module/AudioController;

.field private mCameraFacing:I

.field private mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field private mComposeFile:Lcom/xiaomi/mediaprocess/MediaComposeFile;

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mCurrentOrientation:I

.field private mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

.field private mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

.field private mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

.field private mHandler:Landroid/os/Handler;

.field private mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mLiveVVProcess:Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

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

.field private mValidTime:J

.field private mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->ROOT_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vv/"

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

    sget-object v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "watermark.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->WATERMARK_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentOrientation:I

    const/16 v0, 0x200

    iput v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TABLESIZE:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->RGBColor:Ljava/nio/ByteBuffer;

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

    new-instance p1, Lcom/android/camera/module/AudioController;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/module/AudioController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mAudioController:Lcom/android/camera/module/AudioController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)Lcom/android/camera/ActivityBase;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mActivity:Lcom/android/camera/ActivityBase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)Lcom/android/camera/ui/V6CameraGLSurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mLiveVVProcess:Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)Lcom/android/camera/data/observeable/VMProcessing;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->notifyModuleRecordingFinish()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/camera/module/impl/component/LiveSubVVImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mNeedStop:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/camera/module/impl/component/LiveSubVVImpl;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mRecordingTimerDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/module/impl/component/LiveSubVVImpl;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->updateRecordingTime(J)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/camera/module/impl/component/LiveSubVVImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mPlayFinished:Z

    return p1
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/LiveSubVVImpl;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private initFilter(Ljava/lang/String;)V
    .locals 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x200

    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    return-void

    :cond_2
    const/high16 v2, 0x40000

    :try_start_1
    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_5

    move v5, v3

    :goto_2
    if-ge v5, v1, :cond_4

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    goto :goto_3

    :cond_3
    const/16 v7, 0xff

    :goto_3
    mul-int/lit16 v7, v7, 0x100

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    add-int/2addr v7, v8

    mul-int/lit16 v7, v7, 0x100

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v8

    add-int/2addr v7, v8

    mul-int/lit16 v7, v7, 0x100

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    add-int/2addr v7, v6

    mul-int/lit16 v6, v4, 0x200

    add-int/2addr v6, v5

    aput v7, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    const/high16 v1, 0x800000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->RGBColor:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->RGBColor:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->RGBColor:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->RGBColor:Ljava/nio/ByteBuffer;

    :goto_4
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    return-void
.end method

.method private makeSureVVProcess()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mLiveVVProcess:Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mLiveVVProcess:Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    :cond_0
    return-void
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

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/LiveModuleSubVV;->stopVideoRecording(Z)V

    :cond_0
    return-void
.end method

.method private prepareEffectGraph(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V
    .locals 4

    iget-object v0, p1, Lcom/android/camera/fragment/vv/VVItem;->musicPath:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getFragments()Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p2, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->WATERMARK_PATH:Ljava/lang/String;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    new-array v2, p2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-instance v2, Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    invoke-direct {v2}, Lcom/xiaomi/mediaprocess/MediaEffectGraph;-><init>()V

    iput-object v2, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    invoke-virtual {v2}, Lcom/xiaomi/mediaprocess/MediaEffectGraph;->ConstructMediaEffectGraph()V

    iget-object v2, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/xiaomi/mediaprocess/MediaEffectGraph;->SetAudioMute(Z)V

    iget-object v2, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    iget-object p1, p1, Lcom/android/camera/resource/BaseResourceItem;->baseArchivesFolder:Ljava/lang/String;

    invoke-virtual {v2, v1, p1}, Lcom/xiaomi/mediaprocess/MediaEffectGraph;->AddSourceAndEffectByTemplate([Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/mediaprocess/MediaEffectGraph;->AddAudioTrack(Ljava/lang/String;Z)J

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

    new-instance v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$7;-><init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;J)V

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

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mLiveVVProcess:Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

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

    new-instance v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl$6;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$6;-><init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V

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

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mValidTime:J

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
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getTargetThumbPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/impl/component/LiveSubVVImpl$4;

    invoke-direct {v2, p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$4;-><init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$3;-><init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Single;->subscribe()Lio/reactivex/disposables/Disposable;

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

    new-instance v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl$5;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$5;-><init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public canFinishRecording()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->completeSize()I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVItem;->getEssentialFragmentSize()I

    move-result p0

    if-lt v0, p0, :cond_0

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
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->prepareEffectGraph(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V

    new-instance v0, Lcom/xiaomi/mediaprocess/MediaComposeFile;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    invoke-direct {v0, v1}, Lcom/xiaomi/mediaprocess/MediaComposeFile;-><init>(Lcom/xiaomi/mediaprocess/MediaEffectGraph;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mComposeFile:Lcom/xiaomi/mediaprocess/MediaComposeFile;

    const/16 v1, 0x780

    const/16 v2, 0x440

    const/high16 v3, 0x1400000

    const/16 v4, 0x1e

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/mediaprocess/MediaComposeFile;->ConstructMediaComposeFile(IIII)Z

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mComposeFile:Lcom/xiaomi/mediaprocess/MediaComposeFile;

    new-instance v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl$9;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$9;-><init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mediaprocess/MediaComposeFile;->SetComposeNotify(Lcom/xiaomi/mediaprocess/EffectNotifier;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mComposeFile:Lcom/xiaomi/mediaprocess/MediaComposeFile;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mediaprocess/MediaComposeFile;->SetComposeFileName(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mComposeFile:Lcom/xiaomi/mediaprocess/MediaComposeFile;

    invoke-virtual {p0}, Lcom/xiaomi/mediaprocess/MediaComposeFile;->BeginComposeFile()V

    return-void
.end method

.method public deleteLastFragment()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->completeSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v1}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->completeSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->remove(I)V

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v1}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->completeSize()I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentIndex:I

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->makeSureVVProcess()V

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mLiveVVProcess:Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/vv/VVItem;->getDuration(I)J

    move-result-wide v2

    neg-long v2, v2

    invoke-interface {v1, v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->onRecordingFragmentUpdate(IJ)V

    return-void
.end method

.method public getAlgorithmPreviewSize(Ljava/util/List;)Lcom/android/camera/CameraSize;
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->getPreviewRatio()F

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

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public getNextRecordStep()I
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->isRecording()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mValidTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mValidTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->canFinishRecording()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public getPreviewRatio()F
    .locals 0

    const p0, 0x3fe38e38

    return p0
.end method

.method public getSegmentPath(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getFragmentAt(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initPreview(IIILcom/android/camera/CameraScreenNail;)V
    .locals 2

    iput p3, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCameraFacing:I

    iget-object p3, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mOpenGlRender:Lcom/xiaomi/mediaprocess/OpenGlRender;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mValidTime:J

    :cond_0
    new-instance p3, Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object p3, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p3, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance p2, Lcom/android/camera/module/impl/component/LiveSubVVImpl$1;

    invoke-direct {p2, p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$1;-><init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    invoke-virtual {p4, p0}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    return-void
.end method

.method public initResource()V
    .locals 0

    sget-object p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->VV_DIR:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->makeDir(Ljava/lang/String;)Z

    sget-object p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    sget-object p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->WORKSPACE_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

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
    .locals 5

    iget-object p4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result p4

    if-eqz p4, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mOpenGlRender:Lcom/xiaomi/mediaprocess/OpenGlRender;

    const/4 v0, 0x0

    if-nez p4, :cond_1

    new-instance p4, Lcom/xiaomi/mediaprocess/OpenGlRender;

    invoke-direct {p4}, Lcom/xiaomi/mediaprocess/OpenGlRender;-><init>()V

    iput-object p4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mOpenGlRender:Lcom/xiaomi/mediaprocess/OpenGlRender;

    invoke-static {}, Lcom/android/camera/Display;->getWindowHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    invoke-virtual {p4, v0, v1, v3, v2}, Lcom/xiaomi/mediaprocess/OpenGlRender;->SetWindowSize(IIII)V

    new-instance p4, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mOpenGlRender:Lcom/xiaomi/mediaprocess/OpenGlRender;

    invoke-direct {p4, v1}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;-><init>(Lcom/xiaomi/mediaprocess/OpenGlRender;)V

    iput-object p4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->RGBColor:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v1}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->setFilterRGBColor(Ljava/nio/ByteBuffer;)V

    iget-object p4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p4, v1}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->init(Landroid/graphics/SurfaceTexture;)V

    :cond_1
    iget-object p4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;

    invoke-virtual {p4}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->updateTexImage()V

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p4, 0x4000

    invoke-static {p4}, Landroid/opengl/GLES20;->glClear(I)V

    iget-wide v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mValidTime:J

    const-wide/16 v3, 0x0

    cmp-long p4, v1, v3

    if-gtz p4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mValidTime:J

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->isRecording()Z

    move-result p4

    if-eqz p4, :cond_5

    iget-boolean p4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mNeedStop:Z

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    iget-object p4, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->bind(Landroid/graphics/Rect;II)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p2}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide p2

    const-wide/32 v0, 0xf4240

    div-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/mediaprocess/MediaEffectCamera;->NeedProcessTexture(J)V

    :cond_4
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mOpenGlRender:Lcom/xiaomi/mediaprocess/OpenGlRender;

    invoke-virtual {p0}, Lcom/xiaomi/mediaprocess/OpenGlRender;->RenderFrame()V

    return-void

    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMiGLSurfaceViewRender:Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;

    invoke-static {}, Lcom/android/camera/Display;->getWindowHeight()I

    move-result p2

    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    iget p4, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p1

    invoke-virtual {p0, v0, p2, p4, p3}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->DrawCameraPreview(IIII)V

    :cond_6
    :goto_1
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

    :cond_2
    :goto_0
    return-void
.end method

.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onRecordingNewFragmentFinished()V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->makeSureVVProcess()V

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
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mLiveVVProcess:Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    iget v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentIndex:I

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/vv/VVItem;->getDuration(I)J

    move-result-wide v2

    neg-long v2, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mLiveVVProcess:Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    iget v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentIndex:I

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/vv/VVItem;->getDuration(I)J

    move-result-wide v2

    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->onRecordingFragmentUpdate(IJ)V

    return-void
.end method

.method public pausePlay()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    invoke-virtual {p0}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->PausePreView()V

    return-void
.end method

.method public prepare()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vvc++_shared"

    invoke-static {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vvffmpeg"

    invoke-static {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vvmediaeditor"

    invoke-static {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mContext:Landroid/content/Context;

    const/16 v1, 0x7b

    invoke-static {v0, v1}, Lcom/xiaomi/vlog/SystemUtil;->Init(Landroid/content/Context;I)V

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

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/xiaomi/mediaprocess/MediaEffectCamera;->SetOrientation(I)V

    iget-object v2, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    const/16 v3, 0x780

    const/16 v4, 0x438

    const/high16 v5, 0x1e00000

    const/16 v6, 0x1e

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/mediaprocess/MediaEffectCamera;->ConstructMediaEffectCamera(IIIILcom/xiaomi/mediaprocess/EffectCameraNotifier;)V

    return-void
.end method

.method public prepare(Lcom/android/camera/fragment/vv/VVItem;)V
    .locals 3

    iput-object p1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMProcessing;

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    sget-object v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->WORKSPACE_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v2, v2, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/observeable/VMProcessing;->getCurrentWorkspaceItem(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    iget-object p1, p1, Lcom/android/camera/fragment/vv/VVItem;->filterPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->initFilter(Ljava/lang/String;)V

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
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->resetFlag()V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->stopRecording()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TAG:Ljava/lang/String;

    const-string v2, "release mediaCamera"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    invoke-virtual {v0}, Lcom/xiaomi/mediaprocess/MediaEffectCamera;->DestructMediaEffectCamera()V

    iput-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TAG:Ljava/lang/String;

    const-string v2, "release mediaPlayer"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->StopPreView()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->DestructMediaPlayer()V

    iput-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mComposeFile:Lcom/xiaomi/mediaprocess/MediaComposeFile;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TAG:Ljava/lang/String;

    const-string v2, "release composeFile"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mComposeFile:Lcom/xiaomi/mediaprocess/MediaComposeFile;

    invoke-virtual {v0}, Lcom/xiaomi/mediaprocess/MediaComposeFile;->CancelComposeFile()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mComposeFile:Lcom/xiaomi/mediaprocess/MediaComposeFile;

    invoke-virtual {v0}, Lcom/xiaomi/mediaprocess/MediaComposeFile;->DestructMediaComposeFile()V

    iput-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mComposeFile:Lcom/xiaomi/mediaprocess/MediaComposeFile;

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TAG:Ljava/lang/String;

    const-string v2, "release mediaEffectGraph"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    invoke-virtual {v0}, Lcom/xiaomi/mediaprocess/MediaEffectGraph;->DestructMediaEffectGraph()V

    iput-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->saveWorkSpace()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mRecordingTimerDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_5
    invoke-static {}, Lcom/xiaomi/vlog/SystemUtil;->UnInit()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    new-instance v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl$2;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$2;-><init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

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

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->prepareEffectGraph(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mPlayFinished:Z

    new-instance v0, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaEffectGraph:Lcom/xiaomi/mediaprocess/MediaEffectGraph;

    invoke-direct {v0, v1}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;-><init>(Lcom/xiaomi/mediaprocess/MediaEffectGraph;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/mediaprocess/EffectMediaPlayer;->ConstructMediaPlayer()Z

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mEffectMediaPlayer:Lcom/xiaomi/mediaprocess/EffectMediaPlayer;

    new-instance v1, Lcom/android/camera/module/impl/component/LiveSubVVImpl$8;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl$8;-><init>(Lcom/android/camera/module/impl/component/LiveSubVVImpl;)V

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

.method public startRecordingNewFragment()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->startRecordingNextFragment()V

    return-void
.end method

.method public startRecordingNextFragment()V
    .locals 12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaRecorderRecordingPaused:Z

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mAudioController:Lcom/android/camera/module/AudioController;

    invoke-virtual {v1}, Lcom/android/camera/module/AudioController;->stopAudio()V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->makeSureVVProcess()V

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v1}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->completeSize()I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentIndex:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    iget-object v1, v1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFolderPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget v2, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/vv/VVItem;->getDuration(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v4, v3, Lcom/android/camera/fragment/vv/VVItem;->musicPath:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/camera/fragment/vv/VVItem;->configJsonPath:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/camera/fragment/vv/VVItem;->filterPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mLiveVVProcess:Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    iget v7, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentIndex:I

    iget-object v8, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-interface {v6, v7, v1, v2, v8}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->onRecordingNewFragmentStart(IJLcom/android/camera/fragment/vv/VVWorkspaceItem;)V

    const-wide/16 v6, 0x0

    move-wide v10, v6

    :goto_0
    iget v6, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentIndex:I

    if-ge v0, v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v6, v6, Lcom/android/camera/fragment/vv/VVItem;->speedList:Ljava/util/List;

    if-nez v6, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    :goto_1
    long-to-float v7, v10

    iget-object v8, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {v8, v0}, Lcom/android/camera/fragment/vv/VVItem;->getDuration(I)J

    move-result-wide v8

    long-to-float v8, v8

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    float-to-long v10, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    if-eqz v0, :cond_3

    const/16 v3, 0x5a

    invoke-virtual {v0, v3}, Lcom/xiaomi/mediaprocess/MediaEffectCamera;->SetOrientation(I)V

    iget-object v6, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    iget v7, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentIndex:I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    iget-object v8, v0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFolderPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v9, v0, Lcom/android/camera/resource/BaseResourceItem;->baseArchivesFolder:Ljava/lang/String;

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/mediaprocess/MediaEffectCamera;->StartRecording(ILjava/lang/String;Ljava/lang/String;J)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaRecorderRecording:Z

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->startCountDown(J)V

    return-void
.end method

.method public stopRecording()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mMediaCamera:Lcom/xiaomi/mediaprocess/MediaEffectCamera;

    invoke-virtual {v0}, Lcom/xiaomi/mediaprocess/MediaEffectCamera;->StopRecording()V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mAudioController:Lcom/android/camera/module/AudioController;

    invoke-virtual {p0}, Lcom/android/camera/module/AudioController;->restoreAudio()V

    return-void
.end method

.method public trackVideoParams()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v0, v0, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    iget p0, p0, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->mCameraFacing:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVRecordingParams(Ljava/lang/String;Z)V

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
