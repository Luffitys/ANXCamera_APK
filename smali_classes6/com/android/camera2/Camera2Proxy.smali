.class public abstract Lcom/android/camera2/Camera2Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/IPreviewMetadata;


# static fields
.field public static final INVALID_REQUEST_ID:I = -0x1

.field public static final PREVIEW_CALLBACK_CACHE_IMAGE:I = 0x10

.field public static final PREVIEW_CALLBACK_DISABLE:I = 0x0

.field public static final PREVIEW_CALLBACK_DOCUMENT:I = 0x20

.field public static final PREVIEW_CALLBACK_ENABLE_UNKNOWN:I = 0x1

.field public static final PREVIEW_CALLBACK_GOOGLE_LENS:I = 0x8

.field public static final PREVIEW_CALLBACK_HAND_GESTURE:I = 0x4

.field public static final PREVIEW_CALLBACK_SCAN_QR:I = 0x2

.field public static final RAW_CALLBACK_RAW_ALGO_HIDL:I = 0x8

.field public static final RAW_CALLBACK_RAW_HIDL:I = 0x4

.field public static final RAW_CALLBACK_RAW_NONE:I = 0x0

.field public static final RAW_CALLBACK_RAW_NORMAL:I = 0x1

.field public static final RAW_CALLBACK_RAW_REPROCESS:I = 0x2


# instance fields
.field final mActualCameraId:I

.field private mAnchorCallback:Lcom/android/camera2/Camera2Proxy$PreviewCallback;

.field protected mCacheImageDecoder:Lcom/android/zxing/CacheImageDecoder;

.field private final mCallbackLock:Ljava/lang/Object;

.field protected mErrorCallback:Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;

.field private mFocusCallback:Ljava/lang/ref/WeakReference;

.field mFocusFrameAvailable:Lcom/android/camera2/Camera2Proxy$IFirstCaptureFocus;

.field private volatile mIsFixedShotTimeEnabled:Z

.field private mMagneticDetectedCallback:Ljava/lang/ref/WeakReference;

.field private mMetadataCallback:Ljava/lang/ref/WeakReference;

.field private mParallelCallback:Lcom/xiaomi/camera/core/ParallelCallback;

.field private mPictureCallBack:Lcom/android/camera2/Camera2Proxy$PictureCallback;

.field private mPreviewCallback:Lcom/android/camera2/Camera2Proxy$PreviewCallback;

.field private mScreenLightCallback:Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/Camera2Proxy;->mCallbackLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera2/Camera2Proxy;->mIsFixedShotTimeEnabled:Z

    iput p1, p0, Lcom/android/camera2/Camera2Proxy;->mActualCameraId:I

    return-void
.end method


# virtual methods
.method public abstract applyAiShutterEnable(Z)V
.end method

.method public abstract applyHighQualityPreferred(Z)V
.end method

.method public abstract applyVideoHdrMode(Z)V
.end method

.method public abstract cancelContinuousShot()V
.end method

.method public abstract cancelFocus(I)V
.end method

.method public abstract cancelSession()V
.end method

.method public abstract captureAbortBurst()V
.end method

.method public abstract captureBurstPictures(ILcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;)V
    .param p2    # Lcom/android/camera2/Camera2Proxy$PictureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/camera/core/ParallelCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract captureGroupShotPictures(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;ILandroid/content/Context;)V
    .param p1    # Lcom/android/camera2/Camera2Proxy$PictureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/camera/core/ParallelCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract captureVideoSnapshot(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V
.end method

.method public abstract close()Z
.end method

.method public abstract forceTurnFlashONAndPausePreview()V
.end method

.method public abstract forceTurnFlashOffAndPausePreview()V
.end method

.method public abstract getActivityHashCode()I
.end method

.method public abstract getAlgorithmPreviewFormat()I
.end method

.method public abstract getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;
.end method

.method getAnchorCallback()Lcom/android/camera2/Camera2Proxy$PreviewCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/Camera2Proxy;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/camera2/Camera2Proxy;->mAnchorCallback:Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract getBinningPictureSize()Lcom/android/camera/CameraSize;
.end method

.method public abstract getBokehAuxCameraId()I
.end method

.method public abstract getBokehDepthSize()Lcom/android/camera/CameraSize;
.end method

.method public abstract getCacheImageDecoder()Lcom/android/zxing/CacheImageDecoder;
.end method

.method public abstract getCameraConfigs()Lcom/android/camera2/CameraConfigs;
.end method

.method public abstract getCameraDevice()Landroid/hardware/camera2/CameraDevice;
.end method

.method public abstract getCameraHandler()Landroid/os/Handler;
.end method

.method public abstract getCapabilities()Lcom/android/camera2/CameraCapabilities;
.end method

.method protected abstract getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;
.end method

.method public abstract getCurrentAEState()Ljava/lang/Integer;
.end method

.method protected abstract getDepthImageReader()Landroid/media/ImageReader;
.end method

.method public abstract getExposureCompensation()I
.end method

.method public abstract getExtendSceneMode()I
.end method

.method public abstract getFlashMode()I
.end method

.method getFocusCallback()Lcom/android/camera2/Camera2Proxy$FocusCallback;
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/Camera2Proxy;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/Camera2Proxy;->mFocusCallback:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/camera2/Camera2Proxy;->mFocusCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/Camera2Proxy$FocusCallback;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract getFocusMode()I
.end method

.method public abstract getHDRMode()I
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/Camera2Proxy;->mActualCameraId:I

    return p0
.end method

.method public getMagneticDetectedCallback()Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/Camera2Proxy;->mMagneticDetectedCallback:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method getMetadataCallback()Lcom/android/camera2/Camera2Proxy$CameraMetaDataCallback;
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/Camera2Proxy;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/Camera2Proxy;->mMetadataCallback:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/camera2/Camera2Proxy;->mMetadataCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/Camera2Proxy$CameraMetaDataCallback;

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

.method getParallelCallback()Lcom/xiaomi/camera/core/ParallelCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/Camera2Proxy;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/camera2/Camera2Proxy;->mParallelCallback:Lcom/xiaomi/camera/core/ParallelCallback;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract getParallelShotSavePath()Ljava/lang/String;
.end method

.method protected abstract getPhotoImageReader()Landroid/media/ImageReader;
.end method

.method getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/Camera2Proxy;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/camera2/Camera2Proxy;->mPictureCallBack:Lcom/android/camera2/Camera2Proxy$PictureCallback;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract getPictureFormat()I
.end method

.method public abstract getPictureMaxImages()I
.end method

.method public abstract getPictureSize()Lcom/android/camera/CameraSize;
.end method

.method protected abstract getPortraitRawImageReader()Landroid/media/ImageReader;
.end method

.method getPreviewCallback()Lcom/android/camera2/Camera2Proxy$PreviewCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/Camera2Proxy;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/camera2/Camera2Proxy;->mPreviewCallback:Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;
.end method

.method public abstract getPreviewMaxImages()I
.end method

.method protected abstract getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
.end method

.method public abstract getPreviewSize()Lcom/android/camera/CameraSize;
.end method

.method protected abstract getPreviewSurface()Landroid/view/Surface;
.end method

.method public abstract getRawCallbackType()I
.end method

.method protected abstract getRawImageReader()Landroid/media/ImageReader;
.end method

.method protected abstract getRawImageWriter()Landroid/media/ImageWriter;
.end method

.method protected abstract getRawSurface()Landroid/view/Surface;
.end method

.method protected abstract getRecordSurface()Landroid/view/Surface;
.end method

.method public abstract getSATSubCameraIds()[I
.end method

.method public abstract getSatCapabilities()Lcom/android/camera2/CameraCapabilities;
.end method

.method public abstract getSatMasterCameraId()I
.end method

.method public abstract getSceneMode()I
.end method

.method getScreenLightCallback()Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/Camera2Proxy;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/camera2/Camera2Proxy;->mScreenLightCallback:Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract getSensorRawImageSize()Lcom/android/camera/CameraSize;
.end method

.method public abstract getShotBoostParams()Ljava/util/function/Consumer;
.end method

.method public abstract getSuperNight()Z
.end method

.method protected abstract getVideoSnapshotImageReader()Landroid/media/ImageReader;
.end method

.method public abstract getZoomRatio()F
.end method

.method public abstract isCaptureBusy(Z)Z
.end method

.method public abstract isDisconnected()Z
.end method

.method public abstract isFacingFront()Z
.end method

.method public abstract isFakeSatEnable()Z
.end method

.method public isFixShotTime()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/Camera2Proxy;->mIsFixedShotTimeEnabled:Z

    return p0
.end method

.method public abstract isInMultiSurfaceSatMode()Z
.end method

.method public abstract isInTimerBurstShotting()Z
.end method

.method public abstract isMacroMode()Z
.end method

.method public abstract isModuleAnchorFrame()Z
.end method

.method public abstract isNeedFlashForAuto(Ljava/lang/Integer;I)Z
.end method

.method public abstract isNeedFlashOn()Z
.end method

.method public abstract isNeedPreviewThumbnail()Z
.end method

.method public abstract isParallelBusy(Z)Z
.end method

.method public abstract isPreviewReady()Z
.end method

.method public abstract isQcfaEnable()Z
.end method

.method public abstract isSessionReady()Z
.end method

.method public abstract isShotQueueMultitasking()Z
.end method

.method public abstract isSingleBokehEnabled()Z
.end method

.method public abstract lockExposure(Z)V
.end method

.method public abstract lockExposure(ZZ)V
.end method

.method protected notifyOnError(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/Camera2Proxy;->mErrorCallback:Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;->onCameraError(Lcom/android/camera2/Camera2Proxy;I)V

    :cond_0
    return-void
.end method

.method public abstract notifyVideoStreamEnd()V
.end method

.method public abstract onCameraDisconnected()V
.end method

.method public abstract onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V
.end method

.method public abstract onMultiSnapEnd(ZLcom/android/camera2/MiCamera2Shot;)V
.end method

.method public abstract onParallelImagePostProcStart()V
.end method

.method public abstract onPreviewComing()V
.end method

.method public abstract onPreviewThumbnailReceived(Lcom/android/camera/Thumbnail;)V
.end method

.method public abstract pausePreview()V
.end method

.method public abstract releaseCameraPreviewCallback(Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .param p1    # Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract releaseFakeSurfaceIfNeed()V
.end method

.method public abstract releasePreview(I)V
.end method

.method public abstract resetConfigs()V
.end method

.method public abstract resetFlashStateTimeLock()V
.end method

.method public abstract resumePreview()I
.end method

.method public abstract sendSatFallbackDisableRequest(ZZ)V
.end method

.method public abstract sendSatFallbackRequest(I)I
.end method

.method public abstract setAELock(Z)V
.end method

.method public abstract setAERegions([Landroid/hardware/camera2/params/MeteringRectangle;)V
.end method

.method public abstract setAFRegions([Landroid/hardware/camera2/params/MeteringRectangle;)V
.end method

.method public abstract setAIIEPreviewEnable(Z)V
.end method

.method public abstract setASDEnable(Z)V
.end method

.method public abstract setASDPeriod(I)V
.end method

.method public abstract setASDScene(I)V
.end method

.method public abstract setAWBLock(Z)V
.end method

.method public abstract setAWBMode(I)V
.end method

.method public abstract setActivityHashCode(I)V
.end method

.method public abstract setAiASDEnable(Z)V
.end method

.method public abstract setAiMoonEffectEnable(Z)V
.end method

.method public abstract setAiShutterExistMotion(Z)V
.end method

.method public abstract setAlgorithmPreviewFormat(I)V
.end method

.method public abstract setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setAmbilightAeTarget(I)V
.end method

.method public abstract setAmbilightMode(I)V
.end method

.method setAnchorCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/Camera2Proxy;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/camera2/Camera2Proxy;->mAnchorCallback:Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract setAntiBanding(I)V
.end method

.method public abstract setAsdDirtyEnable(Z)V
.end method

.method public abstract setAutoZoomMode(I)V
.end method

.method public abstract setAutoZoomScaleOffset(F)V
.end method

.method public abstract setAutoZoomStartCapture([FZ)V
.end method

.method public abstract setAutoZoomStopCapture(IZ)V
.end method

.method public abstract setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V
.end method

.method public abstract setBinningPictureSize(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setBokehDepthSize(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setBurstShotSpeed(I)V
.end method

.method public abstract setCacheImageDecoder(Lcom/android/zxing/CacheImageDecoder;)V
.end method

.method public abstract setCameraAI30(Z)V
.end method

.method public abstract setCaptureBusyCallback(Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;)V
.end method

.method public abstract setCaptureTime(J)V
.end method

.method public abstract setCaptureTriggerFlow([I)V
.end method

.method public abstract setCinematicPhotoEnabled(Z)V
.end method

.method public abstract setCinematicVideoEnabled(Z)V
.end method

.method public abstract setColorEffect(I)V
.end method

.method public abstract setColorEnhanceEnable(Z)V
.end method

.method public abstract setContrast(I)V
.end method

.method public abstract setCustomAWB(I)V
.end method

.method public abstract setDeviceOrientation(I)V
.end method

.method public abstract setDisplayOrientation(I)V
.end method

.method public abstract setDodepurpleEnabled(Z)V
.end method

.method public abstract setDualBokehEnable(Z)V
.end method

.method public abstract setDualCamWaterMarkEnable(Z)V
.end method

.method public abstract setEnableEIS(Z)V
.end method

.method public abstract setEnableOIS(Z)V
.end method

.method public abstract setEnableZsl(Z)V
.end method

.method public setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V
    .locals 0
    .param p1    # Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/camera2/Camera2Proxy;->mErrorCallback:Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;

    return-void
.end method

.method public abstract setExposureCompensation(I)V
.end method

.method public abstract setExposureMeteringMode(I)V
.end method

.method public abstract setExposureTime(J)V
.end method

.method public abstract setExtendSceneMode(I)V
.end method

.method public abstract setEyeLight(I)V
.end method

.method public abstract setFNumber(Ljava/lang/String;)V
.end method

.method public abstract setFaceAgeAnalyze(Z)V
.end method

.method public abstract setFaceScore(Z)V
.end method

.method public abstract setFaceWaterMarkEnable(Z)V
.end method

.method public abstract setFaceWaterMarkFormat(Ljava/lang/String;)V
.end method

.method public abstract setFakeTeleOutputSize(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setFakeTelePictureSize(Lcom/android/camera/CameraSize;)V
.end method

.method public setFixShotTimeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/Camera2Proxy;->mIsFixedShotTimeEnabled:Z

    return-void
.end method

.method public abstract setFlashMode(I)V
.end method

.method public abstract setFlawDetectEnable(Z)V
.end method

.method public setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/Camera2Proxy;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera2/Camera2Proxy;->mFocusCallback:Ljava/lang/ref/WeakReference;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract setFocusDistance(F)V
.end method

.method public setFocusFrameAvailable(Lcom/android/camera2/Camera2Proxy$IFirstCaptureFocus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/Camera2Proxy;->mFocusFrameAvailable:Lcom/android/camera2/Camera2Proxy$IFirstCaptureFocus;

    return-void
.end method

.method public abstract setFocusMode(I)V
.end method

.method public abstract setFpsRange(Landroid/util/Range;)V
.end method

.method public abstract setFrontMirror(Z)V
.end method

.method public abstract setGlobalWatermark()V
.end method

.method public abstract setGpsLocation(Landroid/location/Location;)V
.end method

.method public abstract setHDR(Lcom/android/camera2/Camera2Proxy$HDRStatus;)V
.end method

.method public abstract setHDRCheckerEnable(Z)V
.end method

.method public abstract setHDRCheckerStatus(I)V
.end method

.method public abstract setHDRMode(I)V
.end method

.method public abstract setHFRDeflickerEnable(Z)V
.end method

.method public abstract setHHT(Z)V
.end method

.method public abstract setHdr10VideoMode(Z)V
.end method

.method public abstract setHistogramStatsEnabled(Z)V
.end method

.method public abstract setISO(I)V
.end method

.method public abstract setInTimerBurstShotting(Z)V
.end method

.method public abstract setIsFaceExist(Z)V
.end method

.method public abstract setJpegQuality(I)V
.end method

.method public abstract setJpegRotation(I)V
.end method

.method public abstract setJpegThumbnailSize(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setLLS(Z)V
.end method

.method public abstract setLensDirtyDetect(Z)V
.end method

.method public abstract setMFLockAfAe(Z)V
.end method

.method public abstract setMacroMode(Z)V
.end method

.method public setMagneticDetectedCallback(Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera2/Camera2Proxy;->mMagneticDetectedCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public abstract setMarcroPictureSize(Lcom/android/camera/CameraSize;)V
.end method

.method public setMetaDataCallback(Lcom/android/camera2/Camera2Proxy$CameraMetaDataCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/Camera2Proxy;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera2/Camera2Proxy;->mMetadataCallback:Ljava/lang/ref/WeakReference;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract setMfnr(Z)V
.end method

.method public abstract setModuleAnchorFrame(Z)V
.end method

.method public abstract setModuleParameter(II)V
.end method

.method public abstract setMtkPipDevices([I)V
.end method

.method public abstract setMultiSnapStopRequest(Z)V
.end method

.method public abstract setNeedPausePreview(Z)V
.end method

.method public abstract setNeedSequence(Z)V
.end method

.method public abstract setNewWatermark(Z)V
.end method

.method public abstract setNormalWideLDC(Z)V
.end method

.method public abstract setOnTripodModeStatus([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
.end method

.method public abstract setOpticalZoomToTele(Z)V
.end method

.method setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/Camera2Proxy;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/camera2/Camera2Proxy;->mParallelCallback:Lcom/xiaomi/camera/core/ParallelCallback;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract setParallelSettings(II)V
.end method

.method setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/Camera2Proxy;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/camera2/Camera2Proxy;->mPictureCallBack:Lcom/android/camera2/Camera2Proxy$PictureCallback;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract setPictureFormat(I)V
.end method

.method public abstract setPictureMaxImages(I)V
.end method

.method public abstract setPictureSize(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setPortraitLighting(I)V
.end method

.method setPreviewCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/Camera2Proxy;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/camera2/Camera2Proxy;->mPreviewCallback:Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract setPreviewMaxImages(I)V
.end method

.method public abstract setPreviewSize(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setQcfaEnable(Z)V
.end method

.method public abstract setQuickShotAnimation(Z)V
.end method

.method public abstract setRawSizeOfMacro(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setRawSizeOfTele(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setRawSizeOfTuningBuffer(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setRawSizeOfUltraTele(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setRawSizeOfUltraWide(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setRawSizeOfWide(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setSATRemosicPictureSize(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setSATUltraWideLDC(Z)V
.end method

.method public abstract setSatIsZooming(Z)V
.end method

.method public abstract setSaturation(I)V
.end method

.method public abstract setSceneMode(I)V
.end method

.method public setScreenLightCallback(Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/Camera2Proxy;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/camera2/Camera2Proxy;->mScreenLightCallback:Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract setSensorRawImageSize(Lcom/android/camera/CameraSize;I)V
.end method

.method public abstract setSharpness(I)V
.end method

.method public abstract setShot2Gallery(Z)V
.end method

.method public abstract setShotBoostParams(Ljava/util/function/Consumer;)V
.end method

.method public abstract setShotSavePath(Ljava/lang/String;Z)V
.end method

.method public abstract setShotType(I)V
.end method

.method public abstract setSingleBokeh(Z)V
.end method

.method public abstract setSpecshotModeEnable(Z)V
.end method

.method public abstract setSubPictureSize(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setSuperNight(Z)V
.end method

.method public abstract setSuperResolution(Z)V
.end method

.method public abstract setSwMfnr(Z)V
.end method

.method public abstract setTargetZoom(F)V
.end method

.method public abstract setTelePictureSize(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setThermalLevel(I)V
.end method

.method public abstract setTimeWaterMarkEnable(Z)V
.end method

.method public abstract setTimeWatermarkValue(Ljava/lang/String;)V
.end method

.method public abstract setTuningBufferSize(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setTuningMode(B)V
.end method

.method public abstract setUltraPixelPortrait(Z)V
.end method

.method public abstract setUltraTelePictureSize(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setUltraWideLDC(Z)V
.end method

.method public abstract setUltraWidePictureSize(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setUseLegacyFlashMode(Z)V
.end method

.method public abstract setVendorSetting(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
.end method

.method public abstract setVideoBokehLevelBack(I)V
.end method

.method public abstract setVideoBokehLevelFront(F)V
.end method

.method public abstract setVideoFilterColorRetentionBack(Z)V
.end method

.method public abstract setVideoFilterColorRetentionFront(Z)V
.end method

.method public abstract setVideoFilterColorRetentionMode(IZ)V
.end method

.method public abstract setVideoFilterId(I)V
.end method

.method public abstract setVideoFpsRange(Landroid/util/Range;)V
.end method

.method public abstract setVideoLogEnabled(Z)V
.end method

.method public abstract setVideoSnapshotSize(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setWidePictureSize(Lcom/android/camera/CameraSize;)V
.end method

.method public abstract setZoomRatio(F)V
.end method

.method public abstract setZoomRatioForCapture(F)V
.end method

.method public abstract startFaceDetection()V
.end method

.method public abstract startFocus(Lcom/android/camera/module/loader/camera2/FocusTask;I)V
.end method

.method public abstract startHighSpeedRecordPreview()V
.end method

.method public abstract startHighSpeedRecordSession(Landroid/view/Surface;Landroid/view/Surface;Landroid/util/Range;Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startHighSpeedRecording()V
.end method

.method public abstract startObjectTrack(Landroid/graphics/RectF;)V
.end method

.method public abstract startPreviewCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V
.end method

.method public abstract startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
.end method

.method public abstract startRecordPreview()V
.end method

.method public abstract startRecordSession(Landroid/view/Surface;Landroid/view/Surface;ZILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startRecording(Z)V
.end method

.method public abstract startVideoPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
.end method

.method public abstract stopFaceDetection()V
.end method

.method public abstract stopObjectTrack()V
.end method

.method public abstract stopPreviewCallback(Z)V
.end method

.method public abstract stopRecording()V
.end method

.method public abstract takePicture(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;)V
    .param p1    # Lcom/android/camera2/Camera2Proxy$PictureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/camera/core/ParallelCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract takeSimplePicture(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/CameraScreenNail;)V
    .param p1    # Lcom/android/camera2/Camera2Proxy$PictureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/camera/storage/ImageSaver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/camera/CameraScreenNail;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract unlockExposure()V
.end method

.method public abstract updateDeferPreviewSession(Landroid/view/Surface;)Z
.end method

.method public abstract updateFlashAutoDetectionEnabled(Z)V
.end method

.method public abstract updateFlashStateTimeLock()V
.end method

.method public abstract useLegacyFlashStrategy()Z
.end method

.method public abstract useSingleCaptureForHdrPlusMfnr(Lcom/android/camera2/CameraCapabilities;)Z
.end method
