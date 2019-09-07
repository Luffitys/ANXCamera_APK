.class public Lcom/android/camera2/ArcsoftDepthMap;
.super Ljava/lang/Object;
.source "ArcsoftDepthMap.java"


# static fields
.field private static final BLUR_LEVEL_START_ADDR:I = 0x10

.field private static final DAPTH_MAP_START_ADDR:I = 0x98

.field private static final DATA_LENGTH_4:I = 0x4

.field private static final DATA_LENGTH_START_ADDR:I = 0x94

.field private static final HEADER_LENGTH_START_ADDR:I = 0x4

.field private static final HEADER_START_ADDR:I = 0x0

.field private static final POINT_X_START_ADDR:I = 0x8

.field private static final POINT_Y_START_ADDR:I = 0xc

.field private static final TAG:Ljava/lang/String; = "ArcsoftDepthMap"

.field public static final TAG_DEPTH_MAP_BLUR_LEVEL:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_DEPTH_MAP_FOCUS_POINT:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mDepthMapHeader:[B

.field private mDepthMapOriginalData:[B


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, -0x7770

    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera2/ArcsoftDepthMap;->TAG_DEPTH_MAP_FOCUS_POINT:I

    const/16 v1, -0x776f

    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera2/ArcsoftDepthMap;->TAG_DEPTH_MAP_BLUR_LEVEL:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/camera2/ArcsoftDepthMap;->getHeaderTag([B)I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/camera2/ArcsoftDepthMap;->mDepthMapOriginalData:[B

    invoke-virtual {p0}, Lcom/android/camera2/ArcsoftDepthMap;->getDepthMapHeader()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/ArcsoftDepthMap;->mDepthMapHeader:[B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal depth format! 0x80 != "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null depth data!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getBytes([BII)[B
    .locals 2

    if-lez p2, :cond_0

    if-ltz p1, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_0

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WRONG ARGUMENT: from ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", length = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getHeaderTag([B)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera2/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/ArcsoftDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method private static getInteger([B)I
    .locals 5

    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bytes can not covert to a integer value!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isDepthMapData([B)Z
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/camera2/ArcsoftDepthMap;->getHeaderTag([B)I

    move-result p0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "Illegal depthmap format"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method


# virtual methods
.method public getBlurLevel()I
    .locals 2

    iget-object p0, p0, Lcom/android/camera2/ArcsoftDepthMap;->mDepthMapHeader:[B

    const/16 v0, 0x10

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera2/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/ArcsoftDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method public getDepthMapData()[B
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/ArcsoftDepthMap;->mDepthMapOriginalData:[B

    invoke-virtual {p0}, Lcom/android/camera2/ArcsoftDepthMap;->getDepthMapLength()I

    move-result p0

    const/16 v1, 0x98

    invoke-static {v0, v1, p0}, Lcom/android/camera2/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public getDepthMapHeader()[B
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/ArcsoftDepthMap;->mDepthMapOriginalData:[B

    const/4 v1, 0x4

    invoke-static {v0, v1, v1}, Lcom/android/camera2/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/ArcsoftDepthMap;->getInteger([B)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera2/ArcsoftDepthMap;->mDepthMapOriginalData:[B

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/camera2/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public getDepthMapLength()I
    .locals 2

    iget-object p0, p0, Lcom/android/camera2/ArcsoftDepthMap;->mDepthMapHeader:[B

    const/16 v0, 0x94

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera2/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/ArcsoftDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method public getFocusPoint()Landroid/graphics/Point;
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/ArcsoftDepthMap;->mDepthMapHeader:[B

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/android/camera2/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/ArcsoftDepthMap;->getInteger([B)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera2/ArcsoftDepthMap;->mDepthMapHeader:[B

    const/16 v2, 0xc

    invoke-static {p0, v2, v1}, Lcom/android/camera2/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/ArcsoftDepthMap;->getInteger([B)I

    move-result p0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public writePortraitExif(I[B[B[I[B[I[B[IIZZLcom/xiaomi/camera/core/PictureInfo;II)[B
    .locals 18
    .param p4    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v0, p9

    const-string v7, "depthmap"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/ArcsoftDepthMap;->getFocusPoint()Landroid/graphics/Point;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/ArcsoftDepthMap;->getBlurLevel()I

    move-result v9

    invoke-virtual/range {p12 .. p12}, Lcom/xiaomi/camera/core/PictureInfo;->isFrontCamera()Z

    move-result v10

    const/4 v11, -0x1

    const/16 v12, 0xa

    const/4 v13, 0x5

    if-lez v1, :cond_3

    if-eqz v10, :cond_1

    invoke-virtual/range {p12 .. p12}, Lcom/xiaomi/camera/core/PictureInfo;->isAiEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual/range {p12 .. p12}, Lcom/xiaomi/camera/core/PictureInfo;->getAiType()I

    move-result v10

    if-ne v10, v12, :cond_0

    const/16 v11, 0x46

    goto :goto_0

    :cond_0
    const/16 v11, 0x28

    goto :goto_0

    :cond_1
    invoke-virtual/range {p12 .. p12}, Lcom/xiaomi/camera/core/PictureInfo;->isAiEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual/range {p12 .. p12}, Lcom/xiaomi/camera/core/PictureInfo;->getAiType()I

    move-result v10

    if-ne v10, v12, :cond_2

    const/16 v11, 0x1e

    goto :goto_0

    :cond_2
    move v11, v12

    goto :goto_0

    :cond_3
    move v13, v11

    :goto_0
    sget-object v10, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "writePortraitExif: focusPoint: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "writePortraitExif: blurLevel: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "writePortraitExif: shineThreshold: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "writePortraitExif: shineLevel: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "writePortraitExif: lightingPattern: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    const/4 v14, 0x0

    :try_start_0
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v12, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v12}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    invoke-virtual {v12, v2}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    invoke-virtual {v12, v1}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiDepthmapVersion(I)Z

    invoke-virtual {v12, v9}, Lcom/android/gallery3d/exif/ExifInterface;->addDepthMapBlurLevel(I)Z

    invoke-virtual {v12, v0}, Lcom/android/gallery3d/exif/ExifInterface;->addPortraitLighting(I)Z

    if-eqz p11, :cond_5

    if-eqz p10, :cond_4

    move v0, v10

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v12, v0}, Lcom/android/gallery3d/exif/ExifInterface;->addFrontMirror(I)Z

    :cond_5
    invoke-virtual {v12, v2, v15}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v14, v15}, Lcom/android/camera2/ArcsoftDepthMap;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v12, v0

    :try_start_3
    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v0

    :try_start_4
    invoke-static {v12, v15}, Lcom/android/camera2/ArcsoftDepthMap;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v16
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-object v0, v14

    :catch_1
    sget-object v12, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    const-string v15, "writePortraitExif(): Failed to write depthmap associated exif metadata"

    invoke-static {v12, v15}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v12, v0

    if-eqz v12, :cond_13

    array-length v0, v12

    array-length v15, v2

    if-gt v0, v15, :cond_6

    goto/16 :goto_d

    :cond_6
    :try_start_5
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    new-instance v15, Ljava/io/StringWriter;

    invoke-direct {v15}, Ljava/io/StringWriter;-><init>()V

    invoke-interface {v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v14, "UTF-8"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "version"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v1, v14, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "focuspoint"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-interface {v0, v10, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "blurlevel"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v10, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "shinethreshold"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v10, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "shinelevel"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v10, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "rawlength"

    invoke-static/range {p13 .. p13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v10, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "depthlength"

    invoke-static/range {p14 .. p14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v10, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    const-string v7, "paddingy"

    const-string v9, "paddingx"

    const-string v10, "height"

    const-string v11, "width"

    const-string v13, "length"

    const-string v14, "offset"

    if-eqz v5, :cond_9

    :try_start_6
    array-length v1, v5

    if-lez v1, :cond_9

    if-eqz v6, :cond_9

    array-length v1, v6

    const/4 v8, 0x4

    if-lt v1, v8, :cond_9

    const-string v1, "subimage"

    const/4 v8, 0x0

    invoke-interface {v0, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    array-length v1, v5

    if-eqz v3, :cond_7

    array-length v8, v3

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_3
    add-int/2addr v1, v8

    if-eqz v4, :cond_8

    array-length v8, v4

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    :goto_4
    add-int/2addr v1, v8

    add-int v1, v1, p13

    add-int v1, v1, p14

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    invoke-interface {v0, v8, v14, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    array-length v1, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v13, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    aget v17, v6, v1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v9, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x1

    aget v17, v6, v1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x2

    aget v17, v6, v1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x3

    aget v17, v6, v1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v10, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "subimage"

    invoke-interface {v0, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    if-eqz v3, :cond_b

    array-length v1, v3

    if-lez v1, :cond_b

    const-string v1, "lenswatermark"

    const/4 v8, 0x0

    invoke-interface {v0, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    array-length v1, v3

    if-eqz v4, :cond_a

    array-length v8, v4

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    :goto_5
    add-int/2addr v1, v8

    add-int v1, v1, p13

    add-int v1, v1, p14

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    invoke-interface {v0, v8, v14, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    array-length v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v13, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    aget v17, p4, v1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x1

    aget v17, p4, v1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v10, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x2

    aget v17, p4, v1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v9, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x3

    aget v17, p4, v1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "lenswatermark"

    invoke-interface {v0, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    if-eqz v4, :cond_c

    array-length v1, v4

    if-lez v1, :cond_c

    const-string v1, "timewatermark"

    const/4 v8, 0x0

    invoke-interface {v0, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    array-length v1, v4

    add-int v1, v1, p13

    add-int v1, v1, p14

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v14, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    array-length v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v13, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    aget v1, p6, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x1

    aget v1, p6, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v10, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x2

    aget v1, p6, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v9, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x3

    aget v1, p6, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "timewatermark"

    invoke-interface {v0, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v15}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    :catch_2
    sget-object v0, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): Failed to generate depthmap associated xmp metadata"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    :goto_6
    if-nez v14, :cond_d

    sget-object v0, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): #2: return original jpeg"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_d
    :try_start_7
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/adobe/xmp/XMPException; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :try_start_9
    invoke-static {}, Lcom/android/camera/XmpHelper;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    const-string v8, "http://ns.xiaomi.com/photos/1.0/camera/"

    const-string v9, "XMPMeta"

    invoke-interface {v0, v8, v9, v14}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1, v7, v0}, Lcom/android/camera/XmpHelper;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v5, :cond_e

    :try_start_a
    array-length v0, v5

    if-lez v0, :cond_e

    if-eqz v6, :cond_e

    array-length v0, v6

    const/4 v6, 0x4

    if-lt v0, v6, :cond_e

    invoke-virtual {v7, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v4, v0

    const/4 v3, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    if-eqz v3, :cond_f

    invoke-virtual {v7, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v7, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_10
    :try_start_b
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    const/4 v3, 0x0

    :try_start_c
    invoke-static {v3, v7}, Lcom/android/camera2/ArcsoftDepthMap;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    invoke-static {v3, v1}, Lcom/android/camera2/ArcsoftDepthMap;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Lcom/adobe/xmp/XMPException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_a

    :catchall_4
    move-exception v0

    const/4 v3, 0x0

    move-object v4, v0

    :goto_8
    :try_start_e
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    move-object v5, v0

    :try_start_f
    invoke-static {v4, v7}, Lcom/android/camera2/ArcsoftDepthMap;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_9

    :catchall_7
    move-exception v0

    const/4 v3, 0x0

    :goto_9
    move-object v14, v3

    :goto_a
    move-object v3, v0

    :try_start_10
    throw v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :catchall_8
    move-exception v0

    move-object v4, v0

    :try_start_11
    invoke-static {v3, v1}, Lcom/android/camera2/ArcsoftDepthMap;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Lcom/adobe/xmp/XMPException; {:try_start_11 .. :try_end_11} :catch_4

    :catch_3
    const/4 v3, 0x0

    move-object v14, v3

    :catch_4
    sget-object v0, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): Failed to insert depthmap associated xmp metadata"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    if-eqz v14, :cond_12

    array-length v0, v14

    array-length v1, v12

    if-gt v0, v1, :cond_11

    goto :goto_c

    :cond_11
    return-object v14

    :cond_12
    :goto_c
    sget-object v0, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): #3: return original jpeg"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_13
    :goto_d
    sget-object v0, Lcom/android/camera2/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): #1: return original jpeg"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method
