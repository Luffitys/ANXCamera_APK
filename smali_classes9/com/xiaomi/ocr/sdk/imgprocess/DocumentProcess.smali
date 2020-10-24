.class public Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final POINTS_COUNT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "DocumentProcess"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private nativeObj:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->init(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static ensureFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;
    .locals 1

    sget-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$Singleton;->INSTANCE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p1, p2}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cachePath:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", init time:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DocumentProcess"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static initAndRun(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeInitAndRun(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cachePath:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", initAndRun time:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DocumentProcess"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public doAlginDocument([BLandroid/graphics/Bitmap;II[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)[F
    .locals 12

    move-object v0, p0

    const/16 v1, 0x8

    new-array v1, v1, [F

    iget-object v11, v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-wide v2, v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object v9, v1

    invoke-static/range {v2 .. v10}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeAlignDocumentBitmap(J[BLandroid/graphics/Bitmap;II[F[FI)V

    monitor-exit v11

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doCropAndEnhance(Landroid/graphics/Bitmap;[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Z)Landroid/graphics/Bitmap;
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    move-object v3, p1

    move-object v4, p2

    move v7, p5

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeCropAndEnhanceBitmap(JLandroid/graphics/Bitmap;[FIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public doCropAndEnhance(Landroid/graphics/Bitmap;[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;Z)Landroid/graphics/Bitmap;
    .locals 6

    sget-object v4, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;->DEFAULT:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->doCropAndEnhance(Landroid/graphics/Bitmap;[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public doCropAndEnhance([BII[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;ZLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)Landroid/graphics/Bitmap;
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    sget-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;->DEFAULT:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object/from16 v7, p4

    move/from16 v10, p6

    invoke-static/range {v2 .. v11}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeCropAndEnhanceYUV(J[BII[FIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doCropImage(Landroid/graphics/Bitmap;[F)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;->DEFAULT:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->doCropImage(Landroid/graphics/Bitmap;[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public doCropImage(Landroid/graphics/Bitmap;[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {v1, v2, p1, p2, p0}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeCropImageBitmap(JLandroid/graphics/Bitmap;[FI)Landroid/graphics/Bitmap;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public doCropImage(Ljava/lang/String;Ljava/lang/String;[F)Z
    .locals 3

    invoke-static {p1, p2}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->ensureFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-static {v1, v2, p1, p2, p3}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeCropImage(JLjava/lang/String;Ljava/lang/String;[F)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public doEnhance(Landroid/graphics/Bitmap;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;Z)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {v1, v2, p1, p0, p3}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeEnhanceBitmap(JLandroid/graphics/Bitmap;IZ)I

    move-result p0

    if-nez p0, :cond_0

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public doEnhance(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;)Z
    .locals 3

    invoke-static {p1, p2}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->ensureFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {v1, v2, p1, p2, p0}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeEnhance(JLjava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public doScanDocument([B[FIIIILcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)I
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    move-object v4, p1

    move v5, p3

    move v6, p4

    move-object v8, p2

    invoke-static/range {v2 .. v9}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeScanDocumentYUV(J[BIII[FI)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doScanDocument(Landroid/graphics/Bitmap;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;)[F
    .locals 8

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget-object v7, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeScanDocumentBitmap(JLandroid/graphics/Bitmap;I[FI)I

    monitor-exit v7

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public doScanDocument(Landroid/graphics/Bitmap;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)[F
    .locals 8

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget-object v7, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    move-object v3, p1

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeScanDocumentBitmap(JLandroid/graphics/Bitmap;I[FI)I

    monitor-exit v7

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public doScanDocument(Ljava/lang/String;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;)[F
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {v2, v3, p1, p0, v0}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeScanDocument(JLjava/lang/String;I[F)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public doScanDocument([BIIIILcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)[F
    .locals 8

    const/16 p4, 0x8

    new-array p4, p4, [F

    iget-object p5, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter p5

    :try_start_0
    iget-wide v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {p7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeScanDocumentYUV(J[BIII[FI)I

    monitor-exit p5

    return-object p4

    :catchall_0
    move-exception p0

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public normalizationPoints([F)Z
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    array-length v2, p1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-static {v2, v3, p1}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeNormalizationPoints(J[F)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v0

    return v1

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public release()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-wide v3, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-static {v3, v4}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeRelease(J)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release time:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DocumentProcess"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public rotatePoints([FIILcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)[F
    .locals 0

    const/16 p0, 0x8

    new-array p0, p0, [F

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    invoke-static {p1, p2, p3, p4, p0}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeRotateDocumentYUVScanPoints([FIII[F)V

    return-object p0
.end method
