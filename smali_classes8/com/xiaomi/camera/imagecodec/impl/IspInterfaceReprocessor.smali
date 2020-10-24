.class public Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;
.super Lcom/xiaomi/camera/imagecodec/BaseReprocessor;
.source ""


# static fields
.field private static final MAX_IMAGE_BUFFER_SIZE:I = 0x2

.field private static final MAX_INPUT_STREAM_ID:I = 0x64

.field private static final TAG:Ljava/lang/String; = "IspInterfaceReprocessor"

.field public static final sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;


# instance fields
.field private mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

.field private final mCodecLock:Ljava/lang/Object;

.field private mCodecOperationHandler:Landroid/os/Handler;

.field private mCodecOperationThread:Landroid/os/HandlerThread;

.field private mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

.field private final mDataLock:Ljava/lang/Object;

.field private mInitialized:Z

.field private mIspInterfaceInfoList:Ljava/util/HashMap;

.field private mMaxJpegSize:I

.field private mNextStreamId:I

.field mPicListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mRaw2YuvStatusMap:Ljava/util/HashMap;

.field private mRawInputSize:Landroid/util/Size;

.field private mReprocessStartTime:J

.field private mRequestDispatchHandler:Landroid/os/Handler;

.field private mRequestDispatchThread:Landroid/os/HandlerThread;

.field private mTaskDataList:Ljava/util/LinkedList;

.field mTuningListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mYuvListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mYuvTuningBufferSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mYuvTuningBufferSize:Landroid/util/Size;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$3;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$3;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTuningListener:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$4;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$4;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mYuvListener:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$5;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$5;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mPicListener:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRaw2YuvStatusMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->sendReprocessRequest()V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/Image;)[B
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Z
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->checkConditionIsReady()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->reprocessImage()V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/isp/IspInterface;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    return-object p0
.end method

.method static synthetic access$402(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/isp/IspInterface;)Lcom/xiaomi/camera/isp/IspInterface;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    return-object p0
.end method

.method static synthetic access$502(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    return-object p1
.end method

.method static synthetic access$600(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mReprocessStartTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRaw2YuvStatusMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->releaseReprocessData(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private align(II)I
    .locals 0

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, -0x1

    not-int p0, p2

    and-int/2addr p0, p1

    return p0
.end method

.method private cacheIspInterface(Lcom/xiaomi/camera/isp/IspInterfaceIO;Lcom/xiaomi/camera/isp/IspInterfaceInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private checkConditionIsReady()Z
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "checkConditionIsReady: processor is busy!"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "checkConditionIsReady: ignore null request!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputHeight()I

    move-result v4

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image;

    const/16 v4, 0x20

    invoke-virtual {v3}, Landroid/media/Image;->getFormat()I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    move v2, v6

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getYuvInputWidth()I

    move-result v4

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v4

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getYuvInputHeight()I

    move-result v3

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v3

    :goto_1
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v4, v3}, Landroid/util/Size;-><init>(II)V

    sget-object v7, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "yuvInputSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->isMFNRSupported()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_6

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v8

    goto :goto_4

    :cond_6
    :goto_2
    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getRawInputWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getRawInputHeight()I

    move-result v7

    if-lez v2, :cond_7

    if-lez v7, :cond_7

    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v2, v7}, Landroid/util/Size;-><init>(II)V

    sget-object v2, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rawInputSize = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v4, v3}, Landroid/util/Size;-><init>(II)V

    sget-object v3, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "override rawInputSize = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    :goto_3
    iput-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRawInputSize:Landroid/util/Size;

    :goto_4
    new-instance v2, Lcom/xiaomi/camera/isp/IspInterfaceIO;

    invoke-direct {v2, v5, v3, v0}, Lcom/xiaomi/camera/isp/IspInterfaceIO;-><init>(Landroid/util/Size;Landroid/util/Size;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;)V

    invoke-direct {p0, v2}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getCachedIspInterface(Lcom/xiaomi/camera/isp/IspInterfaceIO;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v8

    :cond_8
    invoke-direct {p0, v2, v8}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->createIspInterface(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v0

    :cond_9
    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    return v6

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private createIspInterface(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;)Lcom/xiaomi/camera/isp/IspInterface;
    .locals 16
    .param p1    # Lcom/xiaomi/camera/isp/IspInterfaceIO;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Parcelable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getYuvInputSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getRawInputSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getPicOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "createIspInterface>>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const-string v8, "yuvInput[%dx%d]"

    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const-string v8, " rawInput[%dx%d]"

    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getFormat()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v6, " output[%dx%d@%d]"

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    const/16 v7, 0x23

    invoke-direct {v0, v4, v5, v7}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getRowStride(III)[I

    move-result-object v13

    new-instance v4, Lcom/xiaomi/camera/isp/IspStream;

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getNextStreamId()I

    move-result v5

    int-to-long v9, v5

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v12

    const/16 v14, 0x23

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/xiaomi/camera/isp/IspStream;-><init>(JII[II)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getFormat()I

    move-result v3

    iget-object v5, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mPicListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->initImageReader(IIILandroid/media/ImageReader$OnImageAvailableListener;)Landroid/media/ImageReader;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    const/16 v8, 0x20

    invoke-direct {v0, v4, v5, v8}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getRowStride(III)[I

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/isp/IspInterfaceIO;->getYuvOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    move-result-object v4

    new-instance v5, Lcom/xiaomi/camera/isp/IspStream;

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getNextStreamId()I

    move-result v8

    int-to-long v10, v8

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v13

    const/16 v15, 0x20

    move-object v9, v5

    invoke-direct/range {v9 .. v15}, Lcom/xiaomi/camera/isp/IspStream;-><init>(JII[II)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v4

    iget-object v8, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mYuvListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-direct {v0, v5, v4, v7, v8}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->initImageReader(IIILandroid/media/ImageReader$OnImageAvailableListener;)Landroid/media/ImageReader;

    move-result-object v4

    move-object v12, v4

    goto :goto_0

    :cond_1
    move-object v12, v3

    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mYuvTuningBufferSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v4, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mYuvTuningBufferSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    const v5, 0x32315659

    iget-object v7, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTuningListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-direct {v0, v2, v4, v5, v7}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->initImageReader(IIILandroid/media/ImageReader$OnImageAvailableListener;)Landroid/media/ImageReader;

    move-result-object v2

    move-object v13, v2

    goto :goto_1

    :cond_2
    move-object v13, v3

    :goto_1
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    if-nez v12, :cond_3

    move-object v8, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v12}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    move-object v8, v2

    :goto_2
    if-nez v13, :cond_4

    move-object v9, v3

    goto :goto_3

    :cond_4
    invoke-virtual {v13}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    move-object v9, v2

    :goto_3
    iget v10, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mMaxJpegSize:I

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v11}, Lcom/xiaomi/camera/isp/IspInterface;->create(Ljava/util/ArrayList;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;ILandroid/os/Parcelable;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/camera/isp/IspInterfaceInfo;

    move-object v8, v3

    move-object v9, v2

    move-object/from16 v10, p1

    move-object v11, v1

    invoke-direct/range {v8 .. v13}, Lcom/xiaomi/camera/isp/IspInterfaceInfo;-><init>(Lcom/xiaomi/camera/isp/IspInterface;Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/media/ImageReader;Landroid/media/ImageReader;Landroid/media/ImageReader;)V

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->cacheIspInterface(Lcom/xiaomi/camera/isp/IspInterfaceIO;Lcom/xiaomi/camera/isp/IspInterfaceInfo;)V

    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "createIspInterface<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private getCachedIspInterface(Lcom/xiaomi/camera/isp/IspInterfaceIO;)Lcom/xiaomi/camera/isp/IspInterface;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/isp/IspInterfaceInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->getIspInterface()Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getJpegData(Landroid/media/Image;)[B
    .locals 1

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNextStreamId()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mNextStreamId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mNextStreamId:I

    rem-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private getRowStride(III)[I
    .locals 1

    new-instance p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;-><init>(III)V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getAnEmptyImage(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/media/Image;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    array-length p2, p1

    new-array p2, p2, [I

    const/4 p3, 0x0

    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_0

    aget-object v0, p1, p3

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    aput v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->close()V

    return-object p2
.end method

.method private initImageReader(IIILandroid/media/ImageReader$OnImageAvailableListener;)Landroid/media/ImageReader;
    .locals 3

    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initImageReader>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-static {p1, p2, p3, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationHandler:Landroid/os/Handler;

    invoke-virtual {p1, p4, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string p2, "initImageReader<<"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private releaseReprocessData(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isKeepTuningImage()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTuningImage()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/Image;

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "releaseWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private reprocessImage()V
    .locals 17
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "reprocessImage>>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    iput-object v2, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    sget-object v2, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reprocessImage: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "reprocessImage<<null metadata!"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_0
    iget-object v3, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Landroid/media/Image;

    invoke-virtual {v12}, Landroid/media/Image;->getFormat()I

    move-result v6

    const/16 v7, 0x20

    if-ne v7, v6, :cond_1

    const/4 v8, 0x1

    move v13, v8

    goto :goto_0

    :cond_1
    move v13, v5

    :goto_0
    const/4 v8, 0x0

    if-eqz v13, :cond_2

    iget-object v10, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRaw2YuvStatusMap:Ljava/util/HashMap;

    iget-object v11, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    new-instance v14, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;

    invoke-direct {v14, v0, v8}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;)V

    invoke-virtual {v10, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    iget-object v11, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRawInputSize:Landroid/util/Size;

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v11

    iget-object v14, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRawInputSize:Landroid/util/Size;

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v14

    invoke-virtual {v12}, Landroid/media/Image;->getFormat()I

    move-result v15

    :goto_1
    invoke-virtual {v10, v11, v14, v15}, Lcom/xiaomi/camera/isp/IspInterface;->getInputStreamId(III)J

    move-result-wide v10

    goto :goto_2

    :cond_2
    iget-object v10, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mActiveIspInterface:Lcom/xiaomi/camera/isp/IspInterface;

    invoke-virtual {v12}, Landroid/media/Image;->getWidth()I

    move-result v11

    invoke-virtual {v12}, Landroid/media/Image;->getHeight()I

    move-result v14

    invoke-virtual {v12}, Landroid/media/Image;->getFormat()I

    move-result v15

    goto :goto_1

    :goto_2
    iget-object v14, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v14}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTuningImage()Ljava/util/ArrayList;

    move-result-object v14

    :goto_3
    if-ge v5, v4, :cond_4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/Image;

    new-instance v8, Lcom/xiaomi/camera/isp/IspBuffer;

    if-nez v14, :cond_3

    const/4 v7, 0x0

    goto :goto_4

    :cond_3
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/Image;

    move-object/from16 v7, v16

    :goto_4
    invoke-direct {v8, v10, v11, v15, v7}, Lcom/xiaomi/camera/isp/IspBuffer;-><init>(JLandroid/media/Image;Landroid/media/Image;)V

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x20

    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getReprocessFuntionType()I

    move-result v11

    sget v1, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_RAW_MFNR:I

    const/16 v3, 0x23

    if-ne v1, v11, :cond_5

    const/16 v1, 0x20

    if-ne v6, v1, :cond_6

    :goto_5
    move v14, v3

    goto :goto_6

    :cond_5
    const/16 v1, 0x20

    sget v4, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_RAW_SUPERNIGHT:I

    if-ne v4, v11, :cond_6

    if-ne v6, v1, :cond_6

    goto :goto_5

    :cond_6
    iget-object v1, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v1

    move v14, v1

    :goto_6
    iget-object v1, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getCropRegion()[I

    move-result-object v10

    new-instance v15, Lcom/xiaomi/camera/isp/IspRequest;

    invoke-virtual {v2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getFrameNumber()J

    move-result-wide v3

    long-to-int v6, v3

    iget-object v1, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isFrontMirror()Z

    move-result v7

    invoke-virtual {v2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v8

    move-object v5, v15

    invoke-direct/range {v5 .. v11}, Lcom/xiaomi/camera/isp/IspRequest;-><init>(IILandroid/os/Parcelable;Ljava/util/ArrayList;[II)V

    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reprocessImage: requestFrameNo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getFrameNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mReprocessStartTime:J

    iget-object v7, v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationHandler:Landroid/os/Handler;

    if-eqz v7, :cond_7

    new-instance v8, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v3, v12

    move v4, v13

    move v5, v14

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$2;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Landroid/media/Image;ZILcom/xiaomi/camera/isp/IspRequest;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "reprocessImage<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    :try_start_1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "reprocessImage<<null input buffer!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendReprocessRequest()V
    .locals 5

    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "============================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mInitialized:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "sendReprocessRequest: NOT initialized!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v3, "sendReprocessRequest: idle. Try to close device 30s later."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7530

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "sendReprocessRequest: BUSY"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "sendReprocessRequest: send MSG_REPROCESS_IMAGE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public customize(Ljava/util/HashMap;)V
    .locals 4

    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->mIsMFNRSupported:Z

    :cond_0
    const/16 v0, 0x66

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mMaxJpegSize:I

    :cond_1
    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mYuvTuningBufferSize:Landroid/util/Size;

    :cond_2
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customize: maxJpegSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", yuvTuningBufferSize="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mfnrOn="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->mIsMFNRSupported:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deInit()V
    .locals 4

    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mInitialized:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mInitialized:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/isp/IspInterfaceInfo;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/xiaomi/camera/isp/IspInterfaceInfo;->release()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mIspInterfaceInfoList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationHandler:Landroid/os/Handler;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_4
    :goto_2
    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "deInit<<"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "init>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mInitialized:Z

    if-nez v1, :cond_0

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "IspHandlerThread"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mCodecOperationHandler:Landroid/os/Handler;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "RequestDispatcher"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mRequestDispatchHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mInitialized:Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string p1, "init<<"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public queryFeatureSetting(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)Lcom/xiaomi/camera/imagecodec/FeatureSetting;
    .locals 1
    .param p1    # Lcom/xiaomi/camera/isp/IspInterfaceIO;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Parcelable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->getCachedIspInterface(Lcom/xiaomi/camera/isp/IspInterfaceIO;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->createIspInterface(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;)Lcom/xiaomi/camera/isp/IspInterface;

    move-result-object v0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {v0, p3}, Lcom/xiaomi/camera/isp/IspInterface;->queryFeatureSetting(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;)Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public setOutputPictureSpec(III)V
    .locals 0

    return-void
.end method

.method public submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .locals 7

    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mInitialized:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->releaseReprocessData(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V

    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string p1, "submit: drop this request due to no callback was provided!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getMainImage()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-nez v2, :cond_2

    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string p1, "submit: empty data list"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->acquireWakeLock()V

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isImageFromPool()Z

    move-result v3

    if-nez v3, :cond_6

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image;

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v4

    :goto_1
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->isImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v6, "submit: wait main image pool>>"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->waitIfImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;II)V

    sget-object v5, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v6, "submit: wait main image pool<<"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/Image;

    invoke-virtual {p0, v5}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->queueImageToPool(Landroid/media/Image;)Landroid/media/Image;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setMainImage(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->close()V

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getDataStatusCallback()Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;->onImageClosed(Ljava/util/List;)V

    :cond_6
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isTuningImageFromPool()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isKeepTuningImage()Z

    move-result v0

    if-nez v0, :cond_a

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTuningImage()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image;

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v4

    :goto_4
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->isImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v6, "submit: wait tuning image pool>>"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {v5, v4, v0, v1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->waitIfImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;II)V

    sget-object v5, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->TAG:Ljava/lang/String;

    const-string v6, "submit: wait tuning image pool<<"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_5
    if-ge v1, v2, :cond_8

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image;

    invoke-virtual {p0, v4}, Lcom/xiaomi/camera/imagecodec/BaseReprocessor;->queueImageToPool(Landroid/media/Image;)Landroid/media/Image;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setTuningImage(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getDataStatusCallback()Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;->onImageClosed(Ljava/util/List;)V

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->sendReprocessRequest()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "NOT initialized. Call init() first!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
