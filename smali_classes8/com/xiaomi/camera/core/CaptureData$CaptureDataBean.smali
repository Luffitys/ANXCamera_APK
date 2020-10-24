.class public Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mIsFirstResult:Z

.field private mIsMainImageFromPool:Z

.field private mIsSatFusionShot:Z

.field private mIsSubImageFromPool:Z

.field private mIsTuningImageFromPool:Z

.field private mMainImage:Landroid/media/Image;

.field private mRequireTuningData:Z

.field private mResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

.field private mStreamNum:I

.field private mSubImage:Landroid/media/Image;

.field private mTuningImage:Landroid/media/Image;


# direct methods
.method public constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mStreamNum:I

    iput-boolean p2, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mRequireTuningData:Z

    iput-boolean p3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsSatFusionShot:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iput-object v1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iput-object v1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTuningImage:Landroid/media/Image;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iput-object v1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTuningImage:Landroid/media/Image;

    :cond_2
    return-void
.end method

.method public getMainImage()Landroid/media/Image;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    return-object p0
.end method

.method public getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    return-object p0
.end method

.method public getStreamNum()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mStreamNum:I

    return p0
.end method

.method public getSubImage()Landroid/media/Image;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTuningImage()Landroid/media/Image;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTuningImage:Landroid/media/Image;

    return-object p0
.end method

.method public isDataReady()Z
    .locals 5

    iget-boolean v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mRequireTuningData:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTuningImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const/4 v3, 0x2

    iget v4, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mStreamNum:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    if-ne v2, v4, :cond_4

    iget-object v3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    if-eqz v3, :cond_4

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public isFirstResult()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsFirstResult:Z

    return p0
.end method

.method public isMainImageFromPool()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsMainImageFromPool:Z

    return p0
.end method

.method public isRequireTuningData()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mRequireTuningData:Z

    return p0
.end method

.method public isSatFusionShot()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsSatFusionShot:Z

    return p0
.end method

.method public isSubImageFromPool()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsSubImageFromPool:Z

    return p0
.end method

.method public isTuningImageFromPool()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsTuningImageFromPool:Z

    return p0
.end method

.method public setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    iput-boolean p2, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsFirstResult:Z

    return-void
.end method

.method public setImage(Landroid/media/Image;IZ)V
    .locals 1

    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    iput-boolean p3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsMainImageFromPool:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    iput-boolean p3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsSubImageFromPool:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTuningImage:Landroid/media/Image;

    iput-boolean p3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsTuningImageFromPool:Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/xiaomi/camera/core/CaptureData;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setImage: unknown target: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIsSatFusionShot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsSatFusionShot:Z

    return-void
.end method

.method public setRequireTuningData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mRequireTuningData:Z

    return-void
.end method

.method public setStreamNum(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mStreamNum:I

    return-void
.end method
