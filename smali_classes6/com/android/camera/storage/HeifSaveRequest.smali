.class public Lcom/android/camera/storage/HeifSaveRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/storage/SaveRequest;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mImageWriter:Landroid/media/ImageWriter;

.field private mParent:Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;

.field private mSaverCallback:Lcom/android/camera/storage/SaverCallback;

.field private mSize:I

.field private mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

.field private mWidth:I

.field private mYuvImage:Landroid/media/Image;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/storage/HeifSaveRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/Image;Landroid/hardware/camera2/CaptureResult;Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/media/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/camera/core/ParallelTaskData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/storage/HeifSaveRequest;->mYuvImage:Landroid/media/Image;

    iput-object p2, p0, Lcom/android/camera/storage/HeifSaveRequest;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    iput-object p3, p0, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    iput-object p4, p0, Lcom/android/camera/storage/HeifSaveRequest;->mParent:Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;

    iput-object p5, p0, Lcom/android/camera/storage/HeifSaveRequest;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p4

    if-ne p3, p4, :cond_0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/camera/storage/HeifSaveRequest;->mWidth:I

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/android/camera/storage/HeifSaveRequest;->mWidth:I

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/camera/storage/HeifSaveRequest;->mHeight:I

    iget p1, p0, Lcom/android/camera/storage/HeifSaveRequest;->mWidth:I

    iget p2, p0, Lcom/android/camera/storage/HeifSaveRequest;->mHeight:I

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/storage/HeifSaveRequest;->mSize:I

    sget-object p1, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "HeifSaveRequest: size = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/camera/storage/HeifSaveRequest;->mWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mHeight:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private buildExif(Landroid/hardware/camera2/CaptureResult;IIIJLandroid/location/Location;)[B
    .locals 11

    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    if-eqz p1, :cond_0

    const-wide/16 v8, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v7, p1

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/android/camera/Util;->appendExifInfo(IIIJLandroid/location/Location;Landroid/hardware/camera2/CaptureResult;JLcom/android/gallery3d/exif/ExifInterface;)V

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    instance-of v3, v0, Lcom/android/gallery3d/exif/ExifOutputStream;

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lcom/android/gallery3d/exif/ExifOutputStream;

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeExifForHeif()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v2, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildExif: resultLen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string v4, "null"

    goto :goto_0

    :cond_1
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const-string v3, "buildExif: ExifOutputStream is required"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildExif: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v1
.end method

.method private imageToBuffer(Landroid/media/Image;Landroid/util/Size;)[B
    .locals 7

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v3, v4, :cond_1

    const/4 p0, 0x4

    new-array p0, p0, [I

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/2addr v0, v6

    and-int/lit8 v0, v0, -0x4

    aput v0, p0, v5

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v6

    and-int/lit8 v2, v2, -0x4

    aput v2, p0, v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    aput v0, p0, v6

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    aput p2, p0, v1

    invoke-static {p1, p0}, Lcom/android/camera/Util;->getSubYuvImage(Landroid/media/Image;[I)[B

    move-result-object p0

    return-object p0

    :cond_1
    mul-int p1, v0, v2

    mul-int/lit8 p2, p1, 0x3

    div-int/2addr p2, v6

    sub-int v1, p2, p1

    new-array p2, p2, [B

    aget-object v3, p0, v5

    invoke-static {v3, v0, v2}, Lcom/xiaomi/camera/base/ImageUtil;->removePadding(Landroid/media/Image$Plane;II)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p2, v5, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    aget-object p0, p0, v6

    div-int/2addr v0, v6

    div-int/2addr v2, v6

    invoke-static {p0, v0, v2}, Lcom/xiaomi/camera/base/ImageUtil;->removePadding(Landroid/media/Image$Plane;II)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p2, p1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p2

    :cond_2
    :goto_0
    sget-object p0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const-string p1, "imageToBuffer: require 3 planes yuv image"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private saveHeifFile(Landroid/media/Image;[BLjava/lang/String;Landroid/os/Handler;III)Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroidx/heifwriter/HeifWriter$Builder;

    invoke-direct {v4, p3, p5, p6, v2}, Landroidx/heifwriter/HeifWriter$Builder;-><init>(Ljava/lang/String;III)V

    iget-object p3, p0, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result p3

    invoke-virtual {v4, p4}, Landroidx/heifwriter/HeifWriter$Builder;->setHandler(Landroid/os/Handler;)Landroidx/heifwriter/HeifWriter$Builder;

    move-result-object p4

    invoke-virtual {p4, p7}, Landroidx/heifwriter/HeifWriter$Builder;->setQuality(I)Landroidx/heifwriter/HeifWriter$Builder;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroidx/heifwriter/HeifWriter$Builder;->setRotation(I)Landroidx/heifwriter/HeifWriter$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/heifwriter/HeifWriter$Builder;->build()Landroidx/heifwriter/HeifWriter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/heifwriter/HeifWriter;->getInputSurface()Landroid/view/Surface;

    move-result-object p4

    const/4 p5, 0x2

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result p6

    invoke-static {p4, p5, p6}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object p4

    iput-object p4, p0, Lcom/android/camera/storage/HeifSaveRequest;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {p3}, Landroidx/heifwriter/HeifWriter;->start()V

    sget-object p4, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "HeifWriter.start cost "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p6

    sub-long/2addr p6, v0

    invoke-virtual {p5, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p4, p0, Lcom/android/camera/storage/HeifSaveRequest;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {p4, p1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    if-eqz p2, :cond_0

    array-length p1, p2

    if-lez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    array-length p1, p2

    invoke-virtual {p3, v3, p2, v3, p1}, Landroidx/heifwriter/HeifWriter;->addExifData(I[BII)V

    sget-object p1, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "HeifWriter.addExifData cost "

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p6

    sub-long/2addr p6, p4

    invoke-virtual {p2, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const-string p2, "saveHeif: no exif data"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 p4, 0x0

    invoke-virtual {p3, p4, p5}, Landroidx/heifwriter/HeifWriter;->stop(J)V

    sget-object p4, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "HeifWriter.stop cost "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p6

    sub-long/2addr p6, p1

    invoke-virtual {p5, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p3}, Landroidx/heifwriter/HeifWriter;->close()V

    sget-object p3, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "HeifWriter.close cost "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    sub-long/2addr p5, p1

    invoke-virtual {p4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v2

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "saveHeif exception: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p1, v3

    :goto_1
    iget-object p2, p0, Lcom/android/camera/storage/HeifSaveRequest;->mImageWriter:Landroid/media/ImageWriter;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/media/ImageWriter;->close()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/camera/storage/HeifSaveRequest;->mImageWriter:Landroid/media/ImageWriter;

    :cond_1
    sget-object p0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v3

    const-string p3, "saveHeif: cost %dms"

    invoke-static {p0, p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p1
.end method

.method private saveHeifFile(Landroid/media/Image;[BLjava/lang/String;Landroid/util/Size;Landroid/os/Handler;III)Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroidx/heifwriter/HeifWriter$Builder;

    invoke-direct {v4, p3, p6, p7, v3}, Landroidx/heifwriter/HeifWriter$Builder;-><init>(Ljava/lang/String;III)V

    iget-object p3, p0, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result p3

    invoke-virtual {v4, p5}, Landroidx/heifwriter/HeifWriter$Builder;->setHandler(Landroid/os/Handler;)Landroidx/heifwriter/HeifWriter$Builder;

    move-result-object p5

    invoke-virtual {p5, p8}, Landroidx/heifwriter/HeifWriter$Builder;->setQuality(I)Landroidx/heifwriter/HeifWriter$Builder;

    move-result-object p5

    invoke-virtual {p5, p3}, Landroidx/heifwriter/HeifWriter$Builder;->setRotation(I)Landroidx/heifwriter/HeifWriter$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/heifwriter/HeifWriter$Builder;->build()Landroidx/heifwriter/HeifWriter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/heifwriter/HeifWriter;->start()V

    sget-object p5, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "HeifWriter.start cost "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p7

    sub-long/2addr p7, v0

    invoke-virtual {p6, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p5, p6}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    invoke-direct {p0, p1, p4}, Lcom/android/camera/storage/HeifSaveRequest;->imageToBuffer(Landroid/media/Image;Landroid/util/Size;)[B

    move-result-object p0

    sget-object p1, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const-string p4, "prepare buffer cost %dms"

    new-array p7, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    aput-object p5, p7, v3

    invoke-static {p1, p4, p7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    const/16 p1, 0x23

    invoke-virtual {p3, p1, p0}, Landroidx/heifwriter/HeifWriter;->addYuvBuffer(I[B)V

    sget-object p0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const-string p1, "HeifWriter.addYuvBuffer cost %dms"

    new-array p6, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p7

    sub-long/2addr p7, p4

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p6, v3

    invoke-static {p0, p1, p6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p2, :cond_0

    array-length p0, p2

    if-lez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    array-length p4, p2

    invoke-virtual {p3, v3, p2, v3, p4}, Landroidx/heifwriter/HeifWriter;->addExifData(I[BII)V

    sget-object p2, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "HeifWriter.addExifData cost "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    sub-long/2addr p5, p0

    invoke-virtual {p4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const-string p1, "saveHeif: no exif data"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/16 p4, 0x0

    invoke-virtual {p3, p4, p5}, Landroidx/heifwriter/HeifWriter;->stop(J)V

    sget-object p2, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "HeifWriter.stop cost "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    sub-long/2addr p5, p0

    invoke-virtual {p4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {p3}, Landroidx/heifwriter/HeifWriter;->close()V

    sget-object p2, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "HeifWriter.close cost "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    sub-long/2addr p4, p0

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p0, v2

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "saveHeif exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p0, v3

    :goto_1
    sget-object p1, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v3

    const-string p3, "saveHeif: cost %dms"

    invoke-static {p1, p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p0
.end method

.method private saveHeifInfo(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;IIIZ)Landroid/net/Uri;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v2, p2

    sget-object v1, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveHeifInfo: E. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByPath(Ljava/lang/String;)Lcom/android/camera/db/element/SaveTask;

    move-result-object v12

    const-string v13, "|"

    const/4 v14, 0x0

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/android/camera/db/element/SaveTask;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v12}, Lcom/android/camera/db/element/SaveTask;->getMediaStoreId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v10, v14, v2}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, p1

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcom/android/camera/storage/Storage;->updateHeifInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;III)Z

    invoke-static {v10, v12, v14}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->markTaskFinish(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;Z)V

    sget-object v0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveHeifInfo: X. updated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v3, v15, [Ljava/lang/Object;

    if-nez v12, :cond_2

    const-string v4, "null"

    goto :goto_1

    :cond_2
    const-string v4, "invalid"

    :goto_1
    aput-object v4, v3, v14

    const-string v4, "saveHeifInfo: %s task"

    invoke-static {v1, v4, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-wide/from16 v4, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v1 .. v9}, Lcom/android/camera/storage/Storage;->addHeifInfo(Landroid/content/Context;Ljava/lang/String;Landroid/location/Location;JIIIZ)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, v0, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v10, v1, v14}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v0, Lcom/android/camera/storage/HeifSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v3, v2, v15}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/android/camera/storage/HeifSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v2}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    :cond_4
    :goto_2
    iget-object v2, v0, Lcom/android/camera/storage/HeifSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v3, 0x2

    invoke-interface {v2, v1, v11, v3}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    if-eqz v12, :cond_5

    sget-object v2, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "algo mark: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/camera/db/element/SaveTask;->setMediaStoreId(Ljava/lang/Long;)V

    iget-object v0, v0, Lcom/android/camera/storage/HeifSaveRequest;->mContext:Landroid/content/Context;

    invoke-static {v0, v12, v14}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->markTaskFinish(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;Z)V

    :cond_5
    sget-object v0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveHeifInfo: X. added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v1
.end method


# virtual methods
.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mSize:I

    return p0
.end method

.method public isFinal()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mParent:Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;

    iget-object v1, p0, Lcom/android/camera/storage/HeifSaveRequest;->mYuvImage:Landroid/media/Image;

    iget-object v2, p0, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;->onSaveFinish(Landroid/media/Image;Lcom/xiaomi/camera/core/ParallelTaskData;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mYuvImage:Landroid/media/Image;

    iput-object v0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    iput-object v0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mParent:Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;

    iput-object v0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    iput-object v0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/storage/HeifSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/HeifSaveRequest;->getSize()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    iput-object v0, p0, Lcom/android/camera/storage/HeifSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/storage/HeifSaveRequest;->save()V

    invoke-virtual {p0}, Lcom/android/camera/storage/HeifSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 18

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp.HEIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v9, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDateTakenTime()J

    move-result-wide v12

    iget-object v0, v9, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegQuality()I

    move-result v8

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result v14

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLocation()Landroid/location/Location;

    move-result-object v15

    sget-object v0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "save: E. path=%s quality=%d jpegRotation=%d"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    iget-object v1, v9, Lcom/android/camera/storage/HeifSaveRequest;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    iget v2, v9, Lcom/android/camera/storage/HeifSaveRequest;->mWidth:I

    iget v3, v9, Lcom/android/camera/storage/HeifSaveRequest;->mHeight:I

    move-object/from16 v0, p0

    move v4, v14

    move-wide v5, v12

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/storage/HeifSaveRequest;->buildExif(Landroid/hardware/camera2/CaptureResult;IIIJLandroid/location/Location;)[B

    move-result-object v2

    sget-object v0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare exif cost "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v16

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v9, Lcom/android/camera/storage/HeifSaveRequest;->mWidth:I

    iget v6, v9, Lcom/android/camera/storage/HeifSaveRequest;->mHeight:I

    iget-object v1, v9, Lcom/android/camera/storage/HeifSaveRequest;->mYuvImage:Landroid/media/Image;

    if-eq v5, v6, :cond_0

    iget-object v4, v9, Lcom/android/camera/storage/HeifSaveRequest;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    move-object v3, v11

    move v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/storage/HeifSaveRequest;->saveHeifFile(Landroid/media/Image;[BLjava/lang/String;Landroid/os/Handler;III)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, v9, Lcom/android/camera/storage/HeifSaveRequest;->mTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v4

    iget-object v5, v9, Lcom/android/camera/storage/HeifSaveRequest;->mHandler:Landroid/os/Handler;

    iget v6, v9, Lcom/android/camera/storage/HeifSaveRequest;->mWidth:I

    iget v7, v9, Lcom/android/camera/storage/HeifSaveRequest;->mHeight:I

    move-object/from16 v0, p0

    move-object v3, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/storage/HeifSaveRequest;->saveHeifFile(Landroid/media/Image;[BLjava/lang/String;Landroid/util/Size;Landroid/os/Handler;III)Z

    move-result v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object v1, v9, Lcom/android/camera/storage/HeifSaveRequest;->mContext:Landroid/content/Context;

    iget v7, v9, Lcom/android/camera/storage/HeifSaveRequest;->mWidth:I

    iget v8, v9, Lcom/android/camera/storage/HeifSaveRequest;->mHeight:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object v2, v10

    move-wide v3, v12

    move-object v5, v15

    move v6, v14

    move v9, v11

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/storage/HeifSaveRequest;->saveHeifInfo(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;IIIZ)Landroid/net/Uri;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/camera/storage/HeifSaveRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to save heif: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :goto_1
    return-void
.end method

.method public setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/storage/HeifSaveRequest;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/storage/HeifSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    return-void
.end method
