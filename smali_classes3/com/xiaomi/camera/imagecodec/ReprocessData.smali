.class public Lcom/xiaomi/camera/imagecodec/ReprocessData;
.super Ljava/lang/Object;
.source "ReprocessData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_JPEG_QUALITY:I = 0x64


# instance fields
.field private mImageTag:Ljava/lang/String;

.field private mIsFrontCamera:Z

.field private mIsFrontMirror:Z

.field private mIsPoolImage:Z

.field private mJpegQuality:I

.field private mOutputFormat:I

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private mResultListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

.field private mTotalCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

.field private mYuvImage:Landroid/media/Image;


# direct methods
.method public constructor <init>(Landroid/media/Image;Ljava/lang/String;Lcom/xiaomi/protocol/ICustomCaptureResult;ZIIILcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;)V
    .locals 0
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

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mYuvImage:Landroid/media/Image;

    iput-object p2, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mImageTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mTotalCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    iput-boolean p4, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsFrontCamera:Z

    if-nez p5, :cond_0

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result p5

    :cond_0
    iput p5, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputWidth:I

    if-nez p6, :cond_1

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result p6

    :cond_1
    iput p6, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputHeight:I

    iput p7, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mOutputFormat:I

    iput-object p8, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mResultListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    const/16 p1, 0x64

    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mJpegQuality:I

    return-void
.end method


# virtual methods
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

.method public getYuvImage()Landroid/media/Image;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mYuvImage:Landroid/media/Image;

    return-object p0
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

    iget-boolean p0, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsPoolImage:Z

    return p0
.end method

.method public setFrontMirror(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsFrontMirror:Z

    return-void
.end method

.method public setImageFromPool(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mIsPoolImage:Z

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

.method public setYuvImage(Landroid/media/Image;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ReprocessData;->mYuvImage:Landroid/media/Image;

    return-void
.end method
