.class public Lcom/xiaomi/camera/imagecodec/ReprocessData;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_JPEG_QUALITY:I = 0x64

.field public static REPROCESS_FUNCTION_NONE:I = 0x0

.field public static REPROCESS_FUNCTION_RAW_MFNR:I = 0x1

.field public static REPROCESS_FUNCTION_RAW_MFNR_2ND:I = 0x2

.field public static REPROCESS_FUNCTION_RAW_SUPERNIGHT:I = 0x3

.field public static REPROCESS_FUNCTION_RAW_SUPERNIGHT_2ND:I = 0x4


# instance fields
.field private mCropRegion:[I

.field private mDataStatusCallback:Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

.field private mImageTag:Ljava/lang/String;

.field private mIsFrontCamera:Z

.field private mIsFrontMirror:Z

.field private mIsMainImageFromPool:Z

.field private mIsTuningImageFromPool:Z

.field private mJpegQuality:I

.field private mKeepTuningImage:Z

.field private mMainImageList:Ljava/util/ArrayList;

.field private mOutputFormat:I

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private mRawInputHeight:I

.field private mRawInputWidth:I

.field private mReprocessFunctionType:I

.field private mResultListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

.field private mRotateOrientationToZero:Z

.field private mTotalCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

.field private mTuningImageList:Ljava/util/ArrayList;

.field private mYuvInputHeight:I

.field private mYuvInputWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/media/Image;Ljava/lang/String;Lcom/xiaomi/protocol/ICustomCaptureResult;ZIIILcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;)V
    .locals 3
    .param p1    # Landroid/media/Image;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/protocol/ICustomCaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mImageTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTotalCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    iput-boolean p4, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsFrontCamera:Z

    iput p5, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputWidth:I

    iput p6, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputHeight:I

    iput p7, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputFormat:I

    iput-object p8, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mResultListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Lcom/xiaomi/protocol/ICustomCaptureResult;ZIIILcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/protocol/ICustomCaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mImageTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTotalCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    iput-boolean p4, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsFrontCamera:Z

    iput p5, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputWidth:I

    iput p6, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputHeight:I

    iput p7, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputFormat:I

    iput-object p8, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mResultListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    return-void
.end method


# virtual methods
.method public getCropRegion()[I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mCropRegion:[I

    return-object p0
.end method

.method public getDataStatusCallback()Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mDataStatusCallback:Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    return-object p0
.end method

.method public getImageTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mImageTag:Ljava/lang/String;

    return-object p0
.end method

.method public getJpegQuality()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    return p0
.end method

.method public getMainImage()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getOutputFormat()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputFormat:I

    return p0
.end method

.method public getOutputHeight()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputHeight:I

    return p0
.end method

.method public getOutputWidth()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputWidth:I

    return p0
.end method

.method public getRawInputHeight()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mRawInputHeight:I

    return p0
.end method

.method public getRawInputWidth()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mRawInputWidth:I

    return p0
.end method

.method public getReprocessFuntionType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mReprocessFunctionType:I

    return p0
.end method

.method public getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mResultListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    return-object p0
.end method

.method public getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTotalCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    return-object p0
.end method

.method public getTuningImage()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTuningImageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getYuvInputHeight()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mYuvInputHeight:I

    return p0
.end method

.method public getYuvInputWidth()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mYuvInputWidth:I

    return p0
.end method

.method public isFrontCamera()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsFrontCamera:Z

    return p0
.end method

.method public isFrontMirror()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsFrontMirror:Z

    return p0
.end method

.method public isImageFromPool()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsMainImageFromPool:Z

    return p0
.end method

.method public isKeepTuningImage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mKeepTuningImage:Z

    return p0
.end method

.method public isRotateOrientationToZero()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mRotateOrientationToZero:Z

    return p0
.end method

.method public isTuningImageFromPool()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsTuningImageFromPool:Z

    return p0
.end method

.method public setCropRegion([I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mCropRegion:[I

    return-void
.end method

.method public setDataStatusCallback(Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mDataStatusCallback:Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;

    return-void
.end method

.method public setFrontMirror(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsFrontMirror:Z

    return-void
.end method

.method public setImageFromPool(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsMainImageFromPool:Z

    return-void
.end method

.method public setJpegQuality(I)V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    goto :goto_1

    :cond_1
    :goto_0
    iput v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    :goto_1
    return-void
.end method

.method public setKeepTuningImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mKeepTuningImage:Z

    return-void
.end method

.method public setMainImage(Landroid/media/Image;)Ljava/util/ArrayList;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public setMainImage(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mMainImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setRawInputSize(II)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mRawInputWidth:I

    iput p2, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mRawInputHeight:I

    return-void
.end method

.method public setReprocessFunctionType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mReprocessFunctionType:I

    return-void
.end method

.method public setRotateOrientationToZero(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mRotateOrientationToZero:Z

    return-void
.end method

.method public setTuningImage(Landroid/media/Image;)Ljava/util/ArrayList;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTuningImageList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTuningImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public setTuningImage(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTuningImageList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTuningImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setTuningImageFromPool(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsTuningImageFromPool:Z

    return-void
.end method

.method public setYuvInputSize(II)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mYuvInputWidth:I

    iput p2, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mYuvInputHeight:I

    return-void
.end method
