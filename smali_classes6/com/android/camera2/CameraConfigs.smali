.class public Lcom/android/camera2/CameraConfigs;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MAX_JPEG_COMPRESSION_QUALITY:I = 0x64

.field private static final MIN_JPEG_COMPRESSION_QUALITY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraConfigs"


# instance fields
.field private flashCurrent:I

.field private hdrCheckerAdrc:I

.field private hdrCheckerEvValue:[I

.field private hdrCheckerSceneType:I

.field private hdrMode:I

.field private isFaceExist:Z

.field private isFlashAutoDetectionEnabled:Z

.field private isSuperNightEnabled:Z

.field private isUltraPixelPortraitEnabled:Z

.field private mAELocked:Z

.field private mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mASDEnable:Z

.field private mASDScene:I

.field private mAWBLocked:Z

.field private mActivityHashCode:I

.field private mAiAIIEPreviewEnabled:Z

.field private mAiASDEnabled:Z

.field private mAiMoonEffectEnabled:Z

.field private mAiSceneDetectPeriod:I

.field private mAiShutterEnable:Z

.field private mAiShutterExistMotion:Z

.field private mAlgorithmPreviewFormat:I

.field private mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

.field private mAmbilightAeTarget:I

.field private mAmbilightMode:I

.field private mAntiBanding:I

.field private mAsdDirtyEnable:Z

.field private mAutoZoomMode:I

.field private mAutoZoomScaleOffset:F

.field private mAwbCustomValue:I

.field private mAwbMode:I

.field private mBackVideoBokehColorRetentionMode:I

.field private mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field private mBinningPhotoSize:Lcom/android/camera/CameraSize;

.field private mBokehDepthSize:Lcom/android/camera/CameraSize;

.field private mCameraAi30Enabled:Z

.field private mCaptureTime:J

.field private mCaptureTriggerFlow:[I

.field private mCinematicPhotoEnabled:Z

.field private mCinematicVideoEnabled:Z

.field private mColorEffect:I

.field private mColorEnhanceEnabled:Z

.field private mContrastLevel:I

.field private mDeviceOrientation:I

.field private mDoRemosaic:Z

.field private mDodepurpleEnabled:Z

.field private mDualCamWaterMarkEnabled:Z

.field private mDxoAsdScene:Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

.field private mEISEnabled:Z

.field private mExposureCompensationIndex:I

.field private mExposureMeteringMode:I

.field private mExposureTime:J

.field private mExtendSceneMode:I

.field private mEyeLightType:I

.field private mFNumber:Ljava/lang/String;

.field private mFaceAgeAnalyzeEnabled:Z

.field private mFaceDetectionEnabled:Z

.field private mFaceScoreEnabled:Z

.field private mFaceWaterMarkEnabled:Z

.field private mFaceWaterMarkFormat:Ljava/lang/String;

.field private mFakeSatOutputSize:Lcom/android/camera/CameraSize;

.field private mFakeTelePhotoSize:Lcom/android/camera/CameraSize;

.field private mFeatureSetting:Lcom/xiaomi/camera/imagecodec/FeatureSetting;

.field private mFlashMode:I

.field private mFlawDetectEnable:Z

.field private mFocusDistance:F

.field private mFocusLockEnable:Z

.field private mFocusMode:I

.field private mFrontMirror:Z

.field private mFrontVideoBokehColorRetentionMode:I

.field private mGpsLocation:Landroid/location/Location;

.field private mHDR10VideoMode:I

.field private mHDRCheckerEnabled:Z

.field private mHDRCheckerStatus:I

.field private mHDRStatus:Lcom/android/camera2/Camera2Proxy$HDRStatus;

.field private mHFRDeflicker:Z

.field private mHHTEnabled:Z

.field private mHistogramStatsEnabled:Z

.field private mIsHighQualityPreferredEnable:Z

.field private mIsInTimerBurstShotting:Z

.field private mIsQcfaEnabled:Z

.field private mIsShot2Gallery:Z

.field private mIsVideoBokehEnabled:Z

.field private mIsVideoLogEnabled:Z

.field private mIso:I

.field private mJpegQuality:I

.field private mJpegRotation:I

.field private mLLSEnabled:Z

.field private mLensDirtyDetectEnabled:Z

.field private mLockedAlgoSize:Lcom/android/camera/CameraSize;

.field private mMFAfAeLock:Z

.field private mMacroMode:Z

.field private mMacroPhotoSize:Lcom/android/camera/CameraSize;

.field private mMfnrEnabled:Z

.field private mModuleAnchorFrame:Z

.field private mMtkPipDevices:[I

.field private mMultiSnapStopRequest:Z

.field private mNeedFlash:Z

.field private mNeedPausePreview:Z

.field private mNeedSequence:Z

.field private mNormalWideLDCEnabled:Z

.field private mOISEnabled:Z

.field private mOnTripodScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

.field private mOutputSize:Lcom/android/camera/CameraSize;

.field private mParallelPerformanceHDREnabled:I

.field private mParallelPerformanceLLSEnabled:I

.field private mParallelPerformanceMFNREnabled:I

.field private mParallelPerformanceSREnabled:I

.field private mParallelPerformanceSuperNightEnabled:I

.field private mParallelPerformanceZSLEnabled:I

.field private mParallelQualityHDREnabled:I

.field private mParallelQualityLLSEnabled:I

.field private mParallelQualityMFNREnabled:I

.field private mParallelQualitySREnabled:I

.field private mParallelQualitySuperNightEnabled:I

.field private mParallelQualityZSLEnabled:I

.field private mPhotoFormat:I

.field private mPhotoMaxImages:I

.field private mPhotoSize:Lcom/android/camera/CameraSize;

.field private mPortraitLightingPattern:I

.field private mPreviewFpsRange:Landroid/util/Range;

.field private mPreviewMaxImages:I

.field private mPreviewSize:Lcom/android/camera/CameraSize;

.field private mQuickShotAnimation:Z

.field private mRawSizeOfMacro:Lcom/android/camera/CameraSize;

.field private mRawSizeOfTele:Lcom/android/camera/CameraSize;

.field private mRawSizeOfTuningBuffer:Lcom/android/camera/CameraSize;

.field private mRawSizeOfUltraTele:Lcom/android/camera/CameraSize;

.field private mRawSizeOfUltraWide:Lcom/android/camera/CameraSize;

.field private mRawSizeOfWide:Lcom/android/camera/CameraSize;

.field private mRearBokehEnabled:Z

.field private mSATRemosicSize:Lcom/android/camera/CameraSize;

.field private mSaturationLevel:I

.field private mSceneMode:I

.field private mSensorRawImageSize:Lcom/android/camera/CameraSize;

.field private mSharpnessLevel:I

.field private mShotPath:Ljava/util/ArrayDeque;

.field private mShotPathThumbnail:Ljava/util/ArrayDeque;

.field private mShotType:I

.field private mSingleBokehEnabled:Z

.field private mSpecshotModeEnable:Z

.field private mSubPhotoSize:Lcom/android/camera/CameraSize;

.field private mSuperResolutionEnabled:Z

.field private mSwMfnrEnabled:Z

.field private mTargetZoom:F

.field private mTelePhotoSize:Lcom/android/camera/CameraSize;

.field private mThermalLevel:I

.field private mThumbnailSize:Lcom/android/camera/CameraSize;

.field private mTimeWaterMarkEnabled:Z

.field private mTimeWatermarkValue:Ljava/lang/String;

.field private mTuningBufferSize:Lcom/android/camera/CameraSize;

.field private mTuningMode:B

.field private mUltraTelePhotoSize:Lcom/android/camera/CameraSize;

.field private mUltraWideLDCEnabled:Z

.field private mUltraWidePhotoSize:Lcom/android/camera/CameraSize;

.field private mUseLegacyFlashMode:Z

.field private mVideoBokehLevelBack:I

.field private mVideoBokehLevelFront:F

.field private mVideoFilterColorRetentionBack:Z

.field private mVideoFilterColorRetentionFront:Z

.field private mVideoFilterId:I

.field private mVideoFpsRange:Landroid/util/Range;

.field private mVideoHdr:Z

.field private mVideoLogEnable:Z

.field private mVideoSize:Lcom/android/camera/CameraSize;

.field private mVideoSnapshotSize:Lcom/android/camera/CameraSize;

.field private mWaterMarkAppliedList:Ljava/util/List;

.field private mWidePhotoSize:Lcom/android/camera/CameraSize;

.field private mZoomRatio:F

.field private mZslEnabled:Z

.field private satFallbackDisable:Z

.field private satIsZooming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mJpegQuality:I

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mJpegRotation:I

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mDeviceOrientation:I

    const/16 v1, 0x23

    iput v1, p0, Lcom/android/camera2/CameraConfigs;->mAlgorithmPreviewFormat:I

    const/16 v1, 0x100

    iput v1, p0, Lcom/android/camera2/CameraConfigs;->mPhotoFormat:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera2/CameraConfigs;->mPreviewMaxImages:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/camera2/CameraConfigs;->mPhotoMaxImages:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/camera2/CameraConfigs;->mZoomRatio:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera2/CameraConfigs;->mFlashMode:I

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mFocusMode:I

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/camera2/CameraConfigs;->mFocusDistance:F

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mSceneMode:I

    iput v1, p0, Lcom/android/camera2/CameraConfigs;->mAwbMode:I

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mAntiBanding:I

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mColorEffect:I

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mContrastLevel:I

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mSaturationLevel:I

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mSharpnessLevel:I

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mExposureMeteringMode:I

    new-instance v4, Lcom/android/camera2/Camera2Proxy$HDRStatus;

    invoke-direct {v4, v2, v2, v2}, Lcom/android/camera2/Camera2Proxy$HDRStatus;-><init>(ZZZ)V

    iput-object v4, p0, Lcom/android/camera2/CameraConfigs;->mHDRStatus:Lcom/android/camera2/Camera2Proxy$HDRStatus;

    iput v2, p0, Lcom/android/camera2/CameraConfigs;->mShotType:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera2/CameraConfigs;->mShotPath:Ljava/util/ArrayDeque;

    iput-object v4, p0, Lcom/android/camera2/CameraConfigs;->mShotPathThumbnail:Ljava/util/ArrayDeque;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera2/CameraConfigs;->mWaterMarkAppliedList:Ljava/util/List;

    iput-boolean v2, p0, Lcom/android/camera2/CameraConfigs;->mDualCamWaterMarkEnabled:Z

    iput-boolean v2, p0, Lcom/android/camera2/CameraConfigs;->mTimeWaterMarkEnabled:Z

    iput-boolean v2, p0, Lcom/android/camera2/CameraConfigs;->mFaceWaterMarkEnabled:Z

    iput-boolean v2, p0, Lcom/android/camera2/CameraConfigs;->mNeedPausePreview:Z

    iput-boolean v2, p0, Lcom/android/camera2/CameraConfigs;->mIsQcfaEnabled:Z

    iput-boolean v1, p0, Lcom/android/camera2/CameraConfigs;->isFlashAutoDetectionEnabled:Z

    iput v2, p0, Lcom/android/camera2/CameraConfigs;->mAmbilightMode:I

    const-string v1, "-1"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera2/CameraConfigs;->mEyeLightType:I

    iput-object v4, p0, Lcom/android/camera2/CameraConfigs;->mTimeWatermarkValue:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/camera2/CameraConfigs;->mFaceWaterMarkFormat:Ljava/lang/String;

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mVideoBokehLevelBack:I

    iput v3, p0, Lcom/android/camera2/CameraConfigs;->mVideoBokehLevelFront:F

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mVideoFilterId:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mASDScene:I

    iput v2, p0, Lcom/android/camera2/CameraConfigs;->mThermalLevel:I

    iput v2, p0, Lcom/android/camera2/CameraConfigs;->mParallelPerformanceMFNREnabled:I

    iput v2, p0, Lcom/android/camera2/CameraConfigs;->mParallelPerformanceHDREnabled:I

    iput v2, p0, Lcom/android/camera2/CameraConfigs;->mParallelPerformanceSuperNightEnabled:I

    iput v2, p0, Lcom/android/camera2/CameraConfigs;->mParallelPerformanceLLSEnabled:I

    iput v2, p0, Lcom/android/camera2/CameraConfigs;->mParallelPerformanceSREnabled:I

    iput v2, p0, Lcom/android/camera2/CameraConfigs;->mParallelPerformanceZSLEnabled:I

    iput v2, p0, Lcom/android/camera2/CameraConfigs;->mParallelQualityMFNREnabled:I

    iput v2, p0, Lcom/android/camera2/CameraConfigs;->mParallelQualityHDREnabled:I

    iput v2, p0, Lcom/android/camera2/CameraConfigs;->mParallelQualitySuperNightEnabled:I

    iput v2, p0, Lcom/android/camera2/CameraConfigs;->mParallelQualityLLSEnabled:I

    iput v2, p0, Lcom/android/camera2/CameraConfigs;->mParallelQualitySREnabled:I

    iput v2, p0, Lcom/android/camera2/CameraConfigs;->mParallelQualityZSLEnabled:I

    return-void
.end method

.method private isSupportParallelLLSEnable()Z
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mParallelQualityLLSEnabled:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isLLSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result p0

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mParallelPerformanceLLSEnabled:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isMfnrEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private isSupportParallelMFNREnable()Z
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mParallelQualityMFNREnabled:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isMfnrEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isLLSEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mParallelPerformanceMFNREnabled:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isMfnrEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isLLSEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private isSupportParallelSREnable()Z
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mParallelQualitySREnabled:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isSuperResolutionEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mParallelPerformanceSREnabled:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isSuperResolutionEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private isSupportParallelSuperNightEnable()Z
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mParallelQualitySuperNightEnabled:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mParallelPerformanceSuperNightEnabled:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private isSupportParallelZSLEnable()Z
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mParallelQualityZSLEnabled:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isZslEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mParallelPerformanceZSLEnabled:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isZslEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method


# virtual methods
.method public getAERegions()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p0
.end method

.method public getAFRegions()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p0
.end method

.method public getASDScene()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mASDScene:I

    return p0
.end method

.method public getAWBMode()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mAwbMode:I

    return p0
.end method

.method public getActivityHashCode()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mActivityHashCode:I

    return p0
.end method

.method public getAiSceneDetectPeriod()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mAiSceneDetectPeriod:I

    return p0
.end method

.method public getAlgorithmPreviewFormat()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mAlgorithmPreviewFormat:I

    return p0
.end method

.method public getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getAmbilightMode()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mAmbilightMode:I

    return p0
.end method

.method public getAntiBanding()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mAntiBanding:I

    return p0
.end method

.method public getAutoZoomMode()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mAutoZoomMode:I

    return p0
.end method

.method public getAutoZoomScaleOffset()F
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mAutoZoomScaleOffset:F

    return p0
.end method

.method public getAwbCustomValue()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mAwbCustomValue:I

    return p0
.end method

.method public getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    return-object p0
.end method

.method public getBinningPhotoSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mBinningPhotoSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getBokehDepthSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mBokehDepthSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getCaptureTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera2/CameraConfigs;->mCaptureTime:J

    return-wide v0
.end method

.method public getCaptureTriggerFlow()[I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mCaptureTriggerFlow:[I

    return-object p0
.end method

.method public getColorEffect()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mColorEffect:I

    return p0
.end method

.method public getColorEnhanceEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mColorEnhanceEnabled:Z

    return p0
.end method

.method public getContrastLevel()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mContrastLevel:I

    return p0
.end method

.method public getDeviceOrientation()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mDeviceOrientation:I

    return p0
.end method

.method public getDoRemosaic()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mDoRemosaic:Z

    return p0
.end method

.method public getDxoAsdScene()Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mDxoAsdScene:Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    return-object p0
.end method

.method public getExposureCompensationIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mExposureCompensationIndex:I

    return p0
.end method

.method public getExposureMeteringMode()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mExposureMeteringMode:I

    return p0
.end method

.method public getExposureTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera2/CameraConfigs;->mExposureTime:J

    return-wide v0
.end method

.method public getExtendSceneMode()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mExtendSceneMode:I

    return p0
.end method

.method public getEyeLightType()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mEyeLightType:I

    return p0
.end method

.method public getFNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mFNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getFaceWaterMarkFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mFaceWaterMarkFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getFakeSatOutputSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mFakeSatOutputSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getFakeTelePhotoSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mFakeTelePhotoSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getFeatureSetting()Lcom/xiaomi/camera/imagecodec/FeatureSetting;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mFeatureSetting:Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    return-object p0
.end method

.method public getFlashCurrent()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->flashCurrent:I

    return p0
.end method

.method public getFlashMode()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mFlashMode:I

    return p0
.end method

.method public getFocusDistance()F
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mFocusDistance:F

    return p0
.end method

.method public getFocusMode()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mFocusMode:I

    return p0
.end method

.method public getGpsLocation()Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mGpsLocation:Landroid/location/Location;

    return-object p0
.end method

.method public getHDR10Video()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mHDR10VideoMode:I

    return p0
.end method

.method public getHDRCheckerStatus()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mHDRCheckerStatus:I

    return p0
.end method

.method public getHDRMode()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->hdrMode:I

    return p0
.end method

.method public getHDRStatus()Lcom/android/camera2/Camera2Proxy$HDRStatus;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mHDRStatus:Lcom/android/camera2/Camera2Proxy$HDRStatus;

    return-object p0
.end method

.method public getHdrCheckerAdrc()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->hdrCheckerAdrc:I

    return p0
.end method

.method public getHdrCheckerEvValue()[I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->hdrCheckerEvValue:[I

    return-object p0
.end method

.method public getHdrCheckerSceneType()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->hdrCheckerSceneType:I

    return p0
.end method

.method public getISO()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mIso:I

    return p0
.end method

.method public getJpegQuality()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mJpegQuality:I

    return p0
.end method

.method public getJpegRotation()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mJpegRotation:I

    return p0
.end method

.method public getLockedAlgoSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mLockedAlgoSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getMacroPhotoSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mMacroPhotoSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getNormalWideLDCEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mNormalWideLDCEnabled:Z

    return p0
.end method

.method public getOnTripodScenes()[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mOnTripodScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    return-object p0
.end method

.method public getOutputSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mOutputSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getPhotoFormat()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mPhotoFormat:I

    return p0
.end method

.method public getPhotoMaxImages()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mPhotoMaxImages:I

    return p0
.end method

.method public getPhotoSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mPhotoSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getPortraitLightingPattern()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mPortraitLightingPattern:I

    return p0
.end method

.method public getPreviewFpsRange()Landroid/util/Range;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mPreviewFpsRange:Landroid/util/Range;

    return-object p0
.end method

.method public getPreviewMaxImages()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mPreviewMaxImages:I

    return p0
.end method

.method public getPreviewSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mPreviewSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getRawSizeOfMacro()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mRawSizeOfMacro:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getRawSizeOfTele()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mRawSizeOfTele:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getRawSizeOfTuningBuffer()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mRawSizeOfTuningBuffer:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getRawSizeOfUltraTele()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mRawSizeOfUltraTele:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getRawSizeOfUltraWide()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mRawSizeOfUltraWide:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getRawSizeOfWide()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mRawSizeOfWide:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getSATRemosicPhotoSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mSATRemosicSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getSaturationLevel()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mSaturationLevel:I

    return p0
.end method

.method public getSceneMode()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mSceneMode:I

    return p0
.end method

.method public getSensorRawImageSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getSharpnessLevel()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mSharpnessLevel:I

    return p0
.end method

.method public getShotPath()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mShotPath:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/android/camera2/CameraConfigs;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShotPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mShotPath:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getShotType()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mShotType:I

    return p0
.end method

.method public getStandalonePhotoSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mUltraTelePhotoSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getSubPhotoSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mSubPhotoSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getTargetZoom()F
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mTargetZoom:F

    return p0
.end method

.method public getTelePhotoSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mTelePhotoSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getThermalLevel()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mThermalLevel:I

    return p0
.end method

.method public getThumbnailShotPath()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mShotPathThumbnail:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/android/camera2/CameraConfigs;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThumbnailShotPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mShotPathThumbnail:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getThumbnailSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mThumbnailSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getTimeWaterMarkValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mTimeWatermarkValue:Ljava/lang/String;

    return-object p0
.end method

.method public getTuningBufferSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mTuningBufferSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getTuringMode()B
    .locals 0

    iget-byte p0, p0, Lcom/android/camera2/CameraConfigs;->mTuningMode:B

    return p0
.end method

.method public getUltraWidePhotoSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mUltraWidePhotoSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getVideoBokehColorRetentionMode(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mFrontVideoBokehColorRetentionMode:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mBackVideoBokehColorRetentionMode:I

    :goto_0
    return p0
.end method

.method public getVideoBokehLevelBack()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mVideoBokehLevelBack:I

    return p0
.end method

.method public getVideoBokehLevelFront()F
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mVideoBokehLevelFront:F

    return p0
.end method

.method public getVideoFilterColorRetentionBack()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mVideoFilterColorRetentionBack:Z

    return p0
.end method

.method public getVideoFilterColorRetentionFront()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mVideoFilterColorRetentionFront:Z

    return p0
.end method

.method public getVideoFilterId()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mVideoFilterId:I

    return p0
.end method

.method public getVideoFpsRange()Landroid/util/Range;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mVideoFpsRange:Landroid/util/Range;

    return-object p0
.end method

.method public getVideoSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mVideoSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getVideoSnapshotSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mVideoSnapshotSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getWaterMarkAppliedList()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mWaterMarkAppliedList:Ljava/util/List;

    return-object p0
.end method

.method public getWidePhotoSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mWidePhotoSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getZoomRatio()F
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mZoomRatio:F

    return p0
.end method

.method public getmAmbilightAeTarget()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mAmbilightAeTarget:I

    return p0
.end method

.method public getmMtkPipDevices()[I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mMtkPipDevices:[I

    return-object p0
.end method

.method public isAELocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mAELocked:Z

    return p0
.end method

.method public isAIIEPreviewEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mAiAIIEPreviewEnabled:Z

    return p0
.end method

.method public isASDEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mASDEnable:Z

    return p0
.end method

.method public isAWBLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mAWBLocked:Z

    return p0
.end method

.method public isAiASDEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mAiASDEnabled:Z

    return p0
.end method

.method public isAiMoonEffectEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mAiMoonEffectEnabled:Z

    return p0
.end method

.method public isAiShutterEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mAiShutterEnable:Z

    return p0
.end method

.method public isAiShutterExistMotion()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mAiShutterExistMotion:Z

    return p0
.end method

.method public isAsdDirtyEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mAsdDirtyEnable:Z

    return p0
.end method

.method public isCameraAi30Enabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mCameraAi30Enabled:Z

    return p0
.end method

.method public isCinematicPhotoEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mCinematicPhotoEnabled:Z

    return p0
.end method

.method public isCinematicVideoEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mCinematicVideoEnabled:Z

    return p0
.end method

.method public isDodepurpleEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mDodepurpleEnabled:Z

    return p0
.end method

.method public isDualBokehEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mRearBokehEnabled:Z

    return p0
.end method

.method public isEISEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mEISEnabled:Z

    return p0
.end method

.method public isEnableRecordControl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mEISEnabled:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mIsVideoBokehEnabled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFaceAgeAnalyzeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mFaceAgeAnalyzeEnabled:Z

    return p0
.end method

.method public isFaceDetectionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mFaceDetectionEnabled:Z

    return p0
.end method

.method public isFaceExist()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->isFaceExist:Z

    return p0
.end method

.method public isFaceScoreEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mFaceScoreEnabled:Z

    return p0
.end method

.method public isFlashAutoDetectionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->isFlashAutoDetectionEnabled:Z

    return p0
.end method

.method public isFlawDetectEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mFlawDetectEnable:Z

    return p0
.end method

.method public isFrontMirror()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mFrontMirror:Z

    return p0
.end method

.method public isHDRCheckerEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mHDRCheckerEnabled:Z

    return p0
.end method

.method public isHDREnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mHDRStatus:Lcom/android/camera2/Camera2Proxy$HDRStatus;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isEnable()Z

    move-result p0

    return p0
.end method

.method public isHFRDeflicker()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mHFRDeflicker:Z

    return p0
.end method

.method public isHHTEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mHHTEnabled:Z

    return p0
.end method

.method public isHighQualityPreferred()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mIsHighQualityPreferredEnable:Z

    return p0
.end method

.method public isHistogramStatsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mHistogramStatsEnabled:Z

    return p0
.end method

.method public isInTimerBurstShotting()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mIsInTimerBurstShotting:Z

    return p0
.end method

.method public isLLSEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mLLSEnabled:Z

    return p0
.end method

.method public isLensDirtyDetectEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mLensDirtyDetectEnabled:Z

    return p0
.end method

.method public isMFAfAeLock()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mMFAfAeLock:Z

    return p0
.end method

.method public isMacroMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mMacroMode:Z

    return p0
.end method

.method public isMfnrEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mMfnrEnabled:Z

    return p0
.end method

.method public isModuleAnchorFrame()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mModuleAnchorFrame:Z

    return p0
.end method

.method public isMultiSnapStopRequest()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mMultiSnapStopRequest:Z

    return p0
.end method

.method public isNeedFlash()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mNeedFlash:Z

    return p0
.end method

.method public isNeedPausePreview()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mNeedPausePreview:Z

    return p0
.end method

.method public isNeedSequence()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mNeedSequence:Z

    return p0
.end method

.method public isOISEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mOISEnabled:Z

    return p0
.end method

.method public isParallelDualShotType()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result p0

    const/4 v0, -0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isParallelSupportedCaptureMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isSupportParallelHDREnable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera2/CameraConfigs;->isSupportParallelLLSEnable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera2/CameraConfigs;->isSupportParallelSuperNightEnable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera2/CameraConfigs;->isSupportParallelZSLEnable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera2/CameraConfigs;->isSupportParallelSREnable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera2/CameraConfigs;->isSupportParallelMFNREnable()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isQcfaEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mIsQcfaEnabled:Z

    return p0
.end method

.method public isQuickShotAnimation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mQuickShotAnimation:Z

    return p0
.end method

.method public isSatFallbackDisable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->satFallbackDisable:Z

    return p0
.end method

.method public isSatIsZooming()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->satIsZooming:Z

    return p0
.end method

.method public isShot2Gallery()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mIsShot2Gallery:Z

    return p0
.end method

.method public isSingleBokehEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mSingleBokehEnabled:Z

    return p0
.end method

.method public isSpecshotModeEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mSpecshotModeEnable:Z

    return p0
.end method

.method public isSuperNightEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled:Z

    return p0
.end method

.method public isSuperResolutionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mSuperResolutionEnabled:Z

    return p0
.end method

.method public isSupportParallelHDREnable()Z
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mParallelQualityHDREnabled:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mParallelPerformanceHDREnabled:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isSwMfnrEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mSwMfnrEnabled:Z

    return p0
.end method

.method public isUltraPixelPortraitEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->isUltraPixelPortraitEnabled:Z

    return p0
.end method

.method public isUltraWideLDCEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mUltraWideLDCEnabled:Z

    return p0
.end method

.method public isUseLegacyFlashMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mUseLegacyFlashMode:Z

    return p0
.end method

.method public isVideoHdrEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mVideoHdr:Z

    return p0
.end method

.method public isVideoLogEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mVideoLogEnable:Z

    return p0
.end method

.method public isVideoLogEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mIsVideoLogEnabled:Z

    return p0
.end method

.method public isZslEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/CameraConfigs;->mZslEnabled:Z

    return p0
.end method

.method public setAELock(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mAELocked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mAELocked:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAERegions([Landroid/hardware/camera2/params/MeteringRectangle;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAFRegions([Landroid/hardware/camera2/params/MeteringRectangle;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setASDEnable(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mASDEnable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mASDEnable:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setASDScene(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mASDScene:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mASDScene:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAWBLock(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mAWBLocked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mAWBLocked:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAWBMode(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mAwbMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mAwbMode:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setActivityHashCode(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mActivityHashCode:I

    return-void
.end method

.method public setAiAIIEPreviewEnable(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mAiAIIEPreviewEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mAiAIIEPreviewEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAiASDEnable(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mAiASDEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mAiASDEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAiMoonEffectEnable(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mAiMoonEffectEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mAiMoonEffectEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAiSceneDetectPeriod(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mAiSceneDetectPeriod:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mAiSceneDetectPeriod:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAiShutterEnable(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mAiShutterEnable:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mAiShutterEnable:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAiShutterExistMotion(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mAiShutterExistMotion:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mAiShutterExistMotion:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAlgorithmPreviewFormat(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mAlgorithmPreviewFormat:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mAlgorithmPreviewFormat:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAmbilightAeTarget(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mAmbilightAeTarget:I

    return-void
.end method

.method public setAmbilightMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mAmbilightMode:I

    return-void
.end method

.method public setAntiBanding(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mAntiBanding:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mAntiBanding:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAsdDirtyEnable(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mAsdDirtyEnable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mAsdDirtyEnable:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAutoZoomMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mAutoZoomMode:I

    return-void
.end method

.method public setAutoZoomScaleOffset(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mAutoZoomScaleOffset:F

    return-void
.end method

.method public setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    return-void
.end method

.method public setBinningPhotoSize(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mBinningPhotoSize:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mBinningPhotoSize:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setBokehDepthSize(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mBokehDepthSize:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mBokehDepthSize:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCameraAi30Enable(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mCameraAi30Enabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mCameraAi30Enabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCaptureTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/camera2/CameraConfigs;->mCaptureTime:J

    return-void
.end method

.method public setCaptureTriggerFlow([I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mCaptureTriggerFlow:[I

    return-void
.end method

.method public setCinematicPhotoEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mCinematicPhotoEnabled:Z

    return-void
.end method

.method public setCinematicVideoEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mCinematicVideoEnabled:Z

    return-void
.end method

.method public setColorEffect(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mColorEffect:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mColorEffect:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setColorEnhanceEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mColorEnhanceEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mColorEnhanceEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setContrastLevel(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mContrastLevel:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mContrastLevel:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCustomAWB(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mAwbCustomValue:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mAwbCustomValue:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setDeviceOrientation(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mDeviceOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mDeviceOrientation:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setDoRemosaic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mDoRemosaic:Z

    return-void
.end method

.method public setDodepurpleEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mDodepurpleEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mDodepurpleEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setDualBokehEnable(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mRearBokehEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mRearBokehEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setDualCamWaterMarkEnable(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mWaterMarkAppliedList:Ljava/util/List;

    const-string v1, "device"

    invoke-static {v1, v0}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mWaterMarkAppliedList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mWaterMarkAppliedList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mDualCamWaterMarkEnabled:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mDualCamWaterMarkEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public setDxoAsdScene(Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mDxoAsdScene:Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    return-void
.end method

.method public setEnableEIS(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mEISEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mEISEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setEnableOIS(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mOISEnabled:Z

    return-void
.end method

.method public setEnableZsl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mZslEnabled:Z

    return-void
.end method

.method public setExposureCompensationIndex(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mExposureCompensationIndex:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mExposureCompensationIndex:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setExposureMeteringMode(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mExposureMeteringMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mExposureMeteringMode:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setExposureTime(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/android/camera2/CameraConfigs;->mExposureTime:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/android/camera2/CameraConfigs;->mExposureTime:J

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setExtendSceneMode(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mExtendSceneMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mExtendSceneMode:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setEyeLight(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mEyeLightType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mEyeLightType:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setFNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mFNumber:Ljava/lang/String;

    return-void
.end method

.method public setFaceAgeAnalyzeEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mFaceAgeAnalyzeEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mFaceAgeAnalyzeEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setFaceDetectionEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mFaceDetectionEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mFaceDetectionEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setFaceScoreEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mFaceScoreEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mFaceScoreEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setFaceWaterMarkEnable(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mWaterMarkAppliedList:Ljava/util/List;

    const-string v1, "beautify"

    invoke-static {v1, v0}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mWaterMarkAppliedList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mWaterMarkAppliedList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mFaceWaterMarkEnabled:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mFaceWaterMarkEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public setFaceWaterMarkFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mFaceWaterMarkFormat:Ljava/lang/String;

    return-void
.end method

.method public setFakeSatOutputSize(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mFakeSatOutputSize:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mFakeSatOutputSize:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setFakeTelePhotoSize(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mFakeTelePhotoSize:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mFakeTelePhotoSize:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setFeatureSetting(Lcom/xiaomi/camera/imagecodec/FeatureSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mFeatureSetting:Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    return-void
.end method

.method public setFlashCurrent(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->flashCurrent:I

    return-void
.end method

.method public setFlashMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mFlashMode:I

    return-void
.end method

.method public setFlawDetectEnable(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mFlawDetectEnable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mFlawDetectEnable:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setFocusDistance(F)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mFocusDistance:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mFocusDistance:F

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setFocusMode(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mFocusMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mFocusMode:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setFrontMirror(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mFrontMirror:Z

    return-void
.end method

.method public setGlobalWatermark()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mWaterMarkAppliedList:Ljava/util/List;

    const-string v1, "global"

    invoke-static {v1, v0}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mWaterMarkAppliedList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setGpsLocation(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mGpsLocation:Landroid/location/Location;

    return-void
.end method

.method public setHDR10Video(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mHDR10VideoMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mHDR10VideoMode:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setHDRCheckerEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mHDRCheckerEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mHDRCheckerEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setHDRCheckerStatus(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mHDRCheckerStatus:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mHDRCheckerStatus:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setHDRMode(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->hdrMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->hdrMode:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setHDRStatus(Lcom/android/camera2/Camera2Proxy$HDRStatus;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mHDRStatus:Lcom/android/camera2/Camera2Proxy$HDRStatus;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mHDRStatus:Lcom/android/camera2/Camera2Proxy$HDRStatus;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setHFRDeflickerEnable(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mHFRDeflicker:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mHFRDeflicker:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setHHTEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mHHTEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mHHTEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setHdrCheckerAdrc(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->hdrCheckerAdrc:I

    return-void
.end method

.method public setHdrCheckerEvValue([I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->hdrCheckerEvValue:[I

    return-void
.end method

.method public setHdrCheckerSceneType(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->hdrCheckerSceneType:I

    return-void
.end method

.method public setHighQualityPreferred(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mIsHighQualityPreferredEnable:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mIsHighQualityPreferredEnable:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setHistogramStatsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mHistogramStatsEnabled:Z

    return-void
.end method

.method public setISO(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mIso:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mIso:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setInTimerBurstShotting(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mIsInTimerBurstShotting:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mIsInTimerBurstShotting:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setIsFaceExist(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->isFaceExist:Z

    return-void
.end method

.method public setIsVideoLogEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mIsVideoLogEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mIsVideoLogEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setJpegQuality(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_2

    const/16 v2, 0x64

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/camera2/CameraConfigs;->mJpegQuality:I

    if-eq v2, p1, :cond_1

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mJpegQuality:I

    return v1

    :cond_1
    return v0

    :cond_2
    :goto_0
    sget-object p0, Lcom/android/camera2/CameraConfigs;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setJpegQuality: invalid jpeg quality "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setJpegRotation(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mJpegRotation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mJpegRotation:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setLLSEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mLLSEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mLLSEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setLensDirtyDetectEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mLensDirtyDetectEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mLensDirtyDetectEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setLockedAlgoSize(Lcom/android/camera/CameraSize;)V
    .locals 3

    sget-object v0, Lcom/android/camera2/CameraConfigs;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockedAlgoSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mLockedAlgoSize:Lcom/android/camera/CameraSize;

    return-void
.end method

.method public setMFAfAeLock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mMFAfAeLock:Z

    return-void
.end method

.method public setMacroMode(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mMacroMode:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mMacroMode:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setMacroPhotoSize(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mMacroPhotoSize:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mMacroPhotoSize:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setMfnrEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mMfnrEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mMfnrEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setModuleAnchorFrame(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mModuleAnchorFrame:Z

    return-void
.end method

.method public setMtkPipDevices([I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mMtkPipDevices:[I

    return-void
.end method

.method public setMultiSnapStopRequest(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mMultiSnapStopRequest:Z

    return-void
.end method

.method public setNeedFlash(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mNeedFlash:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mNeedFlash:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setNeedSequence(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mNeedSequence:Z

    return-void
.end method

.method public setNewWatermark(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mWaterMarkAppliedList:Ljava/util/List;

    const-string v1, "new"

    invoke-static {v1, v0}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mWaterMarkAppliedList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mWaterMarkAppliedList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setNormalWideLDCEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mNormalWideLDCEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mNormalWideLDCEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setOnTripodScenes([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mOnTripodScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    return-void
.end method

.method public setOutputSize(Lcom/android/camera/CameraSize;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/camera/CameraSize;

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera2/CameraConfigs;->mOutputSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mOutputSize:Lcom/android/camera/CameraSize;

    :goto_0
    return-void
.end method

.method public setParallelSettings(II)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mParallelPerformanceMFNREnabled:I

    and-int/lit8 v0, p1, 0x2

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mParallelPerformanceHDREnabled:I

    and-int/lit8 v0, p1, 0x4

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mParallelPerformanceSuperNightEnabled:I

    and-int/lit8 v0, p1, 0x8

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mParallelPerformanceLLSEnabled:I

    and-int/lit8 v0, p1, 0x10

    shr-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera2/CameraConfigs;->mParallelPerformanceSREnabled:I

    and-int/lit8 p1, p1, 0x20

    shr-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mParallelPerformanceZSLEnabled:I

    and-int/lit8 p1, p2, 0x1

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mParallelQualityMFNREnabled:I

    and-int/lit8 p1, p2, 0x2

    shr-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mParallelQualityHDREnabled:I

    and-int/lit8 p1, p2, 0x4

    shr-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mParallelQualitySuperNightEnabled:I

    and-int/lit8 p1, p2, 0x8

    shr-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mParallelQualityLLSEnabled:I

    and-int/lit8 p1, p2, 0x10

    shr-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mParallelQualitySREnabled:I

    and-int/lit8 p1, p2, 0x20

    shr-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mParallelQualityZSLEnabled:I

    return-void
.end method

.method public setPausePreview(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mNeedPausePreview:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mNeedPausePreview:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setPhotoFormat(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mPhotoFormat:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mPhotoFormat:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setPhotoMaxImages(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mPhotoMaxImages:I

    return-void
.end method

.method public setPhotoSize(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mPhotoSize:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mPhotoSize:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setPortraitLightingPattern(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mPortraitLightingPattern:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mPortraitLightingPattern:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setPreviewFpsRange(Landroid/util/Range;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mPreviewFpsRange:Landroid/util/Range;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mPreviewFpsRange:Landroid/util/Range;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setPreviewMaxImages(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mPreviewMaxImages:I

    return-void
.end method

.method public setPreviewSize(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mPreviewSize:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setQcfaEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mIsQcfaEnabled:Z

    return-void
.end method

.method public setQuickShotAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mQuickShotAnimation:Z

    return-void
.end method

.method public setRawSizeOfMacro(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mRawSizeOfMacro:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mRawSizeOfMacro:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setRawSizeOfTele(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mRawSizeOfTele:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mRawSizeOfTele:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setRawSizeOfTuningBuffer(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mRawSizeOfTuningBuffer:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mRawSizeOfTuningBuffer:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setRawSizeOfUltraTele(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mRawSizeOfUltraTele:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mRawSizeOfUltraTele:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setRawSizeOfUltraWide(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mRawSizeOfUltraWide:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mRawSizeOfUltraWide:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setRawSizeOfWide(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mRawSizeOfWide:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mRawSizeOfWide:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSATRemosicPhotoSize(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mSATRemosicSize:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mSATRemosicSize:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSatFallbackDisable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->satFallbackDisable:Z

    return-void
.end method

.method public setSatIsZooming(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->satIsZooming:Z

    return-void
.end method

.method public setSaturationLevel(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mSaturationLevel:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mSaturationLevel:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSceneMode(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mSceneMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mSceneMode:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSensorRawImageSize(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSharpnessLevel(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mSharpnessLevel:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mSharpnessLevel:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setShot2Gallery(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mIsShot2Gallery:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mIsShot2Gallery:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setShotPath(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->isSaveToHidenFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez p2, :cond_0

    iget v1, p0, Lcom/android/camera2/CameraConfigs;->mShotType:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/camera2/CameraConfigs;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setShotPath: skip. shotType="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera2/CameraConfigs;->mShotType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera2/CameraConfigs;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShotPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mShotPath:Ljava/util/ArrayDeque;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera2/CameraConfigs;->mShotPath:Ljava/util/ArrayDeque;

    :cond_1
    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mShotPath:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/android/camera2/CameraConfigs;->mShotPathThumbnail:Ljava/util/ArrayDeque;

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p2, p0, Lcom/android/camera2/CameraConfigs;->mShotPathThumbnail:Ljava/util/ArrayDeque;

    :cond_3
    iget-object p0, p0, Lcom/android/camera2/CameraConfigs;->mShotPathThumbnail:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public setShotType(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mShotType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mShotType:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSingleBokehEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mSingleBokehEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mSingleBokehEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSpecshotModeEnable(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mSpecshotModeEnable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mSpecshotModeEnable:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSubPhotoSize(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mSubPhotoSize:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mSubPhotoSize:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSuperNightEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled:Z

    return-void
.end method

.method public setSuperResolutionEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mSuperResolutionEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mSuperResolutionEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSwMfnrEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mSwMfnrEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mSwMfnrEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setTargetZoom(F)Z
    .locals 1

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mTargetZoom:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mTargetZoom:F

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setTelePhotoSize(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mTelePhotoSize:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mTelePhotoSize:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setThermalLevel(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mThermalLevel:I

    return-void
.end method

.method public setThumbnailSize(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mThumbnailSize:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mThumbnailSize:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setTimeWaterMarkEnable(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mWaterMarkAppliedList:Ljava/util/List;

    const-string v1, "watermark"

    invoke-static {v1, v0}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mWaterMarkAppliedList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mWaterMarkAppliedList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mTimeWaterMarkEnabled:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mTimeWaterMarkEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public setTimeWaterMarkValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mTimeWatermarkValue:Ljava/lang/String;

    return-void
.end method

.method public setTuningBufferSize(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mTuningBufferSize:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mTuningBufferSize:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setTuningMode(B)Z
    .locals 1

    iget-byte v0, p0, Lcom/android/camera2/CameraConfigs;->mTuningMode:B

    if-eq p1, v0, :cond_0

    iput-byte p1, p0, Lcom/android/camera2/CameraConfigs;->mTuningMode:B

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setUltraPixelPortraitEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->isUltraPixelPortraitEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->isUltraPixelPortraitEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setUltraTelePhotoSize(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mUltraTelePhotoSize:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mUltraTelePhotoSize:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setUltraWideLDCEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mUltraWideLDCEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mUltraWideLDCEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setUltraWidePhotoSize(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mUltraWidePhotoSize:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mUltraWidePhotoSize:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setUseLegacyFlashMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mUseLegacyFlashMode:Z

    return-void
.end method

.method public setVideoBokehColorRetentionMode(IZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/camera2/CameraConfigs;->mFrontVideoBokehColorRetentionMode:I

    if-eq p2, p1, :cond_1

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mFrontVideoBokehColorRetentionMode:I

    return v0

    :cond_0
    iget p2, p0, Lcom/android/camera2/CameraConfigs;->mBackVideoBokehColorRetentionMode:I

    if-eq p2, p1, :cond_1

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mBackVideoBokehColorRetentionMode:I

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setVideoBokehEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mIsVideoBokehEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mIsVideoBokehEnabled:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setVideoBokehLevelBack(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mVideoBokehLevelBack:I

    return-void
.end method

.method public setVideoBokehLevelFront(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mVideoBokehLevelFront:F

    return-void
.end method

.method public setVideoFilterColorRetentionBack(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mVideoFilterColorRetentionBack:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mVideoFilterColorRetentionBack:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setVideoFilterColorRetentionFront(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mVideoFilterColorRetentionFront:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mVideoFilterColorRetentionFront:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setVideoFilterId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mVideoFilterId:I

    return-void
.end method

.method public setVideoFpsRange(Landroid/util/Range;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mVideoFpsRange:Landroid/util/Range;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mVideoFpsRange:Landroid/util/Range;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setVideoHdrEnable(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mVideoHdr:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mVideoHdr:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setVideoLogEnable(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera2/CameraConfigs;->mVideoLogEnable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->mVideoLogEnable:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setVideoSize(Lcom/android/camera/CameraSize;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mVideoSize:Lcom/android/camera/CameraSize;

    return-void
.end method

.method public setVideoSnapshotSize(Lcom/android/camera/CameraSize;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mVideoSnapshotSize:Lcom/android/camera/CameraSize;

    return-void
.end method

.method public setWidePhotoSize(Lcom/android/camera/CameraSize;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CameraConfigs;->mWidePhotoSize:Lcom/android/camera/CameraSize;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera2/CameraConfigs;->mWidePhotoSize:Lcom/android/camera/CameraSize;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setZoomRatio(F)Z
    .locals 4

    iget v0, p0, Lcom/android/camera2/CameraConfigs;->mZoomRatio:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget-object v1, Lcom/android/camera2/CameraConfigs;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoom ratio diff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera2/CameraConfigs;->mZoomRatio:F

    const/4 p0, 0x1

    return p0
.end method

.method public updateFlashAutoDetectionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/CameraConfigs;->isFlashAutoDetectionEnabled:Z

    return-void
.end method
