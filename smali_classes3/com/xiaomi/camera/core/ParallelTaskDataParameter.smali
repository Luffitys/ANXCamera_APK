.class public Lcom/xiaomi/camera/core/ParallelTaskDataParameter;
.super Ljava/lang/Object;
.source "ParallelTaskDataParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    }
.end annotation


# instance fields
.field private mAgeGenderAndMagicMirrorWater:Z

.field private mAlgorithmName:Ljava/lang/String;

.field private mBokehFrontCamera:Z

.field private mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

.field private mFaceWaterMarkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterId:I

.field private mHasDualWaterMark:Z

.field private mIsFrontCamera:Z

.field private mIsMoonMode:Z

.field private mJpegQuality:I

.field private mJpegRotation:I

.field private mLightingPattern:I

.field private mLocation:Landroid/location/Location;

.field private mMirror:Z

.field private mOrientation:I

.field private mOutputFormat:I

.field private mOutputSize:Landroid/util/Size;

.field private mPictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

.field private mPictureSize:Landroid/util/Size;

.field private mPrefix:Ljava/lang/String;

.field private mPreviewSize:Landroid/util/Size;

.field private mRawSize:Landroid/util/Size;

.field private mReprocessBurstShotPicture:Z

.field private mSaveGroupshotPrimitive:Z

.field private mShootOrientation:I

.field private mShootRotation:F

.field private mSuffix:Ljava/lang/String;

.field private mTiltShiftMode:Ljava/lang/String;

.field private mTimeWaterMarkString:Ljava/lang/String;

.field private mVendorWaterMark:Z


# direct methods
.method private constructor <init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPreviewSize:Landroid/util/Size;

    iput-object p2, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    iput-object p3, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    iput p4, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputFormat:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;ILcom/xiaomi/camera/core/ParallelTaskDataParameter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mHasDualWaterMark:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mHasDualWaterMark:Z

    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMirror:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMirror:Z

    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLightingPattern:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLightingPattern:I

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPreviewSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v2, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPreviewSize:Landroid/util/Size;

    :cond_0
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v2, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    :cond_1
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mRawSize:Landroid/util/Size;

    if-eqz v0, :cond_2

    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v2, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mRawSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mRawSize:Landroid/util/Size;

    :cond_2
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFilterId:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFilterId:I

    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOrientation:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOrientation:I

    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegRotation:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegRotation:I

    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootRotation:F

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootRotation:F

    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootOrientation:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootOrientation:I

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_3

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLocation:Landroid/location/Location;

    :cond_3
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTimeWaterMarkString:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTimeWaterMarkString:Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFaceWaterMarkList:Ljava/util/List;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFaceWaterMarkList:Ljava/util/List;

    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAgeGenderAndMagicMirrorWater:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAgeGenderAndMagicMirrorWater:Z

    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsFrontCamera:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsFrontCamera:Z

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    if-eqz v0, :cond_4

    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v2, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    :cond_4
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputFormat:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputFormat:I

    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mBokehFrontCamera:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mBokehFrontCamera:Z

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAlgorithmName:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAlgorithmName:Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSuffix:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSuffix:Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTiltShiftMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTiltShiftMode:Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    iget p1, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegQuality:I

    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegQuality:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/xiaomi/camera/core/ParallelTaskDataParameter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;-><init>(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootOrientation:I

    return p1
.end method

.method static synthetic access$1102(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTimeWaterMarkString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFaceWaterMarkList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAgeGenderAndMagicMirrorWater:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsFrontCamera:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mBokehFrontCamera:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAlgorithmName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSuffix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTiltShiftMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mHasDualWaterMark:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSaveGroupshotPrimitive:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegQuality:I

    return p1
.end method

.method static synthetic access$2402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPrefix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mRawSize:Landroid/util/Size;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsMoonMode:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mReprocessBurstShotPicture:Z

    return p1
.end method

.method static synthetic access$302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mVendorWaterMark:Z

    return p1
.end method

.method static synthetic access$402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMirror:Z

    return p1
.end method

.method static synthetic access$502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLightingPattern:I

    return p1
.end method

.method static synthetic access$602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFilterId:I

    return p1
.end method

.method static synthetic access$702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOrientation:I

    return p1
.end method

.method static synthetic access$802(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegRotation:I

    return p1
.end method

.method static synthetic access$902(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;F)F
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootRotation:F

    return p1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAlgorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceWatermarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    return-object p0
.end method

.method public getFaceWaterMarkList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFaceWaterMarkList:Ljava/util/List;

    return-object p0
.end method

.method public getFilterId()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFilterId:I

    return p0
.end method

.method public getJpegQuality()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegQuality:I

    return p0
.end method

.method public getJpegRotation()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegRotation:I

    return p0
.end method

.method public getLightingPattern()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLightingPattern:I

    return p0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOrientation:I

    return p0
.end method

.method public getOutputFormat()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputFormat:I

    return p0
.end method

.method public getOutputSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    return-object p0
.end method

.method public getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    return-object p0
.end method

.method public getPictureSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method public getRawSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mRawSize:Landroid/util/Size;

    return-object p0
.end method

.method public getShootOrientation()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootOrientation:I

    return p0
.end method

.method public getShootRotation()F
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootRotation:F

    return p0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public getTiltShiftMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTiltShiftMode:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeWaterMarkString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTimeWaterMarkString:Ljava/lang/String;

    return-object p0
.end method

.method public getVendorWaterMark()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mVendorWaterMark:Z

    return p0
.end method

.method public isAgeGenderAndMagicMirrorWater()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAgeGenderAndMagicMirrorWater:Z

    return p0
.end method

.method public isBokehFrontCamera()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mBokehFrontCamera:Z

    return p0
.end method

.method public isCinematicAspectRatio()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFrontCamera()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsFrontCamera:Z

    return p0
.end method

.method public isHasDualWaterMark()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mHasDualWaterMark:Z

    return p0
.end method

.method public isHasFrontWaterMark()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isFrontWatermarkEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHasWaterMark()Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasDualWaterMark()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasFrontWaterMark()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTimeWaterMarkString:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

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

.method public isMirror()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMirror:Z

    return p0
.end method

.method public isMoonMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsMoonMode:Z

    return p0
.end method

.method public isSaveGroupshotPrimitive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSaveGroupshotPrimitive:Z

    return p0
.end method

.method public isUltraPixelWaterMark()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isUltraWatermarkEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldReprocessBurstShotPicture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mReprocessBurstShotPicture:Z

    return p0
.end method

.method public updateOutputSize(II)V
    .locals 1

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    return-void
.end method
