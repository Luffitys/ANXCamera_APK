.class public Lcom/xiaomi/camera/processor/GroupShotProcessor;
.super Ljava/lang/Object;
.source ""

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
    .locals 15
    .param p1    # Lcom/xiaomi/camera/core/CaptureData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/xiaomi/camera/processor/GroupShotProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doProcess>>dataNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6}, Landroid/media/Image;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/media/Image;->getHeight()I

    move-result v9

    invoke-direct {p0, v7, v8, v9}, Lcom/xiaomi/camera/processor/GroupShotProcessor;->prepareGroupShot(III)V

    move v7, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    iget-object v8, v0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/camera/groupshot/GroupShot;->attach(Landroid/media/Image;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, v0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v7}, Lcom/android/camera/groupshot/GroupShot;->attach_end()I

    move-result v7

    sget-object v8, Lcom/xiaomi/camera/processor/GroupShotProcessor;->TAG:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v4

    const-string v7, "doProcess: attachEnd=0x%x"

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v7, v4}, Lcom/android/camera/groupshot/GroupShot;->setBaseImage(I)I

    move-result v7

    sget-object v8, Lcom/xiaomi/camera/processor/GroupShotProcessor;->TAG:Ljava/lang/String;

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v4

    const-string v7, "doProcess: setBaseImage=0x%x"

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v7}, Lcom/android/camera/groupshot/GroupShot;->setBestFace()I

    move-result v7

    sget-object v8, Lcom/xiaomi/camera/processor/GroupShotProcessor;->TAG:Ljava/lang/String;

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v4

    const-string v7, "doProcess: setBaseFace=0x%x"

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getStreamNum()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->isRequireTuningData()Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->isSatFusionShot()Z

    move-result v11

    invoke-direct {v7, v8, v10, v11}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;-><init>(IZZ)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v8}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v10

    invoke-virtual {v7, v10, v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->isRequireTuningData()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v8}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTuningImage()Landroid/media/Image;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v8}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isTuningImageFromPool()Z

    move-result v13

    invoke-virtual {v7, v11, v12, v13}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->isSatFusionShot()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v8}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v11

    invoke-virtual {v8}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isSubImageFromPool()Z

    move-result v8

    invoke-virtual {v7, v11, v9, v8}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    :cond_2
    invoke-virtual {v10}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v11

    new-instance v8, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    invoke-virtual {v6}, Landroid/media/Image;->getWidth()I

    move-result v13

    invoke-virtual {v6}, Landroid/media/Image;->getHeight()I

    move-result v14

    invoke-virtual {v6}, Landroid/media/Image;->getFormat()I

    move-result v6

    invoke-direct {v8, v13, v14, v6}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;-><init>(III)V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getAnEmptyImage(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;)Landroid/media/Image;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Landroid/media/Image;->setTimestamp(J)V

    iget-object v8, v0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v8, v6}, Lcom/android/camera/groupshot/GroupShot;->getYuvImage(Landroid/media/Image;)I

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/xiaomi/camera/imagecodec/ImagePool;->queueImage(Landroid/media/Image;)V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImage(J)Landroid/media/Image;

    move-result-object v6

    invoke-virtual {v7, v6, v4, v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/xiaomi/camera/imagecodec/ImagePool;->holdImage(Landroid/media/Image;)V

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataListener()Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v11}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->isSaveInputImage()Z

    move-result v13

    if-eqz v13, :cond_4

    if-eq v11, v5, :cond_3

    :cond_4
    invoke-virtual {v12}, Landroid/media/Image;->close()V

    invoke-interface {v6, v12}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->isSaveInputImage()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    invoke-virtual {v8}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v11

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/xiaomi/camera/imagecodec/ImagePool;->queueImage(Landroid/media/Image;)V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImage(J)Landroid/media/Image;

    move-result-object v6

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/xiaomi/camera/imagecodec/ImagePool;->holdImage(Landroid/media/Image;)V

    invoke-virtual {v5, v6, v4, v9}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setImage(Landroid/media/Image;IZ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getSequenceId()I

    move-result v1

    int-to-long v8, v1

    invoke-virtual {v10}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getFrameNumber()J

    move-result-wide v11

    add-long/2addr v8, v11

    long-to-int v1, v8

    invoke-virtual {v10, v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setSequenceId(I)V

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getSequenceId()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getFrameNumber()J

    move-result-wide v8

    add-long/2addr v4, v8

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setSequenceId(I)V

    :cond_6
    move-object/from16 v1, p1

    move-object/from16 v4, p2

    invoke-direct {p0, v1, v7, v4}, Lcom/xiaomi/camera/processor/GroupShotProcessor;->onImageAvailable(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;Lcom/xiaomi/camera/processor/ProcessResultListener;)V

    iget-object v1, v0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v1}, Lcom/android/camera/groupshot/GroupShot;->clearImages()I

    iget-object v1, v0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v1}, Lcom/android/camera/groupshot/GroupShot;->finish()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    sget-object v0, Lcom/xiaomi/camera/processor/GroupShotProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doProcess<<cost="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "taskBeanList is not allow to be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
