.class public Lcom/xiaomi/camera/processor/GroupShotProcessor;
.super Ljava/lang/Object;
.source "GroupShotProcessor.java"

# interfaces
.implements Lcom/xiaomi/camera/processor/AlgoProcessor;


# static fields
.field private static final GROUP_SHOT_MAX_FACE_NUM:I = 0xa

.field private static final TAG:Ljava/lang/String; = "GroupShotProcessor"


# instance fields
.field private mGroupShot:Lcom/android/camera/groupshot/GroupShot;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/groupshot/GroupShot;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/camera/groupshot/GroupShot;

    invoke-direct {v0}, Lcom/android/camera/groupshot/GroupShot;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    :cond_1
    return-void
.end method

.method private onImageAvailable(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;Lcom/xiaomi/camera/processor/ProcessResultListener;)V
    .locals 2

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/media/Image;->setTimestamp(J)V

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/CaptureData;->setMultiFrameProcessResult(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    const/4 p0, 0x0

    invoke-interface {p3, p1, p0}, Lcom/xiaomi/camera/processor/ProcessResultListener;->onProcessFinished(Lcom/xiaomi/camera/core/CaptureData;Z)V

    return-void
.end method

.method private prepareGroupShot(III)V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    const/16 v2, 0xa

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/groupshot/GroupShot;->initialize(IIIIII)I

    iget-object p0, p0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/groupshot/GroupShot;->attach_start(I)I

    return-void
.end method


# virtual methods
.method public doProcess(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/camera/processor/ProcessResultListener;Lcom/xiaomi/engine/TaskSession;)V
    .locals 12
    .param p1    # Lcom/xiaomi/camera/core/CaptureData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doProcess>>dataNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4}, Landroid/media/Image;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/media/Image;->getHeight()I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/xiaomi/camera/processor/GroupShotProcessor;->prepareGroupShot(III)V

    move v5, v2

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/camera/groupshot/GroupShot;->attach(Landroid/media/Image;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v5}, Lcom/android/camera/groupshot/GroupShot;->attach_end()I

    move-result v5

    sget-object v6, Lcom/xiaomi/camera/processor/GroupShotProcessor;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v2

    const-string v5, "doProcess: attachEnd=0x%x"

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v5, v2}, Lcom/android/camera/groupshot/GroupShot;->setBaseImage(I)I

    move-result v5

    sget-object v6, Lcom/xiaomi/camera/processor/GroupShotProcessor;->TAG:Ljava/lang/String;

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v2

    const-string v5, "doProcess: setBaseImage=0x%x"

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v5}, Lcom/android/camera/groupshot/GroupShot;->setBestFace()I

    move-result v5

    sget-object v6, Lcom/xiaomi/camera/processor/GroupShotProcessor;->TAG:Ljava/lang/String;

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v2

    const-string v5, "doProcess: setBaseFace=0x%x"

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getStreamNum()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    invoke-virtual {v6}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v7

    new-instance v9, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    invoke-virtual {v4}, Landroid/media/Image;->getWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/media/Image;->getHeight()I

    move-result v11

    invoke-virtual {v4}, Landroid/media/Image;->getFormat()I

    move-result v4

    invoke-direct {v9, v10, v11, v4}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;-><init>(III)V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getAnEmptyImage(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/media/Image;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/media/Image;->setTimestamp(J)V

    iget-object v9, p0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v9, v4}, Lcom/android/camera/groupshot/GroupShot;->getYuvImage(Landroid/media/Image;)I

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/xiaomi/camera/imagecodec/ImagePool;->queueImage(Landroid/media/Image;)V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImage(J)Landroid/media/Image;

    move-result-object v4

    invoke-virtual {v5, v4, v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;I)V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/xiaomi/camera/imagecodec/ImagePool;->holdImage(Landroid/media/Image;)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataListener()Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object v2

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v8

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isSaveInputImage()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eq v7, v3, :cond_1

    :cond_2
    invoke-virtual {v8}, Landroid/media/Image;->close()V

    invoke-interface {v2, v8}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    goto :goto_1

    :cond_3
    invoke-interface {p3}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isSaveInputImage()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    invoke-virtual {v4}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v7

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/xiaomi/camera/imagecodec/ImagePool;->queueImage(Landroid/media/Image;)V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImage(J)Landroid/media/Image;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->holdImage(Landroid/media/Image;)V

    invoke-virtual {v3, v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setMainImage(Landroid/media/Image;)V

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getSequenceId()I

    move-result p3

    int-to-long v7, p3

    invoke-virtual {v6}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getFrameNumber()J

    move-result-wide v9

    add-long/2addr v7, v9

    long-to-int p3, v7

    invoke-virtual {v6, p3}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setSequenceId(I)V

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getSequenceId()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p3}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getFrameNumber()J

    move-result-wide v6

    add-long/2addr v2, v6

    long-to-int v2, v2

    invoke-virtual {p3, v2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setSequenceId(I)V

    :cond_4
    invoke-direct {p0, p1, v5, p2}, Lcom/xiaomi/camera/processor/GroupShotProcessor;->onImageAvailable(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;Lcom/xiaomi/camera/processor/ProcessResultListener;)V

    iget-object p1, p0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {p1}, Lcom/android/camera/groupshot/GroupShot;->clearImages()I

    iget-object p1, p0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {p1}, Lcom/android/camera/groupshot/GroupShot;->finish()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    sget-object p0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "doProcess<<cost="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "taskBeanList is not allow to be empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
