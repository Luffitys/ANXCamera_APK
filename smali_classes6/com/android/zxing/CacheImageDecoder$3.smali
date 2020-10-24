.class Lcom/android/zxing/CacheImageDecoder$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field final synthetic this$0:Lcom/android/zxing/CacheImageDecoder;


# direct methods
.method constructor <init>(Lcom/android/zxing/CacheImageDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/zxing/CacheImageDecoder$3;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/zxing/CacheImageDecoder$FrameInfo;)Ljava/lang/Long;
    .locals 10

    const-string v0, "CacheImage"

    iget-object v1, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mImageWrapper:Lcom/android/zxing/CacheImageDecoder$ImageWrapper;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/android/zxing/CacheImageDecoder$ImageWrapper;->mImage:Landroid/media/Image;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {v1}, Lcom/xiaomi/camera/base/ImageUtil;->getYUVFromPreviewImage(Landroid/media/Image;)[B

    move-result-object v3

    if-eqz v3, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/android/zxing/CacheImageDecoder$3;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-static {v1}, Lcom/android/zxing/CacheImageDecoder;->access$000(Lcom/android/zxing/CacheImageDecoder;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/Camera2Proxy$AnchorPreviewCallback;

    if-eqz v1, :cond_1

    new-instance v8, Landroid/graphics/YuvImage;

    const/16 v4, 0x11

    iget v5, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mWidth:I

    iget v6, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mHeight:I

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mWidth:I

    iget v5, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mHeight:I

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v4, 0x50

    invoke-virtual {v8, v3, v4, v2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    iget v6, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mWidth:I

    iget v7, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mHeight:I

    const/4 v8, 0x1

    iget-object v3, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mImageWrapper:Lcom/android/zxing/CacheImageDecoder$ImageWrapper;

    iget-boolean v9, v3, Lcom/android/zxing/CacheImageDecoder$ImageWrapper;->noGaussian:Z

    move-object v4, v1

    invoke-interface/range {v4 .. v9}, Lcom/android/camera2/Camera2Proxy$AnchorPreviewCallback;->saveBitmapAsThumbnail(Landroid/graphics/Bitmap;IIZZ)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_1

    :cond_1
    const-string v1, "only camera module could anchor frame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mImageWrapper:Lcom/android/zxing/CacheImageDecoder$ImageWrapper;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/zxing/CacheImageDecoder$ImageWrapper;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_4

    goto :goto_2

    :goto_0
    iget-object p1, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mImageWrapper:Lcom/android/zxing/CacheImageDecoder$ImageWrapper;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/zxing/CacheImageDecoder$ImageWrapper;->mImage:Landroid/media/Image;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    iget-object p0, p0, Lcom/android/zxing/CacheImageDecoder$3;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-static {p0}, Lcom/android/zxing/CacheImageDecoder;->access$100(Lcom/android/zxing/CacheImageDecoder;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_2
    throw v0

    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mImageWrapper:Lcom/android/zxing/CacheImageDecoder$ImageWrapper;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/zxing/CacheImageDecoder$ImageWrapper;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iget-object p0, p0, Lcom/android/zxing/CacheImageDecoder$3;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-static {p0}, Lcom/android/zxing/CacheImageDecoder;->access$100(Lcom/android/zxing/CacheImageDecoder;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_4
    iget-wide p0, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mTimestamp:J

    :goto_3
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_4
    const-wide/16 p0, 0x0

    goto :goto_3
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;

    invoke-virtual {p0, p1}, Lcom/android/zxing/CacheImageDecoder$3;->apply(Lcom/android/zxing/CacheImageDecoder$FrameInfo;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
