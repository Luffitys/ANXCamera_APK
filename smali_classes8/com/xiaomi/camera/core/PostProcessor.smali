.class public Lcom/xiaomi/camera/core/PostProcessor;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MSG_CROP_REGION:I = 0x1

.field private static final MSG_RESULT_FLAW:I = 0x0

.field public static final SKIP_IMAGEPROCESSOR:Z

.field public static final SKIP_IMAGEPROCESS_PROP:Ljava/lang/String; = "camera.skip.imageprocessor"

.field public static final SKIP_MULTI:Z

.field public static final SKIP_MULTI_PROP:Ljava/lang/String; = "camera.skip.multi"

.field public static final SKIP_RENDER:Z

.field public static final SKIP_RENDER_PROP:Ljava/lang/String; = "camera.skip.render"

.field private static final TAG:Ljava/lang/String; = "PostProcessor"


# instance fields
.field private mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

.field private mCaptureDataListener:Lcom/xiaomi/camera/core/CaptureDataListener;

.field private mCaptureStatusListener:Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

.field private mHeifSaverCallback:Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;

.field private mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

.field private mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

.field private mImageProcessorList:Ljava/util/List;

.field private mImageProcessorStatusCb:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

.field private mImageReaderList:Ljava/util/List;

.field private mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field private mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

.field private mMaxParallelRequestNumber:I

.field private mObsoleteImageReaderList:Ljava/util/List;

.field private mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private mParams:Ljava/util/List;

.field private mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

.field private mRawDataStatusCallback:Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

.field private mSRRequireReprocess:Z

.field private mSessionStatusCb:Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;

.field private mSessionStatusCbListener:Ljava/lang/ref/WeakReference;

.field private mShouldDestroyWhenTasksFinished:Z

.field private mSurfaceList:Ljava/util/List;

.field private mToken:I

.field private mWaitingCropRegions:Ljava/util/Map;

.field private mWaitingEncodeDatas:Ljava/util/Map;

.field private mWaitingReprocessDatas:Ljava/util/Map;

.field private mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private mZipperResultListener:Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "camera.skip.multi"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_MULTI:Z

    const-string v0, "camera.skip.imageprocessor"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    const-string v0, "camera.skip.render"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_RENDER:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mMaxParallelRequestNumber:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mObsoleteImageReaderList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "CallbackHandleThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mShouldDestroyWhenTasksFinished:Z

    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCaptureStatusListener:Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    const/4 p1, -0x1

    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mToken:I

    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$1;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSessionStatusCb:Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;

    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$2;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$2;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mZipperResultListener:Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$3;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$3;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCaptureDataListener:Lcom/xiaomi/camera/core/CaptureDataListener;

    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$4;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$4;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mRawDataStatusCallback:Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$5;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$5;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorStatusCb:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$6;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$6;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSessionStatusCbListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->tryToCloseSession()V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->dumpFusionInputs(Lcom/xiaomi/camera/core/CaptureData;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/CaptureData;I)Lcom/xiaomi/protocol/ICustomCaptureResult;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->chooseCaptureResult(Lcom/xiaomi/camera/core/CaptureData;I)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageMemoryManager;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mHeifSaverCallback:Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/android/camera/storage/ImageSaver;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/camera/core/PostProcessor;->generateReprocessData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingReprocessDatas:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/xiaomi/camera/core/PostProcessor;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingReprocessDatas:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingCropRegions:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/xiaomi/camera/core/PostProcessor;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingCropRegions:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorStatusCb:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/xiaomi/camera/core/PostProcessor;JLandroid/media/Image;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/camera/core/PostProcessor;->doEncodeJpeg(JLandroid/media/Image;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/xiaomi/camera/core/PostProcessor;Landroid/media/Image;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->closePoolImage(Landroid/media/Image;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->isNeedCallBackFinished(Lcom/xiaomi/camera/core/ParallelTaskData;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->tryToStopBoost()V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/camera/core/PostProcessor;->receiveSuperNightYuvImage(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/camera/core/PostProcessor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->startBoost(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mZipperResultListener:Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/camera/core/PostProcessor;ILcom/xiaomi/camera/core/ParallelTaskData;Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/camera/core/PostProcessor;->chooseAndCloseTuningData(ILcom/xiaomi/camera/core/ParallelTaskData;Lcom/xiaomi/camera/core/CaptureData;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCaptureDataListener:Lcom/xiaomi/camera/core/CaptureDataListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->processRaw(Lcom/xiaomi/camera/core/CaptureData;)V

    return-void
.end method

.method private beginProcessYuv(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)V
    .locals 12

    move-object v6, p0

    move-object v7, p2

    move/from16 v0, p4

    iget-object v1, v6, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v6, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    :cond_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    move-object v3, p3

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process yuv timestamp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " for flag "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v6, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;

    const/4 v10, 0x1

    if-nez v1, :cond_3

    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v2, "create super night data"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;-><init>(Lcom/xiaomi/camera/core/PostProcessor$1;)V

    if-nez v0, :cond_1

    sget v4, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_NONE:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/camera/core/PostProcessor;->generateReprocessData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v0

    iput-boolean v10, v11, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->mainImageReceived:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    sget v4, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_NONE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/camera/core/PostProcessor;->generateReprocessData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setTuningImage(Landroid/media/Image;)Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTuningImage()Landroid/media/Image;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    :cond_2
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTuningImage(Landroid/media/Image;)V

    iput-boolean v10, v11, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->tuningImageReceived:Z

    :goto_0
    iput-object v0, v11, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->reprocessData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    iget-object v0, v6, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v3, "another yuv image received"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->reprocessData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    if-nez v0, :cond_4

    invoke-virtual {v2, p2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setMainImage(Landroid/media/Image;)Ljava/util/ArrayList;

    iput-boolean v10, v1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->mainImageReceived:Z

    goto :goto_1

    :cond_4
    invoke-virtual {v2, p2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setTuningImage(Landroid/media/Image;)Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTuningImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_5
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTuningImage(Landroid/media/Image;)V

    iput-boolean v10, v1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->tuningImageReceived:Z

    :goto_1
    iget-boolean v0, v1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->mainImageReceived:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->tuningImageReceived:Z

    if-eqz v0, :cond_6

    const/16 v0, 0xd

    move-object v1, p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private chooseAndCloseTuningData(ILcom/xiaomi/camera/core/ParallelTaskData;Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ne v2, p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setHWMFNRProcessing(Z)V

    :cond_1
    if-nez v2, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->isRequireTuningData()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p3}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object p3

    move v2, v1

    move v3, v2

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTuningImage()Landroid/media/Image;

    move-result-object v5

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isTuningImageFromPool()Z

    move-result v6

    const/16 v7, 0xc

    if-eq p1, v7, :cond_3

    if-nez v2, :cond_5

    if-eqz v6, :cond_2

    invoke-virtual {p2, v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTuningImage(Landroid/media/Image;)V

    :goto_2
    move v4, v1

    goto :goto_4

    :cond_2
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v4

    invoke-static {v4, v5, v0}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;I)Landroid/media/Image;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTuningImage(Landroid/media/Image;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v7}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_5

    if-nez v3, :cond_5

    sget-object v3, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const-string v8, "choose tuning buffer: get the %d frame metadata"

    invoke-static {v4, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_4

    invoke-virtual {p2, v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTuningImage(Landroid/media/Image;)V

    move v3, v0

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v3

    invoke-static {v3, v5, v0}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;I)Landroid/media/Image;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTuningImage(Landroid/media/Image;)V

    move v3, v0

    move v4, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v4, v0

    :goto_4
    if-eqz v4, :cond_6

    invoke-virtual {v5}, Landroid/media/Image;->close()V

    iget-object v4, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCaptureDataListener:Lcom/xiaomi/camera/core/CaptureDataListener;

    invoke-interface {v4, v5}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method private chooseCaptureResult(Lcom/xiaomi/camera/core/CaptureData;I)Lcom/xiaomi/protocol/ICustomCaptureResult;
    .locals 4

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o000o()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getBurstNum()I

    move-result p0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object p1

    sub-int/2addr p0, v0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    sget-object p2, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ALGOUP|MMCAMERA]: Add last metadata, index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    if-eq p2, v0, :cond_1

    const/16 v1, 0xa

    if-eq p2, v1, :cond_1

    const/16 v1, 0xc

    if-eq p2, v1, :cond_1

    const/16 v1, 0xd

    if-ne p2, v1, :cond_3

    :cond_1
    move p2, p0

    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_3

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    sget-object p1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p0

    const-string p0, "chooseCaptureResult: get the %d frame metadata"

    invoke-static {v2, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p0

    return-object p0
.end method

.method private closePoolImage(Landroid/media/Image;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_0
    return-void
.end method

.method private doEncodeJpeg(JLandroid/media/Image;)V
    .locals 4

    const-string v0, "doEncodeJpeg: X"

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v2, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v3, "doEncodeJpeg: E"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->reprocessData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v2, p3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setMainImage(Landroid/media/Image;)Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object p3

    iget-object v1, v1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->reprocessData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-interface {p3, v1}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p3

    goto :goto_1

    :catch_0
    move-exception p3

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not reprocess timeStamp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p3, v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p3

    :cond_0
    sget-object p0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string p1, "could not encode jpeg for null supernight data"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private static dumpFusionInputs(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object p0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v0, "dumpFusionInputs: illegal fusion input frame count!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData;->getMultiFrameProcessResult()Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object p0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v0, "dumpFusionInputs: illegal fusion input frame data!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData;->getMultiFrameProcessResult()Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v0, "dumpFusionInputs: fusion input frame main is null!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object p0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v0, "dumpFusionInputs: fusion input frame sub is null!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object p0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v0, "dumpFusionInputs: fusion input frame meta is null!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fusionMainImage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/base/ImageUtil;->dumpYuvImageAppendWH(Landroid/media/Image;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fusionSubImage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/camera/base/ImageUtil;->dumpYuvImageAppendWH(Landroid/media/Image;Ljava/lang/String;)Z

    return-void
.end method

.method private generateReprocessData(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .locals 12

    move-object v0, p0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v5

    sget-object v2, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[2] onImageProcessed: captureResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isFrontCamera()Z

    move-result v6

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputFormat()I

    move-result v9

    iget-object v10, v0, Lcom/xiaomi/camera/core/PostProcessor;->mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-object v2, v11

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v2 .. v10}, Lcom/xiaomi/camera/imagecodec/ReprocessData;-><init>(Landroid/media/Image;Ljava/lang/String;Lcom/xiaomi/protocol/ICustomCaptureResult;ZIIILcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;)V

    move/from16 v2, p4

    invoke-virtual {v11, v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setReprocessFunctionType(I)V

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegQuality()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setJpegQuality(I)V

    move/from16 v2, p5

    invoke-virtual {v11, v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setImageFromPool(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isRequireTuningData()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTuningImage()Landroid/media/Image;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setTuningImage(Landroid/media/Image;)Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setKeepTuningImage(Z)V

    invoke-virtual {v11, v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setTuningImageFromPool(Z)V

    :cond_0
    const v2, 0x48454946

    invoke-virtual {v11}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v4

    if-ne v2, v4, :cond_1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getSupportZeroDegreeOrientationImage()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v11, v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setRotateOrientationToZero(Z)V

    :cond_1
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v11, v2, v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setYuvInputSize(II)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputHeight()I

    move-result v2

    invoke-virtual {v11, v1, v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setRawInputSize(II)V

    iget-object v0, v0, Lcom/xiaomi/camera/core/PostProcessor;->mRawDataStatusCallback:Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    invoke-virtual {v11, v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setDataStatusCallback(Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;)V

    return-object v11
.end method

.method private getMinHoldImageNum(Ljava/util/List;)I
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    if-eqz p0, :cond_2

    iget v1, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    if-ge v1, p0, :cond_1

    :cond_2
    iget p0, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    goto :goto_0

    :cond_3
    return p0

    :cond_4
    :goto_1
    sget-object p1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v0, "getMinHoldImageNum: empty param"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isAnyFrontProcessing()Z
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-boolean v0, v0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isNeedCallBackFinished(Lcom/xiaomi/camera/core/ParallelTaskData;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v0

    const/4 v1, -0x7

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v0

    const/4 v1, -0x5

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v0

    const/4 v1, -0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method private isParallelSupportedAlgo(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private processRaw(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 16
    .param p1    # Lcom/xiaomi/camera/core/CaptureData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v2, "processRaw: E"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v5, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTuningImage()Landroid/media/Image;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isFirstResult()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V

    :cond_3
    move-object v10, v0

    if-eqz v10, :cond_4

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    new-instance v3, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isFrontCamera()Z

    move-result v11

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v13

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputFormat()I

    move-result v14

    iget-object v15, v1, Lcom/xiaomi/camera/core/PostProcessor;->mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-object v7, v3

    move-object v9, v2

    invoke-direct/range {v7 .. v15}, Lcom/xiaomi/camera/imagecodec/ReprocessData;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Lcom/xiaomi/protocol/ICustomCaptureResult;ZIIILcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;)V

    sget v4, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_RAW_MFNR:I

    invoke-virtual {v3, v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setReprocessFunctionType(I)V

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isMirror()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setFrontMirror(Z)V

    invoke-virtual {v3, v6}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setTuningImage(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setYuvInputSize(II)V

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputWidth()I

    move-result v0

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputHeight()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setRawInputSize(II)V

    iget-object v0, v1, Lcom/xiaomi/camera/core/PostProcessor;->mRawDataStatusCallback:Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    invoke-virtual {v3, v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setDataStatusCallback(Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;)V

    :try_start_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v3, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processRaw: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, v1, Lcom/xiaomi/camera/core/PostProcessor;->mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "processRaw: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no raw CaptureResult with timestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no raw parallelTaskData with timestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "processRaw: null data bean list"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private receiveSuperNightYuvImage(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)V
    .locals 10

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p5

    invoke-static {p5, p2, v0}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;I)Landroid/media/Image;

    move-result-object p2

    :goto_0
    invoke-virtual {p2, v2, v3}, Landroid/media/Image;->setTimestamp(J)V

    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/xiaomi/camera/core/PostProcessor;->beginProcessYuv(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result p1

    const/16 p3, 0xd

    if-ne p1, p3, :cond_3

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;

    iget-object p1, p1, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;->reprocessData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroid/media/Image;

    :goto_1
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string p3, "[z] onHidlImageAvailable: try to do filter for raw"

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;

    invoke-direct {p1, p2, v1, v0}, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;-><init>(Landroid/media/Image;IZ)V

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->dispatchFilterTask(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string p3, "[z] onHidlImageAvailable: could not do filter for image processor null"

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v3, p2}, Lcom/xiaomi/camera/core/PostProcessor;->doEncodeJpeg(JLandroid/media/Image;)V

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string p1, "[z] onHidlImageAvailable: waiting image"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private startBoost(I)V
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000oOoO()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoost(II)Z

    :cond_1
    return-void
.end method

.method private stopBoost()V
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000oOoO()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoost()V

    :cond_0
    return-void
.end method

.method private declared-synchronized tryToCloseSession()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mShouldDestroyWhenTasksFinished:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->isAnyFrontProcessing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    iget-boolean v1, v1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    if-eqz v1, :cond_0

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "tryToCloseSession: closeParallelSession"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->closeCaptureSession(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mShouldDestroyWhenTasksFinished:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryToCloseSession: E  this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->finish()V

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->deInit()V

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    invoke-interface {v0, p0}, Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;->onPostProcessorClosed(Lcom/xiaomi/camera/core/PostProcessor;)V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingCropRegions:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingCropRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingCropRegions:Ljava/util/Map;

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingReprocessDatas:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingReprocessDatas:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingReprocessDatas:Ljava/util/Map;

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWaitingEncodeDatas:Ljava/util/Map;

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->stopBoost()V

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryToCloseSession: X  this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryToCloseSession: ignore  this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private tryToStopBoost()V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "tryToStopBoost"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "stopBoost"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->stopBoost()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearFrontProcessingTask()V
    .locals 5

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-boolean v1, v0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->isParallelVTCameraSnapshot()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearFrontProcessingTask: timestamp > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/camera/core/ParallelDataZipper;->releaseData(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized configCaptureSession(Lcom/xiaomi/engine/BufferFormat;Lcom/android/camera/CameraSize;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configCaptureSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ImageProcessor;->stopWorkWhenIdle()V

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getGraphDescriptor()Lcom/xiaomi/engine/GraphDescriptorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/engine/GraphDescriptorBean;->getStreamNumber()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/xiaomi/camera/core/DualCameraProcessor;

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorStatusCb:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/camera/core/DualCameraProcessor;-><init>(Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;Lcom/xiaomi/engine/BufferFormat;)V

    :goto_0
    iput-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/xiaomi/camera/core/SingleCameraProcessor;

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorStatusCb:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/camera/core/SingleCameraProcessor;-><init>(Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;Lcom/xiaomi/engine/BufferFormat;)V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    iget v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mMaxParallelRequestNumber:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->setMaxParallelRequestNumber(I)V

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    iget v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mMaxParallelRequestNumber:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->setImageBufferQueueSize(I)V

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorList:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ImageProcessor;->startWork()V

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/camera/core/ImageProcessor;->configOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;Lcom/android/camera/CameraSize;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSessionStatusCb:Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;

    invoke-static {p1, p2, v0}, Lcom/xiaomi/engine/MiCameraAlgo;->createSessionByOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;Ljava/util/List;Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;)Lcom/xiaomi/engine/TaskSession;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {p2, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->setTaskSession(Lcom/xiaomi/engine/TaskSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public configHALOutputSurface(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configHALOutputSurface: paramsNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "save obsolete image readers"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mObsoleteImageReaderList:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->getMinHoldImageNum(Ljava/util/List;)I

    move-result v0

    new-instance v1, Lcom/xiaomi/camera/core/ImageMemoryManager;

    invoke-direct {v1, v0}, Lcom/xiaomi/camera/core/ImageMemoryManager;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configHALOutputSurface: holdNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    iget v1, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    iget v2, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    iget v3, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    iget v4, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->ORIGINAL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;->setImageReaderNameDepends(Landroid/media/ImageReader;Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;Z)V

    new-instance v2, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;

    iget v3, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    iget v0, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->cameraType:I

    iget-object v4, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    invoke-direct {v2, v3, v0, v4}, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;-><init>(IILcom/xiaomi/camera/core/ImageMemoryManager;)V

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-boolean p1, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000oOoO:Z

    if-eqz p1, :cond_4

    sget-boolean p1, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoo:Z

    if-nez p1, :cond_3

    sget-boolean p1, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoo0:Z

    if-nez p1, :cond_3

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooO0O()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->configParallelCaptureSession(Z)Z

    :cond_4
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    return-object p0
.end method

.method public configParallelCaptureSession(Z)Z
    .locals 4

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParallelCaptureSession: mSurfaceList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParams:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    iget-boolean v3, v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    sget-object p0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParallelCaptureSession: surfaceList.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->createCaptureSession(Ljava/util/List;)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public deInit()V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mObsoleteImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mObsoleteImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mObsoleteImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mHeifSaverCallback:Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;

    return-void
.end method

.method public declared-synchronized destroyWhenTasksFinished(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->getToken()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mShouldDestroyWhenTasksFinished:Z

    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->tryToCloseSession()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public finish()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ImageProcessor;->stopWork()V

    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ImageProcessor;->stopWork()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "finish: failed!"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public getCaptureStatusListener()Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCaptureStatusListener:Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    return-object p0
.end method

.method public getFrontProcessingCount()I
    .locals 2

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-boolean v1, v1, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getParams()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParams:Ljava/util/List;

    return-object p0
.end method

.method public getSurfaceList()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    return-object p0
.end method

.method public declared-synchronized getToken()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mToken:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init()V
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000oOoO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHeicImageFormatSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/camera/core/PostProcessor$7;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/core/PostProcessor$7;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mHeifSaverCallback:Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;

    :cond_0
    return-void
.end method

.method public isAnyRequestBlocked()Z
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/xiaomi/camera/core/PostProcessor;->isParallelSupportedAlgo(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    if-eqz v2, :cond_0

    sget-object p0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnyRequestBlocked: taskData algoType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isAnyRequestIsHWMFNRProcessing()Z
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->isHWMFNRProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isIdle()Z
    .locals 3

    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIdle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isSRRequireReprocess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSRRequireReprocess:Z

    return p0
.end method

.method public declared-synchronized isStopping()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mShouldDestroyWhenTasksFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public needWaitAlgorithmEngine()Z
    .locals 2

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlgorithmEngineBusy()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v1, "needWaitAlgorithmEngine: return true"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v1, "needWaitAlgorithmEngine: return false"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p0
.end method

.method public needWaitImageClose()Z
    .locals 2

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageMemoryManager;->needWaitImageClose()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v1, "needWaitImageClose: return true"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v1, "needWaitImageClose: return false"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p0
.end method

.method public setImageSaver(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-void
.end method

.method public setMaxParallelRequestNumber(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mMaxParallelRequestNumber:I

    :cond_0
    return-void
.end method

.method public setOnSessionStatusCallBackListener(Lcom/xiaomi/protocol/ISessionStatusCallBackListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSessionStatusCbListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setParams(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParams:Ljava/util/List;

    return-void
.end method

.method public setSRRequireReprocess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSRRequireReprocess:Z

    return-void
.end method

.method public declared-synchronized setToken(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mToken:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized tryToReuse()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryToReuse: mShouldDestroyWhenTasksFinished = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mShouldDestroyWhenTasksFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mShouldDestroyWhenTasksFinished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->isAnyFrontProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/core/PostProcessor;->configParallelCaptureSession(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mShouldDestroyWhenTasksFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v2, "tryToReuse: fail to create configParallelCaptureSession"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
