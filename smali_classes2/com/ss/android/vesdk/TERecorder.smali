.class public Lcom/ss/android/vesdk/TERecorder;
.super Ljava/lang/Object;
.source "TERecorder.java"

# interfaces
.implements Le/a/a/a;
.implements Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/TERecorder$RenderPictureOnResultListenerInvoker;,
        Lcom/ss/android/vesdk/TERecorder$RenderPictureOnImageListenerInvoker;,
        Lcom/ss/android/vesdk/TERecorder$SlamDetectListenerInvoker;,
        Lcom/ss/android/vesdk/TERecorder$NativeHardEncoderInitListenerInvoker;,
        Lcom/ss/android/vesdk/TERecorder$NativeInitListenerInvoker;,
        Lcom/ss/android/vesdk/TERecorder$ConcatResultListenerInvoker;,
        Lcom/ss/android/vesdk/TERecorder$Texture;,
        Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;,
        Lcom/ss/android/vesdk/TERecorder$OnSlamDetectListener;,
        Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;,
        Lcom/ss/android/vesdk/TERecorder$IRenderCallback;
    }
.end annotation


# static fields
.field public static final PIC_STATUS_OUTPUT:I = 0x2

.field public static final PIC_STATUS_RENDER:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_RECORDING:I = 0x3

.field public static final STATE_RUNNING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TERecorder"

.field public static final TYPE_PLAY_AUDIOTRACK:I = 0x2

.field public static final TYPE_PLAY_OPENSL:I = 0x4

.field public static final TYPE_RECORD_AUDIORECODER:I = 0x1

.field public static final TYPE_RECORD_EMPTY:I = 0x0

.field public static final TYPE_RECORD_PLAY_AUDIOTRACK:I = 0x3

.field public static final TYPE_RECORD_PLAY_OPENSL:I = 0x5


# instance fields
.field private mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

.field private mAudioRecorder:Le/a/a/b;

.field private mBGMIsLoop:Z

.field private mBGMPath:Ljava/lang/String;

.field private mBGMTrimIn:I

.field private mBGMVolume:F

.field private mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

.field private mContext:Landroid/content/Context;

.field private mExternalListenerInvokerHandler:Landroid/os/Handler;

.field private mExternalNativeInitListener:Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

.field private mExternalPictureRenderListener:Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;

.field private mExternalRenderCallback:Lcom/ss/android/vesdk/TERecorder$IRenderCallback;

.field private mExternalSlamDetectListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/TERecorder$OnSlamDetectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGLCreateCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

.field private mInputTexture:Lcom/ss/android/vesdk/TERecorder$Texture;

.field private mIsCameraSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsTextureCreatedBySelf:Z

.field private mLastAudioOption:I

.field private mNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

.field private mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

.field private mPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

.field private mRecordCount:I

.field private mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

.field private mSlamDetectListener:Lcom/ss/android/medialib/listener/SlamDetectListener;

.field private volatile mState:I

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mVERuntime:Lcom/ss/android/vesdk/runtime/VERuntime;

.field private mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/vesdk/TERecorder;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mInputTexture:Lcom/ss/android/vesdk/TERecorder$Texture;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mIsCameraSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, -0x1

    iput v1, p0, Lcom/ss/android/vesdk/TERecorder;->mLastAudioOption:I

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalRenderCallback:Lcom/ss/android/vesdk/TERecorder$IRenderCallback;

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalNativeInitListener:Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalPictureRenderListener:Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalSlamDetectListeners:Ljava/util/List;

    iput v2, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    iput-boolean v2, p0, Lcom/ss/android/vesdk/TERecorder;->mIsTextureCreatedBySelf:Z

    new-instance v0, Lcom/ss/android/vesdk/TERecorder$4;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/TERecorder$4;-><init>(Lcom/ss/android/vesdk/TERecorder;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mGLCreateCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

    new-instance v0, Lcom/ss/android/vesdk/TERecorder$5;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/TERecorder$5;-><init>(Lcom/ss/android/vesdk/TERecorder;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    new-instance v0, Lcom/ss/android/vesdk/TERecorder$6;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/TERecorder$6;-><init>(Lcom/ss/android/vesdk/TERecorder;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mSlamDetectListener:Lcom/ss/android/medialib/listener/SlamDetectListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    iput-object p3, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalListenerInvokerHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object p3

    iput-object p3, p0, Lcom/ss/android/vesdk/TERecorder;->mVERuntime:Lcom/ss/android/vesdk/runtime/VERuntime;

    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorder;->mVERuntime:Lcom/ss/android/vesdk/runtime/VERuntime;

    invoke-virtual {p3, p2, p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->init(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-direct {p2, p1}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->attachNativeInvoker()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "workspace can\'t be null or empty String"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/TERecorder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalListenerInvokerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalNativeInitListener:Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalSlamDetectListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/medialib/FaceBeautyInvoker;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/TERecorder$IRenderCallback;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalRenderCallback:Lcom/ss/android/vesdk/TERecorder$IRenderCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ss/android/vesdk/TERecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorder;->mIsTextureCreatedBySelf:Z

    return p0
.end method

.method static synthetic access$402(Lcom/ss/android/vesdk/TERecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/vesdk/TERecorder;->mIsTextureCreatedBySelf:Z

    return p1
.end method

.method static synthetic access$500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/TERecorder$Texture;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mInputTexture:Lcom/ss/android/vesdk/TERecorder$Texture;

    return-object p0
.end method

.method static synthetic access$502(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/TERecorder$Texture;)Lcom/ss/android/vesdk/TERecorder$Texture;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mInputTexture:Lcom/ss/android/vesdk/TERecorder$Texture;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mIsCameraSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/VECameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->getRotation(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)I

    move-result p0

    return p0
.end method

.method private attachNativeInvoker()V
    .locals 2

    new-instance v0, Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-direct {v0}, Lcom/ss/android/medialib/FaceBeautyInvoker;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mGLCreateCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setOnOpenGLCallback(Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;)V

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setNativeInitListener2(Lcom/ss/android/medialib/listener/NativeInitListener;)V

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mSlamDetectListener:Lcom/ss/android/medialib/listener/SlamDetectListener;

    invoke-static {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->addSlamDetectListener(Lcom/ss/android/medialib/listener/SlamDetectListener;)V

    return-void
.end method

.method private checkCameraSettingsChange(Lcom/ss/android/vesdk/VECameraSettings;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VECameraSettings;->getOrientation()I

    move-result v1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getOrientation()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VECameraSettings;->getFacingID()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getFacingID()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    move-result-object v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraSettings;->getSize()Lcom/ss/android/vesdk/VESize;

    move-result-object p0

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getSize()Lcom/ss/android/vesdk/VESize;

    move-result-object p1

    iget v1, p1, Lcom/ss/android/vesdk/VESize;->width:I

    iget v3, p0, Lcom/ss/android/vesdk/VESize;->width:I

    if-ne v1, v3, :cond_5

    iget p1, p1, Lcom/ss/android/vesdk/VESize;->height:I

    iget p0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    if-eq p1, p0, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v2
.end method

.method private detachNavieInvoer()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setOnOpenGLCallback(Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;)V

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setNativeInitListener2(Lcom/ss/android/medialib/listener/NativeInitListener;)V

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mSlamDetectListener:Lcom/ss/android/medialib/listener/SlamDetectListener;

    invoke-static {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->removeSlamDetectListener(Lcom/ss/android/medialib/listener/SlamDetectListener;)V

    return-void
.end method

.method private determineCurrentAudioOption()I
    .locals 1

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isAudioRecordEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mBGMPath:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    :goto_0
    return p0
.end method

.method private getRotation(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)I
    .locals 3

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10e

    goto :goto_0

    :cond_1
    const/16 v1, 0xb4

    goto :goto_0

    :cond_2
    const/16 v1, 0x5a

    :cond_3
    :goto_0
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;->FACING_FRONT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraSettings;->getOrientation()I

    move-result p0

    add-int/2addr p0, v1

    rem-int/lit16 p0, p0, 0x168

    rsub-int p0, p0, 0x21c

    rem-int/lit16 p0, p0, 0x168

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VECameraSettings;->getOrientation()I

    move-result p0

    sub-int/2addr p0, v1

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    :goto_1
    return p0
.end method

.method private initAudioPlayerIfNeed(I)V
    .locals 8

    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mLastAudioOption:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mBGMPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mBGMVolume:F

    invoke-virtual {p1, v0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setBGMVolume(F)I

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mBGMPath:Ljava/lang/String;

    iget p1, p0, Lcom/ss/android/vesdk/TERecorder;->mBGMTrimIn:I

    int-to-long v4, p1

    iget-boolean v6, p0, Lcom/ss/android/vesdk/TERecorder;->mBGMIsLoop:Z

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/medialib/FaceBeautyInvoker;->initAudioPlayer(Landroid/content/Context;Ljava/lang/String;JZZ)I

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setUseMusic(I)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    const-string p1, "Illegal state. BGM path is empty. when current audio option is PLAY_OPENSL"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Shouldn\'t reach here"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->uninitAudioPlayer()V

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setUseMusic(I)V

    :goto_0
    return-void
.end method

.method private initAudioRecorderIfNeed(I)V
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p1, v0

    iget v1, p0, Lcom/ss/android/vesdk/TERecorder;->mLastAudioOption:I

    and-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioRecorder:Le/a/a/b;

    if-nez p1, :cond_1

    :cond_0
    new-instance p1, Le/a/a/b;

    invoke-direct {p1, p0}, Le/a/a/b;-><init>(Le/a/a/a;)V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioRecorder:Le/a/a/b;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioRecorder:Le/a/a/b;

    invoke-virtual {p0, v0}, Le/a/a/b;->init(I)V

    :cond_1
    return-void
.end method

.method private initNativeInvokerWithSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;)I
    .locals 9

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mVERuntime:Lcom/ss/android/vesdk/runtime/VERuntime;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->getEnv()Lcom/ss/android/vesdk/runtime/VEEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VEEnv;->getEffectModelResourceDirPath()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->getTempSegmentDirPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEPreviewSettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object p2

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    iget v2, p2, Lcom/ss/android/vesdk/VESize;->height:I

    iget v3, p2, Lcom/ss/android/vesdk/VESize;->width:I

    iget v5, p1, Lcom/ss/android/vesdk/VESize;->width:I

    iget v6, p1, Lcom/ss/android/vesdk/VESize;->height:I

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/medialib/FaceBeautyInvoker;->initFaceBeautyPlay(IILjava/lang/String;IILjava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NativeInvoker init Failed. ret = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private releaseAudioComponentIfNeed()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioRecorder:Le/a/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/a/b;->unInit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioRecorder:Le/a/a/b;

    :cond_0
    return-void
.end method

.method private startAudioRecorderIfNeed(FI)V
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioRecorder:Le/a/a/b;

    float-to-double p1, p1

    invoke-virtual {p0, p1, p2, v0}, Le/a/a/b;->a(DZ)V

    :cond_0
    return-void
.end method

.method private updateAudioComponentIfNeedWithStartRecord(JF)I
    .locals 3

    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->determineCurrentAudioOption()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/TERecorder;->initAudioRecorderIfNeed(I)V

    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/TERecorder;->initAudioPlayerIfNeed(I)V

    invoke-direct {p0, p3, v0}, Lcom/ss/android/vesdk/TERecorder;->startAudioRecorderIfNeed(FI)V

    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    iget v1, p0, Lcom/ss/android/vesdk/TERecorder;->mBGMTrimIn:I

    int-to-long v1, v1

    invoke-virtual {p3, v1, v2, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setMusicTime(JJ)I

    iput v0, p0, Lcom/ss/android/vesdk/TERecorder;->mLastAudioOption:I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addPCMData([BI)I
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->onAudioCallback([BI)V

    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized addSlamDetectListener(Lcom/ss/android/vesdk/TERecorder$OnSlamDetectListener;)V
    .locals 1
    .param p1    # Lcom/ss/android/vesdk/TERecorder$OnSlamDetectListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalSlamDetectListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized chooseSlamFace(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->chooseSlamFace(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearEnv()I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    const-string v1, "clearEnv() can only be invoked when state : 1,or2"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->clearFragFile()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeInvoker clearFragFile() failed. ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecordCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearSlamDetectListener()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalSlamDetectListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeWavFile(Z)I
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->closeWavFile(Z)I

    move-result p0

    return p0
.end method

.method public declared-synchronized concatAsync(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "concat() can only be called in error state when current state code is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecordCount:I

    if-gtz v0, :cond_1

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t invoke concat() when current recorded segment count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/TERecorder;->mRecordCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorder$3;-><init>(Lcom/ss/android/vesdk/TERecorder;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteLastFrag()I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    :cond_0
    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    const-string v2, "deleteLastFrag() can only be invoked when state : 1,or2"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mRecordCount:I

    if-gtz v0, :cond_2

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to invoke deleteLastFrag when recordCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ss/android/vesdk/TERecorder;->mRecordCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->deleteLastFrag()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeInvoker deleteLastFrag() failed. ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/ss/android/vesdk/TERecorder;->mRecordCount:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/ss/android/vesdk/TERecorder;->mRecordCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->releaseAudioComponentIfNeed()V

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->uninitFaceBeautyPlay()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeInvoker uninitFaceBeautyPlay() failed. ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->detachNavieInvoer()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalNativeInitListener:Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalSlamDetectListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalRenderCallback:Lcom/ss/android/vesdk/TERecorder$IRenderCallback;

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalPictureRenderListener:Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalListenerInvokerHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEndFrameTime()J
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEndFrameTime() when current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->getEndFrameTime()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSlamFaceCount()I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->getSlamFaceCount()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeInvoker getSlamFaceCount failed. ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Lcom/ss/android/vesdk/VECameraSettings;)I
    .locals 1
    .param p1    # Lcom/ss/android/vesdk/VEVideoEncodeSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/android/vesdk/VEAudioEncodeSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ss/android/vesdk/VEPreviewSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ss/android/vesdk/VECameraSettings;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->isValidAuthorization()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    iput-object p3, p0, Lcom/ss/android/vesdk/TERecorder;->mPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    iput-object p4, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-direct {p0, p1, p3}, Lcom/ss/android/vesdk/TERecorder;->initNativeInvokerWithSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;)I

    move-result p1

    if-eqz p1, :cond_1

    sget-object p2, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "init failed ret: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    iput p2, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initAudioConfig(II)I
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->initAudioConfig(II)I

    move-result p0

    return p0
.end method

.method public initWavFile(IID)I
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/FaceBeautyInvoker;->initWavFile(IID)I

    move-result p0

    return p0
.end method

.method public lackPermission()V
    .locals 1

    sget-object p0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    const-string v0, "Failed. AudioRecorder open failed. Lack permission."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProcessData([BI)I
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->addPCMData([BI)I

    move-result p0

    return p0
.end method

.method public declared-synchronized pauseEffectAudio(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->pauseEffectAudio(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized processTouchEvent(FF)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->processTouchEvent(FF)I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeInvoker processTouchEvent failed. ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public recordStatus(Z)V
    .locals 2

    sget-object p0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed. AudioRecorder record error. isRecording = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized removeSlamDetectListener(Lcom/ss/android/vesdk/TERecorder$OnSlamDetectListener;)V
    .locals 1
    .param p1    # Lcom/ss/android/vesdk/TERecorder$OnSlamDetectListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalSlamDetectListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized renderPicture([BIIILcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;)I
    .locals 2
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object p1, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    const-string p2, "renderPicture() can only be invoked after in state:2"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, -0x69

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    new-instance v0, Lcom/ss/android/medialib/camera/ImageFrame;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ss/android/medialib/camera/ImageFrame;-><init>([BIII)V

    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0}, Lcom/ss/android/medialib/camera/ImageFrame;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/ss/android/medialib/camera/ImageFrame;->getHeight()I

    move-result p3

    new-instance p4, Lcom/ss/android/vesdk/TERecorder$2;

    invoke-direct {p4, p0, p5}, Lcom/ss/android/vesdk/TERecorder$2;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;)V

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/ss/android/medialib/FaceBeautyInvoker;->renderPicture(Lcom/ss/android/medialib/camera/ImageFrame;IILcom/ss/android/medialib/FaceBeautyInvoker$OnPictureCallbackV2;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBeautyFace(ILjava/lang/String;)I
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    const-string v1, "iesve_verecorder_set_beauty_algorithm"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v1

    const-string v2, "old"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    const-string v1, "iesve_verecorder_set_beauty_algorithm"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setBeautyFace(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeInvoker setBeautyFace failed. ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBeautyFaceIntensity(FF)I
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    const-string v1, "iesve_verecorder_set_beauty_level"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;F)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v1

    const-string v2, "old"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    const-string v1, "iesve_verecorder_set_beauty_level"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setBeautyFaceIntensity(FF)I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeInvoker setBeautyFaceIntensity failed. ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCameraSettings(Lcom/ss/android/vesdk/VECameraSettings;)V
    .locals 1
    .param p1    # Lcom/ss/android/vesdk/VECameraSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->checkCameraSettingsChange(Lcom/ss/android/vesdk/VECameraSettings;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mIsCameraSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDeviceRotation([F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setDeviceRotation([F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFaceReshape(Ljava/lang/String;FF)I
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    const-string v1, "iesve_verecorder_set_bigeyes_smallface_level"

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;F)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v1

    const-string v2, "old"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    const-string v1, "iesve_verecorder_set_bigeyes_smallface"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setReshape(Ljava/lang/String;FF)I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NativeInvoker setFaceReshape failed. ret = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFilter(Ljava/lang/String;)I
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    const-string v1, "iesve_verecorder_set_filter_click_idfilter_id"

    invoke-static {p1}, Lcom/ss/android/vesdk/utils/VETextUtils;->parsePathSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v1

    const-string v2, "old"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    const-string v1, "iesve_verecorder_set_filter_click"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setFilter(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeInvoker setFilter failed ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFilter(Ljava/lang/String;F)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TERecorder;->setFilter(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/TERecorder;->setFilterIntensity(F)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFilter(Ljava/lang/String;Ljava/lang/String;F)I
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    const-string v1, "iesve_verecorder_set_filter_slide_left_id"

    invoke-static {p1}, Lcom/ss/android/vesdk/utils/VETextUtils;->parsePathSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v1

    const-string v2, "iesve_verecorder_set_filter_slide_right_id"

    invoke-static {p2}, Lcom/ss/android/vesdk/utils/VETextUtils;->parsePathSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v1

    const-string v2, "old"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    const-string v1, "iesve_verecorder_set_filter_slide"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setFilter(Ljava/lang/String;Ljava/lang/String;F)I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NativeInvoker setFilter with position failed. ret = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFilterIntensity(F)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setFilterIntensity(F)I

    move-result p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeInvoker setFilterIntensity failed. ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNativeInitListener(Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalNativeInitListener:Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRecordBGM(Ljava/lang/String;II)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/android/vesdk/TERecorder;->setRecordBGM(Ljava/lang/String;IIZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRecordBGM(Ljava/lang/String;IIZ)I
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview() can only be invoked after init()"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mBGMPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->changeMusicPath(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeInvoker changeMusicPath() failed. ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    int-to-long v0, p2

    int-to-long v2, p3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setMusicTime(JJ)I

    move-result p1

    if-eqz p1, :cond_2

    sget-object p3, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeInvoker setMusicTime() failed. ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput p2, p0, Lcom/ss/android/vesdk/TERecorder;->mBGMTrimIn:I

    iput-boolean p4, p0, Lcom/ss/android/vesdk/TERecorder;->mBGMIsLoop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRenderCallback(Lcom/ss/android/vesdk/TERecorder$IRenderCallback;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mExternalRenderCallback:Lcom/ss/android/vesdk/TERecorder$IRenderCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSlamFace(Landroid/graphics/Bitmap;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setSlamFace(Landroid/graphics/Bitmap;)I

    move-result p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeInvoker setSlamFace failed. ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUseLargeMattingModel(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->useLargeMattingModel(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shotScreen(Ljava/lang/String;[IZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;)I
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p4, v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    move v5, v0

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p4, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v6, Lcom/ss/android/vesdk/TERecorder$1;

    invoke-direct {v6, p0, p1, p4}, Lcom/ss/android/vesdk/TERecorder$1;-><init>(Lcom/ss/android/vesdk/TERecorder;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    iget p4, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    const/4 v0, 0x2

    if-ne p4, v0, :cond_3

    iget p4, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    const/4 v0, 0x3

    if-eq p4, v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/medialib/FaceBeautyInvoker;->shotScreen(Ljava/lang/String;[IZILcom/ss/android/medialib/FaceBeautyInvoker$OnPictureCallback;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_3
    :goto_2
    :try_start_1
    sget-object p1, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    const-string p2, "shotScreen() can only be invoked after startRecord() invoked successfully"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p1, -0x69

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized slamDeviceConfig(ZZZZ)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/android/medialib/FaceBeautyInvoker;->slamDeviceConfig(ZZZZ)I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "NativeInvoker slamDeviceConfig failed. ret = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized slamProcessIngestAcc(DDDD)I
    .locals 11

    move-object v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/ss/android/medialib/FaceBeautyInvoker;->slamProcessIngestAcc(DDDD)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NativeInvoker slamProcessIngestAcc failed. ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized slamProcessIngestGra(DDDD)I
    .locals 11

    move-object v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/ss/android/medialib/FaceBeautyInvoker;->slamProcessIngestGra(DDDD)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NativeInvoker slamProcessIngestGra failed. ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized slamProcessIngestGyr(DDDD)I
    .locals 11

    move-object v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/ss/android/medialib/FaceBeautyInvoker;->slamProcessIngestGyr(DDDD)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NativeInvoker slamProcessIngestGyr failed. ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized slamProcessIngestOri([DD)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/medialib/FaceBeautyInvoker;->slamProcessIngestOri([DD)I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NativeInvoker slamProcessIngestOri failed. ret = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized slamProcessPanEvent(FFFFF)I
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/medialib/FaceBeautyInvoker;->slamProcessPanEvent(FFFFF)I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "NativeInvoker slamProcessPanEvent failed. ret = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized slamProcessRotationEvent(FF)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->slamProcessRotationEvent(FF)I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeInvoker slamProcessRotationEvent failed. ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized slamProcessScaleEvent(FF)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->slamProcessScaleEvent(FF)I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeInvoker slamProcessScaleEvent failed. ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized slamProcessTouchEvent(FF)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->slamProcessTouchEvent(FF)I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeInvoker slamProcessTouchEvent failed. ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized slamProcessTouchEventByType(IFFI)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/android/medialib/FaceBeautyInvoker;->slamProcessTouchEventByType(IFFI)I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "NativeInvoker slamProcessTouchEventByType failed. ret = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startPreview(Landroid/view/Surface;)I
    .locals 5
    .param p1    # Landroid/view/Surface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    const-string v2, "startPreview() can only be invoked after init()"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getFacingID()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/TERecorder;->getRotation(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VECameraSettings;->getFacingID()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    move-result-object v3

    sget-object v4, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;->FACING_FRONT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    if-ne v3, v4, :cond_2

    move v2, v1

    :cond_2
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, p1, v3, v0, v2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->startPlay(Landroid/view/Surface;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_3

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeInvoker startPlay() failed. ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    :goto_1
    invoke-direct {p0}, Lcom/ss/android/vesdk/TERecorder;->determineCurrentAudioOption()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/TERecorder;->initAudioRecorderIfNeed(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startRecord(FJ)I
    .locals 10

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    const-string v2, "startRecord() can only be invoked after startPreview()"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    iget v2, p0, Lcom/ss/android/vesdk/TERecorder;->mRecordCount:I

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->genSegmentVideoPath(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    iget v3, p0, Lcom/ss/android/vesdk/TERecorder;->mRecordCount:I

    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->genSegmentAudioPath(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-virtual {v3, v2}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->addSegmentAudioPath(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-virtual {v2, v0}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->addSegmentVideoPath(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorder;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getBps()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    const/high16 v0, 0x4a800000    # 4194304.0f

    div-float v7, v2, v0

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getEncodeProfile()I

    move-result v0

    sget-object v2, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_MAIN:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    :goto_0
    move v9, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getEncodeProfile()I

    move-result v0

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_HIGH:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    move v9, v3

    :goto_1
    invoke-direct {p0, p2, p3, p1}, Lcom/ss/android/vesdk/TERecorder;->updateAudioComponentIfNeedWithStartRecord(JF)I

    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    float-to-double v4, p1

    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isHwEnc()Z

    move-result p1

    if-nez p1, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    move v6, p1

    :goto_2
    const/4 v8, 0x1

    move-object v3, p2

    invoke-virtual/range {v3 .. v9}, Lcom/ss/android/medialib/FaceBeautyInvoker;->startRecord(DZFII)I

    move-result p1

    if-eqz p1, :cond_4

    sget-object p2, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NativeInvoker startRecord() failed. ret = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 p2, 0x3

    iput p2, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopPreview()I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->stopRecord()I

    :cond_0
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview() can only be invoked after init()"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->stopPlay()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeInvoker stopPlay() failed. ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopRecord()I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    const-string v1, "stopRecord() can only be invoked after startRecord() invoked successfully"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->stopRecord(Z)I

    move-result v0

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioRecorder:Le/a/a/b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder;->mAudioRecorder:Le/a/a/b;

    invoke-virtual {v1}, Le/a/a/b;->stopFeeding()Z

    :cond_1
    if-gez v0, :cond_2

    sget-object v1, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeInvoker stopRecord failed. ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecordCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecordCount:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized switchEffect(Ljava/lang/String;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    invoke-static {p1}, Lcom/ss/android/vesdk/utils/VETextUtils;->parsePathSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "iesve_verecorder_set_sticker_id"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "0"

    :cond_0
    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v1

    const-string v2, "old"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    const-string v1, "iesve_verecorder_set_sticker"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1, v3, v3, v3}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setStickerPath(Ljava/lang/String;IIZ)I

    move-result p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    const-string v1, "NativeInvoker setStickerPath failed"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized tryRestore(I)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only invoke tryRestore() in idle state but current state code is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/TERecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput p1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecordCount:I

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "About to invoke tryRestore(), record count has been overwrite with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->getTempSegmentDirPath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    iget v1, p0, Lcom/ss/android/vesdk/TERecorder;->mRecordCount:I

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->tryRestore(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/ss/android/vesdk/TERecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeInvoker tryStore() failed. ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateRotation(FFF)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder;->mNativeInvoker:Lcom/ss/android/medialib/FaceBeautyInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/medialib/FaceBeautyInvoker;->updateRotation(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
