.class public final Lcom/android/camera/storage/ImageSaveRequest;
.super Lcom/android/camera/storage/AbstractSaveRequest;
.source "ImageSaveRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageSaveRequest"


# instance fields
.field private algorithmName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private data:[B

.field private date:J

.field private exif:Lcom/android/gallery3d/exif/ExifInterface;

.field private finalImage:Z

.field private info:Lcom/xiaomi/camera/core/PictureInfo;

.field private isHide:Z

.field private isMap:Z

.field private isParallelProcess:Z

.field private loc:Landroid/location/Location;

.field private mirror:Z

.field private needThumbnail:Z

.field public oldTitle:Ljava/lang/String;

.field private previewThumbnailHash:I

.field private saverCallback:Lcom/android/camera/storage/SaverCallback;

.field private size:I

.field public title:Ljava/lang/String;

.field private uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/storage/AbstractSaveRequest;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/storage/AbstractSaveRequest;-><init>()V

    iput-object p1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p0, p2}, Lcom/android/camera/storage/AbstractSaveRequest;->setSaverCallback(Lcom/android/camera/storage/SaverCallback;)V

    iget-object p1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p0, p1}, Lcom/android/camera/storage/AbstractSaveRequest;->caculateMemoryUsed(Lcom/xiaomi/camera/core/ParallelTaskData;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/storage/ImageSaveRequest;->size:I

    return-void
.end method

.method constructor <init>([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/storage/AbstractSaveRequest;-><init>()V

    invoke-virtual/range {p0 .. p20}, Lcom/android/camera/storage/ImageSaveRequest;->reFillSaveRequest([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;I)V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/android/camera/storage/ImageSaveRequest;->size:I

    return p0
.end method

.method public isFinal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/storage/ImageSaveRequest;->finalImage:Z

    return p0
.end method

.method public onFinish()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->data:[B

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaveRequest;->getSize()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method protected reFillSaveRequest([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;I)V
    .locals 4

    move-object v0, p0

    move-object v1, p8

    move-object v2, p1

    iput-object v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->data:[B

    move v2, p2

    iput-boolean v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->needThumbnail:Z

    move-wide v2, p5

    iput-wide v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->date:J

    move-object v2, p7

    iput-object v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->oldTitle:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p8}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->loc:Landroid/location/Location;

    move v1, p9

    iput v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->width:I

    move v1, p10

    iput v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->height:I

    move-object v1, p11

    iput-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    move/from16 v1, p12

    iput v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->orientation:I

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->isHide:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->isMap:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->finalImage:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->mirror:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->isParallelProcess:Z

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->algorithmName:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->info:Lcom/xiaomi/camera/core/PictureInfo;

    move/from16 v1, p20

    iput v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->previewThumbnailHash:I

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaveRequest;->save()V

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 33

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/AbstractSaveRequest;->parserParallelTaskData()V

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->data:[B

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v5, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/camera/storage/ImageSaveRequest;->loc:Landroid/location/Location;

    iget v7, v0, Lcom/android/camera/storage/AbstractSaveRequest;->orientation:I

    iget v8, v0, Lcom/android/camera/storage/AbstractSaveRequest;->width:I

    iget v9, v0, Lcom/android/camera/storage/AbstractSaveRequest;->height:I

    iget-object v10, v0, Lcom/android/camera/storage/ImageSaveRequest;->oldTitle:Ljava/lang/String;

    iget-boolean v11, v0, Lcom/android/camera/storage/ImageSaveRequest;->mirror:Z

    iget-boolean v12, v0, Lcom/android/camera/storage/ImageSaveRequest;->isParallelProcess:Z

    iget-object v13, v0, Lcom/android/camera/storage/ImageSaveRequest;->algorithmName:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/camera/storage/ImageSaveRequest;->info:Lcom/xiaomi/camera/core/PictureInfo;

    const/4 v15, 0x1

    invoke-static/range {v1 .. v14}, Lcom/android/camera/storage/Storage;->updateImageWithExtraExif(Landroid/content/Context;[BLcom/android/gallery3d/exif/ExifInterface;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;ZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)Z

    goto :goto_1

    :cond_0
    const/4 v15, 0x1

    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->data:[B

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->algorithmName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "mimoji"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move/from16 v29, v15

    goto :goto_0

    :cond_1
    const/16 v29, 0x0

    :goto_0
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    iget-wide v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->date:J

    iget-object v5, v0, Lcom/android/camera/storage/ImageSaveRequest;->loc:Landroid/location/Location;

    iget v6, v0, Lcom/android/camera/storage/AbstractSaveRequest;->orientation:I

    iget-object v7, v0, Lcom/android/camera/storage/ImageSaveRequest;->data:[B

    iget v8, v0, Lcom/android/camera/storage/AbstractSaveRequest;->width:I

    iget v9, v0, Lcom/android/camera/storage/AbstractSaveRequest;->height:I

    const/16 v26, 0x0

    iget-boolean v10, v0, Lcom/android/camera/storage/ImageSaveRequest;->isHide:Z

    iget-boolean v11, v0, Lcom/android/camera/storage/ImageSaveRequest;->isMap:Z

    iget-boolean v12, v0, Lcom/android/camera/storage/ImageSaveRequest;->isParallelProcess:Z

    iget-object v13, v0, Lcom/android/camera/storage/ImageSaveRequest;->algorithmName:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/camera/storage/ImageSaveRequest;->info:Lcom/xiaomi/camera/core/PictureInfo;

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-wide/from16 v19, v3

    move-object/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v27, v10

    move/from16 v28, v11

    move/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    invoke-static/range {v17 .. v32}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    iget-boolean v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->needThumbnail:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/ImageSaveRequest;->isFinal()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/storage/SaverCallback;->needThumbnail(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    move/from16 v16, v15

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    const-string v2, "ImageSaveRequest"

    if-eqz v1, :cond_7

    if-eqz v16, :cond_6

    iget v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->width:I

    int-to-double v3, v1

    iget v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->height:I

    int-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x4080000000000000L    # 512.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const-string v3, "image save try to create thumbnail"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->isMap:Z

    if-eqz v3, :cond_4

    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    iget-boolean v4, v0, Lcom/android/camera/storage/ImageSaveRequest;->mirror:Z

    invoke-static {v1, v3, v4}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v1

    goto :goto_3

    :cond_4
    iget-object v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->data:[B

    iget v4, v0, Lcom/android/camera/storage/AbstractSaveRequest;->orientation:I

    iget-object v5, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    iget-boolean v6, v0, Lcom/android/camera/storage/ImageSaveRequest;->mirror:Z

    invoke-static {v3, v4, v1, v5, v6}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_5

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v3, v1, v15}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    goto :goto_4

    :cond_5
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v1}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    goto :goto_4

    :cond_6
    iget-object v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    iget v4, v0, Lcom/android/camera/storage/ImageSaveRequest;->previewThumbnailHash:I

    invoke-interface {v3, v4, v1}, Lcom/android/camera/storage/SaverCallback;->updatePreviewThumbnailUri(ILandroid/net/Uri;)V

    :goto_4
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {v1, v3, v0, v4}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    const-string v0, "image save finished"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    const-string v1, "image save failed"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v16, :cond_8

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v0}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    goto :goto_5

    :cond_8
    const-string v1, "set mWaitingForUri is false"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    iget v0, v0, Lcom/android/camera/storage/ImageSaveRequest;->previewThumbnailHash:I

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/camera/storage/SaverCallback;->updatePreviewThumbnailUri(ILandroid/net/Uri;)V

    :goto_5
    return-void
.end method

.method public setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaveRequest;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/storage/ImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    return-void
.end method
