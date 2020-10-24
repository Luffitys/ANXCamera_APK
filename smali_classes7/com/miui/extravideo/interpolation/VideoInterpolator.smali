.class public Lcom/miui/extravideo/interpolation/VideoInterpolator;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoInterpolator"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doDecodeAndEncodeAsync(IILjava/lang/String;Ljava/lang/String;ZZLcom/miui/extravideo/interpolation/EncodeListener;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/miui/extravideo/interpolation/VideoInterpolator;->doDecodeAndEncodeAsyncWithWatermark(IILjava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;[FZLcom/miui/extravideo/interpolation/EncodeListener;)V

    return-void
.end method

.method public static doDecodeAndEncodeAsync(Ljava/lang/String;Ljava/lang/String;ZZLcom/miui/extravideo/interpolation/EncodeListener;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/miui/extravideo/interpolation/VideoInterpolator;->doDecodeAndEncodeAsyncWithWatermark(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;[FZLcom/miui/extravideo/interpolation/EncodeListener;)V

    return-void
.end method

.method public static doDecodeAndEncodeAsyncWithWatermark(IILjava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;[FZLcom/miui/extravideo/interpolation/EncodeListener;)V
    .locals 11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "1.0.0"

    aput-object v2, v0, v1

    const-string v1, "start doDecodeAndEncode async mode sdk version : %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoInterpolator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    const/4 v8, 0x0

    move-object v2, v0

    move v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;-><init>(IILjava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;[FZ)V

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->setEncodeListener(Lcom/miui/extravideo/interpolation/EncodeListener;)V

    invoke-virtual {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->doDecodeAndEncode()V

    return-void
.end method

.method public static doDecodeAndEncodeAsyncWithWatermark(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;[FZLcom/miui/extravideo/interpolation/EncodeListener;)V
    .locals 8

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "1.0.0"

    aput-object v1, p3, v0

    const-string v0, "start doDecodeAndEncode async mode sdk version : %s"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "VideoInterpolator"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    const/4 v5, 0x0

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;[FZ)V

    invoke-virtual {p3, p6}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->setEncodeListener(Lcom/miui/extravideo/interpolation/EncodeListener;)V

    invoke-virtual {p3}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->doDecodeAndEncode()V

    return-void
.end method

.method public static doDecodeAndEncodeSync(IILjava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/miui/extravideo/interpolation/VideoInterpolator;->doDecodeAndEncodeSyncWithWatermark(IILjava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;[FZ)Z

    move-result p0

    return p0
.end method

.method public static doDecodeAndEncodeSync(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v0}, Lcom/miui/extravideo/interpolation/VideoInterpolator;->doDecodeAndEncodeSync(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static doDecodeAndEncodeSync(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/extravideo/interpolation/VideoInterpolator;->doDecodeAndEncodeSyncWithWatermark(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;[FZ)Z

    move-result p0

    return p0
.end method

.method public static doDecodeAndEncodeSyncWithWatermark(IILjava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;[FZ)Z
    .locals 14

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "1.0.0"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "start doDecodeAndEncode sync mode sdk version : %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoInterpolator"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v0, [Z

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    new-instance v13, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    move-object v4, v13

    move v5, p0

    move v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-direct/range {v4 .. v12}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;-><init>(IILjava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;[FZ)V

    new-instance v4, Lcom/miui/extravideo/interpolation/VideoInterpolator$2;

    invoke-direct {v4, v2, v1, v0}, Lcom/miui/extravideo/interpolation/VideoInterpolator$2;-><init>(Ljava/util/concurrent/locks/Lock;[ZLjava/util/concurrent/locks/Condition;)V

    invoke-virtual {v13, v4}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->setEncodeListener(Lcom/miui/extravideo/interpolation/EncodeListener;)V

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {v13}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->doDecodeAndEncode()V

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    aput-boolean v3, v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    aget-boolean v0, v1, v3

    return v0

    :goto_2
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static doDecodeAndEncodeSyncWithWatermark(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;[FZ)Z
    .locals 12

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "1.0.0"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "start doDecodeAndEncode sync mode sdk version : %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoInterpolator"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v0, [Z

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    new-instance v11, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    move-object v4, v11

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;[FZ)V

    new-instance v4, Lcom/miui/extravideo/interpolation/VideoInterpolator$1;

    invoke-direct {v4, v2, v1, v0}, Lcom/miui/extravideo/interpolation/VideoInterpolator$1;-><init>(Ljava/util/concurrent/locks/Lock;[ZLjava/util/concurrent/locks/Condition;)V

    invoke-virtual {v11, v4}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->setEncodeListener(Lcom/miui/extravideo/interpolation/EncodeListener;)V

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {v11}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->doDecodeAndEncode()V

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    aput-boolean v3, v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    aget-boolean v0, v1, v3

    return v0

    :goto_2
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
