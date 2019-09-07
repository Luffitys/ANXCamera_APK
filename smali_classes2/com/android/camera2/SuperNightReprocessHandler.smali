.class public Lcom/android/camera2/SuperNightReprocessHandler;
.super Landroid/os/Handler;
.source "SuperNightReprocessHandler.java"


# static fields
.field private static final MSG_CLEANUP:I = 0x13

.field private static final MSG_DATA:I = 0x10

.field private static final MSG_META:I = 0x11

.field private static final MSG_PREPARE:I = 0x12

.field private static final TAG:Ljava/lang/String; = "SNReprocessHandler"


# instance fields
.field private final mBaseEvIndex:I

.field private mCamera2Shot:Lcom/android/camera2/MiCamera2ShotRawBurst;

.field private final mCameraDevice:Lcom/android/camera2/MiCamera2;

.field private final mCaptureStateHandler:Landroid/os/Handler;

.field private final mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mMaxInputImageCount:I

.field private final mSuperNightProcess:Lcom/arcsoft/supernight/SuperNightProcess;

.field private final mUnprocessedData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnprocessedMeta:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/camera2/MiCamera2;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedMeta:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/camera2/MiCamera2ShotRawBurst;->EV_LIST:[I

    array-length p1, p1

    iput p1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mMaxInputImageCount:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mBaseEvIndex:I

    iput-object p2, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    iget-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCameraHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCaptureStateHandler:Landroid/os/Handler;

    new-instance p1, Lcom/arcsoft/supernight/SuperNightProcess;

    iget-object p2, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/arcsoft/supernight/SuperNightProcess;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mSuperNightProcess:Lcom/arcsoft/supernight/SuperNightProcess;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera2/SuperNightReprocessHandler;)Lcom/android/camera2/MiCamera2;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera2/SuperNightReprocessHandler;)Lcom/android/camera2/MiCamera2ShotRawBurst;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCamera2Shot:Lcom/android/camera2/MiCamera2ShotRawBurst;

    return-object p0
.end method

.method private clearCache()V
    .locals 3

    const-string v0, "SNReprocessHandler"

    const-string v1, "clearCache: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedMeta:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    const-string p0, "clearCache: X"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private convert(Landroid/graphics/Rect;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int v3, v0, v3

    if-le v2, v3, :cond_0

    sub-int v2, v0, v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    if-ge v2, v3, :cond_1

    iput v3, p1, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v1, v3

    if-le v2, v3, :cond_2

    sub-int v2, v1, v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    if-ge v2, v3, :cond_3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    if-le v2, v3, :cond_4

    int-to-float v2, v3

    mul-float/2addr v2, v4

    int-to-float v3, v1

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_4
    if-ge v2, v3, :cond_5

    int-to-float v2, v2

    mul-float/2addr v2, v4

    int-to-float v3, v0

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    rem-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_6

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    :cond_6
    iget v0, p1, Landroid/graphics/Rect;->top:I

    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_7
    iget v0, p1, Landroid/graphics/Rect;->right:I

    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_8

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_8
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_9

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_9
    iget-object p0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result p0

    invoke-static {p0, v2}, Lcom/android/camera/HybridZoomingSystem;->toCropRegion(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method private generateReprocessCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    new-instance v0, Lcom/android/camera2/SuperNightReprocessHandler$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/SuperNightReprocessHandler$1;-><init>(Lcom/android/camera2/SuperNightReprocessHandler;)V

    return-object v0
.end method

.method private sendReprocessRequest()V
    .locals 9

    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mMaxInputImageCount:I

    const-string v2, "SNReprocessHandler"

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedMeta:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mMaxInputImageCount:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mSuperNightProcess:Lcom/arcsoft/supernight/SuperNightProcess;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedMeta:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const-string v0, "sendReprocessRequest:<SNP>: E"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mSuperNightProcess:Lcom/arcsoft/supernight/SuperNightProcess;

    const/16 v1, 0x701

    iget-object v3, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/Image;

    invoke-virtual {v5}, Landroid/media/Image;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/Image;

    invoke-virtual {v6}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v4, v6, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    invoke-virtual {v0, v1, v3, v5, v4}, Lcom/arcsoft/supernight/SuperNightProcess;->init(IIII)I

    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getRawImageWriter()Landroid/media/ImageWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mSuperNightProcess:Lcom/arcsoft/supernight/SuperNightProcess;

    iget-object v4, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedMeta:Ljava/util/ArrayList;

    const/16 v6, 0xd12

    move-object v7, v0

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/arcsoft/supernight/SuperNightProcess;->addAllInputInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/media/Image;Landroid/graphics/Rect;)I

    iget-object v3, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mSuperNightProcess:Lcom/arcsoft/supernight/SuperNightProcess;

    invoke-virtual {v3}, Lcom/arcsoft/supernight/SuperNightProcess;->unInit()I

    const-string v3, "sendReprocessRequest:<SNP>: X"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->clearCache()V

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReprocessRequest:<CROP>: E "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/camera2/SuperNightReprocessHandler;->convert(Landroid/graphics/Rect;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReprocessRequest:<CROP>: X "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedMeta:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mMaxInputImageCount:I

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/TotalCaptureResult;

    :try_start_0
    const-string v4, "sendReprocessRequest:<CAM>: E"

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getRawImageWriter()Landroid/media/ImageWriter;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForJpeg(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v3, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getPhotoImageReader()Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCameraDevice:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->generateReprocessCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCaptureStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    const-string v0, "sendReprocessRequest:<CAM>: X"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "sendReprocessRequest:<CAM>"

    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->clearCache()V

    goto :goto_2

    :goto_1
    invoke-direct {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->clearCache()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->clearCache()V

    const-string p0, "sendReprocessRequest:<CAM>: CANCELLED"

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mSuperNightProcess:Lcom/arcsoft/supernight/SuperNightProcess;

    if-eqz v0, :cond_0

    const-string v0, "SNReprocessHandler"

    const-string v1, "cancelSuperNight: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mSuperNightProcess:Lcom/arcsoft/supernight/SuperNightProcess;

    invoke-virtual {v1}, Lcom/arcsoft/supernight/SuperNightProcess;->cancelSuperNight()V

    const-string v1, "cancelSuperNight: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->clearCache()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->clearCache()V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera2/MiCamera2ShotRawBurst;

    iput-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mCamera2Shot:Lcom/android/camera2/MiCamera2ShotRawBurst;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedMeta:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->sendReprocessRequest()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/camera2/SuperNightReprocessHandler;->mUnprocessedData:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/Image;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->sendReprocessRequest()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public prepare(Lcom/android/camera2/MiCamera2ShotRawBurst;)V
    .locals 1

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public queueCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public queueImage(Landroid/media/Image;)V
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
