.class public abstract Lcom/android/camera/storage/AbstractSaveRequest;
.super Ljava/lang/Object;
.source "AbstractSaveRequest.java"

# interfaces
.implements Lcom/android/camera/storage/SaveRequest;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractSaveRequest"


# instance fields
.field public height:I

.field protected mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

.field private mSaverCallbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/storage/SaverCallback;",
            ">;"
        }
    .end annotation
.end field

.field public orientation:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDrawJPEGAttribute([BIIIZIILandroid/location/Location;Ljava/lang/String;IIFLjava/lang/String;ZZLjava/lang/String;Ljava/util/List;ZLcom/xiaomi/camera/core/PictureInfo;II)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIIZII",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "IIF",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;Z",
            "Lcom/xiaomi/camera/core/PictureInfo;",
            "II)",
            "Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;"
        }
    .end annotation

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v0, p8

    new-instance v27, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    if-le v5, v6, :cond_0

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    move v3, v1

    if-le v6, v5, :cond_1

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    move v4, v1

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->copyEffectRectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    move-result-object v8

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v9, v1

    goto :goto_2

    :cond_2
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v9, v2

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual/range {p19 .. p19}, Lcom/xiaomi/camera/core/PictureInfo;->isFrontMirror()Z

    move-result v16

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCameraWaterMarkOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, 0x1

    :goto_4
    move/from16 v21, v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v23, p16

    goto :goto_5

    :cond_5
    move-object/from16 v23, v1

    :goto_5
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p4

    move-object/from16 v10, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v17, p13

    move/from16 v18, p14

    move-object/from16 v19, p19

    move-object/from16 v20, p17

    move/from16 v22, p15

    move/from16 v24, p18

    move/from16 v25, p20

    move/from16 v26, p21

    invoke-direct/range {v0 .. v26}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;-><init>([BZIIIIILcom/android/camera/effect/EffectController$EffectRectAttribute;Landroid/location/Location;Ljava/lang/String;JIIFZLjava/lang/String;ZLcom/xiaomi/camera/core/PictureInfo;Ljava/util/List;ZZLjava/lang/String;ZII)V

    return-object v27
.end method

.method private getSaverCallback()Lcom/android/camera/storage/SaverCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mSaverCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/storage/SaverCallback;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private parserMimojiCaptureTask(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 29

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getJpegImageData()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v24

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v25

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result v26

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getFilterId()I

    move-result v5

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifInterface;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v3

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v4

    const/4 v12, 0x1

    const/4 v10, 0x0

    if-nez v4, :cond_1

    sget v4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v5, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v10

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v12

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isAdaptiveSnapshotSize()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getImageWidth(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v3

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getImageHeight(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v1

    move v8, v1

    move v7, v3

    goto :goto_2

    :cond_2
    add-int v3, v26, v3

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_3

    move/from16 v7, v24

    move/from16 v8, v25

    goto :goto_2

    :cond_3
    move/from16 v8, v24

    move/from16 v7, v25

    :goto_2
    if-nez v4, :cond_5

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasWaterMark()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v23, v0

    goto/16 :goto_4

    :cond_5
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/storage/AbstractSaveRequest;->getSaverCallback()Lcom/android/camera/storage/SaverCallback;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPreviewSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPreviewSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail()Z

    move-result v6

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLocation()Landroid/location/Location;

    move-result-object v9

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getShootOrientation()I

    move-result v11

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getShootRotation()F

    move-result v13

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getAlgorithmName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasWaterMark()Z

    move-result v15

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isUtralPixelWaterMark()Z

    move-result v16

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getTimeWaterMarkString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getFaceWaterMarkList()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCurrentModuleIndex()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getPreviewThumbnailHash()I

    move-result v22

    move-object/from16 v23, v0

    move-object v0, v1

    move-object/from16 v1, p0

    move-object/from16 v28, v0

    move v0, v10

    move-object/from16 v10, v27

    move v0, v12

    move/from16 v12, v26

    invoke-direct/range {v1 .. v22}, Lcom/android/camera/storage/AbstractSaveRequest;->getDrawJPEGAttribute([BIIIZIILandroid/location/Location;Ljava/lang/String;IIFLjava/lang/String;ZZLjava/lang/String;Ljava/util/List;ZLcom/xiaomi/camera/core/PictureInfo;II)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    move-result-object v1

    new-array v0, v0, [Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    move-object/from16 v3, v28

    invoke-interface {v3, v2, v0}, Lcom/android/camera/storage/SaverCallback;->processorJpegSync(Z[Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V

    iget-object v2, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    goto :goto_4

    :cond_6
    move-object/from16 v23, v0

    const-string v0, "AbstractSaveRequest"

    const-string v1, "parserMimojiCaptureTask(): saverCallback is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object v4, v2

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail()Z

    move-result v5

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLocation()Landroid/location/Location;

    move-result-object v11

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v23 .. v23}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getPreviewThumbnailHash()I

    move-result v23

    const-string v21, "mimoji"

    move-object/from16 v3, p0

    move-object/from16 v6, v27

    move/from16 v12, v24

    move/from16 v13, v25

    move/from16 v15, v26

    invoke-virtual/range {v3 .. v23}, Lcom/android/camera/storage/AbstractSaveRequest;->reFillSaveRequest([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;I)V

    return-void
.end method

.method private parserNormalDualTask(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 52

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getPortraitDepthData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/ArcsoftDepthMap;->isDepthMapData([B)Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getJpegImageData()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getPortraitRawData()[B

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getPortraitDepthData()[B

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getFilterId()I

    move-result v12

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v1

    const/16 v28, 0x1

    const/4 v10, 0x0

    if-nez v1, :cond_1

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v12, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v10

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v1, v28

    :goto_1
    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifInterface;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v5

    invoke-static {v5}, Lcom/android/gallery3d/exif/ExifInterface;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v41

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isAdaptiveSnapshotSize()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v5}, Lcom/android/gallery3d/exif/ExifInterface;->getImageWidth(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v3

    invoke-static {v5}, Lcom/android/gallery3d/exif/ExifInterface;->getImageHeight(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v4

    :goto_2
    move/from16 v38, v3

    move/from16 v39, v4

    goto :goto_3

    :cond_2
    add-int v6, v6, v41

    rem-int/lit16 v6, v6, 0xb4

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v39, v3

    move/from16 v38, v4

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isShot2Gallery()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    move-object/from16 v32, v3

    const-string v8, "AbstractSaveRequest"

    const/16 v23, 0x0

    if-eqz v1, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/storage/AbstractSaveRequest;->getSaverCallback()Lcom/android/camera/storage/SaverCallback;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPreviewSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPreviewSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail()Z

    move-result v6

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLocation()Landroid/location/Location;

    move-result-object v9

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getShootOrientation()I

    move-result v11

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getShootRotation()F

    move-result v13

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getAlgorithmName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasWaterMark()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getTimeWaterMarkString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getFaceWaterMarkList()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCurrentModuleIndex()I

    move-result v21

    const/16 v22, -0x1

    move-object/from16 v1, p0

    move v5, v12

    move-object/from16 v50, v7

    move/from16 v7, v38

    move-object/from16 v51, v8

    move/from16 v8, v39

    move-object/from16 v10, v32

    move/from16 v29, v12

    move/from16 v12, v41

    invoke-direct/range {v1 .. v22}, Lcom/android/camera/storage/AbstractSaveRequest;->getDrawJPEGAttribute([BIIIZIILandroid/location/Location;Ljava/lang/String;IIFLjava/lang/String;ZZLjava/lang/String;Ljava/util/List;ZLcom/xiaomi/camera/core/PictureInfo;II)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    move-result-object v1

    if-eqz v0, :cond_5

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPreviewSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPreviewSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail()Z

    move-result v8

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLocation()Landroid/location/Location;

    move-result-object v11

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getShootOrientation()I

    move-result v13

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getShootRotation()F

    move-result v15

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getAlgorithmName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getTimeWaterMarkString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getFaceWaterMarkList()Ljava/util/List;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCurrentModuleIndex()I

    move-result v23

    const/16 v24, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, v25

    move/from16 v7, v29

    move/from16 v9, v38

    move/from16 v10, v39

    move-object/from16 v12, v32

    move/from16 v14, v41

    invoke-direct/range {v3 .. v24}, Lcom/android/camera/storage/AbstractSaveRequest;->getDrawJPEGAttribute([BIIIZIILandroid/location/Location;Ljava/lang/String;IIFLjava/lang/String;ZZLjava/lang/String;Ljava/util/List;ZLcom/xiaomi/camera/core/PictureInfo;II)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    move-result-object v23

    :cond_5
    move-object/from16 v2, v23

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v2, v3, v28

    move-object/from16 v5, v50

    invoke-interface {v5, v4, v3}, Lcom/android/camera/storage/SaverCallback;->processorJpegSync(Z[Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V

    iget-object v3, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    iget-object v4, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDataOfTheRegionUnderWatermarks:[B

    iget-object v1, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    if-eqz v0, :cond_6

    iget-object v2, v2, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    move-object/from16 v25, v2

    :cond_6
    move-object v7, v1

    move-object v6, v4

    move-object/from16 v5, v25

    move-object/from16 v15, v51

    goto :goto_6

    :cond_7
    move-object/from16 v51, v8

    const-string v1, "parserNormalDualTask(): saverCallback is null"

    move-object/from16 v15, v51

    invoke-static {v15, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    move-object v15, v8

    :goto_5
    move-object v3, v2

    move-object/from16 v6, v23

    move-object v7, v6

    move-object/from16 v5, v25

    :goto_6
    if-eqz v0, :cond_9

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasDualWaterMark()Z

    move-result v8

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasFrontWaterMark()Z

    move-result v9

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLightingPattern()I

    move-result v10

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getTimeWaterMarkString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v13

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isMirror()Z

    move-result v14

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isBokehFrontCamera()Z

    move-result v0

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v16

    move-object/from16 v4, v26

    move-object v1, v15

    move v15, v0

    invoke-static/range {v3 .. v16}, Lcom/android/camera/Util;->composeDepthMapPicture([B[B[B[B[IZZILjava/lang/String;IIZZLcom/xiaomi/camera/core/PictureInfo;)[B

    move-result-object v0

    goto :goto_7

    :cond_9
    move-object v1, v15

    invoke-static {v3, v6, v7}, Lcom/android/camera/Util;->composeMainSubPicture([B[B[I)[B

    move-result-object v0

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertNormalDualTask: isShot2Gallery = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isShot2Gallery()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isShot2Gallery()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->refillJpegData([B)V

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/storage/AbstractSaveRequest;->parserParallelDualTask(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_8

    :cond_a
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail()Z

    move-result v31

    const/16 v33, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    const/16 v36, 0x0

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLocation()Landroid/location/Location;

    move-result-object v37

    const/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x1

    const/16 v45, 0x0

    const/16 v46, 0x0

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getAlgorithmName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v27 .. v27}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v48

    const/16 v49, -0x1

    move-object/from16 v29, p0

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v49}, Lcom/android/camera/storage/AbstractSaveRequest;->reFillSaveRequest([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;I)V

    :goto_8
    return-void
.end method

.method private parserParallelBurstTask(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 30

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertParallelBurstTask: path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbstractSaveRequest"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getJpegImageData()[B

    move-result-object v1

    move-object/from16 v3, p1

    invoke-static {v1, v3}, Lcom/android/camera/storage/AbstractSaveRequest;->populateExif([BLcom/xiaomi/camera/core/ParallelTaskData;)[B

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataOfTheRegionUnderWatermarks()[B

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCoordinatesOfTheRegionUnderWatermarks()[I

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-static {v1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v20

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    const-string v11, "insertParallelBurstTask: %d x %d, %d : %d"

    invoke-static {v9, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int v8, v8, v20

    rem-int/lit16 v8, v8, 0xb4

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v29, v7

    move v7, v6

    move/from16 v6, v29

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertParallelBurstTask: result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v11, v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insertParallelBurstTask: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail()Z

    move-result v23

    invoke-static {v1, v4, v5}, Lcom/android/camera/Util;->composeMainSubPicture([B[B[I)[B

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail()Z

    move-result v10

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v15, 0x0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLocation()Landroid/location/Location;

    move-result-object v16

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getAlgorithmName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v27

    const/16 v28, -0x1

    move-object/from16 v8, p0

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-virtual/range {v8 .. v28}, Lcom/android/camera/storage/AbstractSaveRequest;->reFillSaveRequest([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;I)V

    return-void
.end method

.method private parserParallelDualTask(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addParallel: path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AbstractSaveRequest"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getJpegImageData()[B

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/camera/storage/AbstractSaveRequest;->populateExif([BLcom/xiaomi/camera/core/ParallelTaskData;)[B

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataOfTheRegionUnderWatermarks()[B

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCoordinatesOfTheRegionUnderWatermarks()[I

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v3

    const/4 v15, -0x6

    const/4 v12, -0x7

    const/4 v5, 0x6

    if-eq v5, v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v5

    if-eq v3, v5, :cond_0

    const/4 v3, 0x7

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v5

    if-eq v3, v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v3

    if-eq v15, v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v3

    if-ne v12, v3, :cond_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getPortraitDepthData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera2/ArcsoftDepthMap;->isDepthMapData([B)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getPortraitDepthData()[B

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getPortraitRawData()[B

    move-result-object v6

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasDualWaterMark()Z

    move-result v9

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasFrontWaterMark()Z

    move-result v10

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLightingPattern()I

    move-result v11

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getTimeWaterMarkString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v16

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v17

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isMirror()Z

    move-result v18

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isBokehFrontCamera()Z

    move-result v19

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v20

    move-object v7, v13

    move-object v8, v14

    move v14, v12

    move-object v12, v3

    move/from16 v13, v16

    move v3, v14

    move/from16 v14, v17

    move/from16 v15, v18

    move/from16 v16, v19

    move-object/from16 v17, v20

    invoke-static/range {v4 .. v17}, Lcom/android/camera/Util;->composeDepthMapPicture([B[B[B[B[IZZILjava/lang/String;IIZZLcom/xiaomi/camera/core/PictureInfo;)[B

    move-result-object v4

    goto :goto_0

    :cond_1
    move v3, v12

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isLiveShotTask()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getMicroVideoData()[B

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCoverFrameTimestamp()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasDualWaterMark()Z

    move-result v10

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasFrontWaterMark()Z

    move-result v11

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getTimeWaterMarkString()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v4 .. v14}, Lcom/android/camera/Util;->composeLiveShotPicture([BII[BJZZLjava/lang/String;[B[I)[B

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-static {v4, v13, v14}, Lcom/android/camera/Util;->composeMainSubPicture([B[B[I)[B

    move-result-object v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v5

    if-eq v5, v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v3

    const/4 v5, -0x6

    if-eq v3, v5, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v3

    const/4 v5, -0x5

    if-ne v3, v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLocation()Landroid/location/Location;

    move-result-object v7

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail()Z

    move-result v12

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getAlgorithmName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v2, v5

    move-object v4, v7

    move v5, v8

    move-object v6, v9

    move v7, v10

    move v8, v11

    move v9, v12

    move-object v10, v13

    move-object v11, v14

    invoke-virtual/range {v0 .. v11}, Lcom/android/camera/storage/AbstractSaveRequest;->reFillSaveRequest([BJLandroid/location/Location;ILjava/lang/String;IIZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {v4}, Lcom/android/gallery3d/exif/ExifInterface;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifInterface;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/storage/AbstractSaveRequest;->orientation:I

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifInterface;->getImageWidth(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v2

    iput v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->width:I

    invoke-virtual {v1, v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->refillJpegData([B)V

    :goto_2
    return-void
.end method

.method private parserPreviewShotTask(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 14

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getJpegImageData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLocation()Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getAlgorithmName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v7

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOrientation()I

    move-result v0

    move v9, v0

    move v8, v4

    move-object v12, v6

    move-object v13, v7

    move v7, v2

    move-object v6, v5

    goto :goto_0

    :cond_0
    move-object v6, v2

    move-object v12, v6

    move-object v13, v12

    move v7, v3

    move v8, v7

    move v9, v8

    :goto_0
    invoke-static {v1, v3}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackImageSaver(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail()Z

    move-result v2

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v13}, Lcom/android/camera/storage/AbstractSaveRequest;->reFillSaveRequest([BZLjava/lang/String;JLandroid/location/Location;IIIZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)V

    return-void
.end method

.method private parserSingleTask(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 31

    move-object/from16 v11, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getFilterId()I

    move-result v4

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v0

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_1

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v4, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v7

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getJpegImageData()[B

    move-result-object v1

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v23

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v24

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifInterface;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v15

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isAdaptiveSnapshotSize()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifInterface;->getImageWidth(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v3

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifInterface;->getImageHeight(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v2

    move/from16 v26, v2

    move/from16 v25, v3

    goto :goto_2

    :cond_2
    add-int/2addr v3, v15

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_3

    move/from16 v25, v23

    move/from16 v26, v24

    goto :goto_2

    :cond_3
    move/from16 v26, v23

    move/from16 v25, v24

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isShot2Gallery()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object v14, v2

    const/4 v2, 0x0

    const-string v13, "AbstractSaveRequest"

    if-eqz v0, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/storage/AbstractSaveRequest;->getSaverCallback()Lcom/android/camera/storage/SaverCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPreviewSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPreviewSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail()Z

    move-result v5

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLocation()Landroid/location/Location;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getShootOrientation()I

    move-result v10

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getShootRotation()F

    move-result v12

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getAlgorithmName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v27, v13

    move-object/from16 v13, v16

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasWaterMark()Z

    move-result v16

    move-object/from16 v28, v14

    move/from16 v14, v16

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isUtralPixelWaterMark()Z

    move-result v16

    move/from16 v29, v15

    move/from16 v15, v16

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getTimeWaterMarkString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getFaceWaterMarkList()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCurrentModuleIndex()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getPreviewThumbnailHash()I

    move-result v21

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v6, v25

    move/from16 v7, v26

    move-object/from16 v9, v28

    move/from16 v11, v29

    invoke-direct/range {v0 .. v21}, Lcom/android/camera/storage/AbstractSaveRequest;->getDrawJPEGAttribute([BIIIZIILandroid/location/Location;Ljava/lang/String;IIFLjava/lang/String;ZZLjava/lang/String;Ljava/util/List;ZLcom/xiaomi/camera/core/PictureInfo;II)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    move-object/from16 v3, v30

    invoke-interface {v3, v2, v1}, Lcom/android/camera/storage/SaverCallback;->processorJpegSync(Z[Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V

    iget-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    iget v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    iget-object v4, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDataOfTheRegionUnderWatermarks:[B

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    move v5, v2

    move v7, v3

    move-object v2, v4

    move-object/from16 v3, v27

    goto :goto_5

    :cond_5
    move-object/from16 v27, v13

    move-object/from16 v28, v14

    move/from16 v29, v15

    const-string v0, "parserSingleTask(): saverCallback is null"

    move-object/from16 v3, v27

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    move-object v3, v13

    move-object/from16 v28, v14

    move/from16 v29, v15

    :goto_4
    move-object v0, v2

    move/from16 v5, v25

    move/from16 v7, v26

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isLiveShotTask()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v1, v2, v0}, Lcom/android/camera/Util;->composeMainSubPicture([B[B[I)[B

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v2, v0

    array-length v4, v1

    if-ge v2, v4, :cond_7

    goto :goto_7

    :cond_7
    :goto_6
    move-object v1, v0

    goto/16 :goto_a

    :cond_8
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to compose main sub photos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_9
    move-object/from16 v4, v28

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getMicroVideoData()[B

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCoverFrameTimestamp()J

    move-result-wide v12

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasDualWaterMark()Z

    move-result v14

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasFrontWaterMark()Z

    move-result v15

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getTimeWaterMarkString()Ljava/lang/String;

    move-result-object v16

    move-object v8, v1

    move/from16 v9, v23

    move/from16 v10, v24

    move-object/from16 v17, v2

    move-object/from16 v18, v0

    invoke-static/range {v8 .. v18}, Lcom/android/camera/Util;->composeLiveShotPicture([BII[BJZZLjava/lang/String;[B[I)[B

    move-result-object v0

    if-eqz v0, :cond_b

    array-length v2, v0

    array-length v6, v1

    if-ge v2, v6, :cond_a

    goto :goto_8

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v1

    goto :goto_6

    :cond_b
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to compose LiveShot photo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    move-object/from16 v28, v4

    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v0

    const/4 v2, -0x3

    if-ne v0, v2, :cond_c

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    move v10, v5

    move v12, v7

    goto/16 :goto_b

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertSingleTask: isShot2Gallery = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isShot2Gallery()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isShot2Gallery()Z

    move-result v0

    if-eqz v0, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->refillJpegData([B)V

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->updateOutputSize(II)V

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/storage/AbstractSaveRequest;->parserParallelDualTask(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_c

    :cond_d
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail()Z

    move-result v2

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move v10, v5

    move-wide v5, v8

    const/4 v3, 0x0

    move v12, v7

    move-object v7, v3

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLocation()Landroid/location/Location;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getAlgorithmName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getPreviewThumbnailHash()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v3, v28

    move v9, v10

    move v10, v12

    move/from16 v12, v29

    invoke-virtual/range {v0 .. v20}, Lcom/android/camera/storage/AbstractSaveRequest;->reFillSaveRequest([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;I)V

    goto :goto_c

    :cond_e
    move-object/from16 v0, p1

    move v10, v5

    move v12, v7

    move-object/from16 v2, p0

    :goto_b
    iput v10, v2, Lcom/android/camera/storage/AbstractSaveRequest;->width:I

    iput v12, v2, Lcom/android/camera/storage/AbstractSaveRequest;->height:I

    move/from16 v3, v29

    iput v3, v2, Lcom/android/camera/storage/AbstractSaveRequest;->orientation:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->refillJpegData([B)V

    :goto_c
    return-void
.end method

.method private static populateExif([BLcom/xiaomi/camera/core/ParallelTaskData;)[B
    .locals 9

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLocation()Landroid/location/Location;

    move-result-object v7

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/camera/Util;->appendCaptureResultToExif([BIIIJLandroid/location/Location;Landroid/hardware/camera2/impl/CameraMetadataNative;)[B

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method protected caculateMemoryUsed(Lcom/xiaomi/camera/core/ParallelTaskData;)I
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getJpegImageData()[B

    move-result-object v0

    if-nez v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getPortraitRawData()[B

    move-result-object v1

    if-nez v1, :cond_1

    move v1, p0

    goto :goto_1

    :cond_1
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getPortraitDepthData()[B

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    array-length p0, p1

    :goto_2
    add-int/2addr p0, v0

    :cond_3
    return p0
.end method

.method protected parserParallelTaskData()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-nez v0, :cond_0

    const-string p0, "AbstractSaveRequest"

    const-string v0, "mParallelTaskData is null, ignore"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown shot type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-direct {p0, v0}, Lcom/android/camera/storage/AbstractSaveRequest;->parserParallelBurstTask(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-direct {p0, v0}, Lcom/android/camera/storage/AbstractSaveRequest;->parserNormalDualTask(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-direct {p0, v0}, Lcom/android/camera/storage/AbstractSaveRequest;->parserPreviewShotTask(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-direct {p0, v0}, Lcom/android/camera/storage/AbstractSaveRequest;->parserSingleTask(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-direct {p0, v0}, Lcom/android/camera/storage/AbstractSaveRequest;->parserMimojiCaptureTask(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-direct {p0, v0}, Lcom/android/camera/storage/AbstractSaveRequest;->parserParallelDualTask(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method protected reFillSaveRequest([BJLandroid/location/Location;ILjava/lang/String;IIZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)V
    .locals 0

    return-void
.end method

.method protected reFillSaveRequest([BZLjava/lang/String;JLandroid/location/Location;IIIZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)V
    .locals 0

    return-void
.end method

.method protected reFillSaveRequest([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;I)V
    .locals 0

    return-void
.end method

.method public setParallelTaskData(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    return-void
.end method

.method public setSaverCallback(Lcom/android/camera/storage/SaverCallback;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mSaverCallbackRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
