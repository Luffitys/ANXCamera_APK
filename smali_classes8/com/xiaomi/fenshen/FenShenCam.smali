.class public Lcom/xiaomi/fenshen/FenShenCam;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static DEBUG:Z = false

.field private static IS_MTK_PLATFORM:Z = false

.field public static final MAX_PHOTO_SUBJECT_COUNT:I = 0x4

.field public static final MAX_VIDEO_SUBJECT_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CloneSDK"

.field private static listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

.field public static sIsEdit:Z

.field private static volatile sReleased:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "CloneSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->DEBUG:Z

    :try_start_0
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "platform is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->IS_MTK_PLATFORM:Z

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "clone_c++_shared"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;)V

    sget-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->IS_MTK_PLATFORM:Z

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "fenshen_apu"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "fenshen_snpe"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load native library failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPhoto(Landroid/media/Image;)V
    .locals 12

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeGetCurrentSubjectCount()I

    move-result v0

    const-string v1, "CloneSDK"

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    const-string p0, "AddPhoto: reached max subjects count, ignore"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPhoto "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v11

    invoke-static/range {v2 .. v11}, Lcom/xiaomi/fenshen/FenShenCam;->nativeAddPhoto(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    :goto_0
    sget-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "illegal image format, expect YUV image"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized addPreviewFrame(Landroid/media/Image;)V
    .locals 11

    const-class v0, Lcom/xiaomi/fenshen/FenShenCam;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->sReleased:Z

    if-eqz v1, :cond_0

    const-string p0, "CloneSDK"

    const-string v1, "ignore render, released"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CloneSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPreviewFrame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    aget-object v4, v5, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v6, v7, v6

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    aget-object v8, v9, v8

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v10

    invoke-static/range {v1 .. v10}, Lcom/xiaomi/fenshen/FenShenCam;->nativeAddPreviewFrame(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    sget-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {p0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    goto :goto_0

    :cond_2
    const-string p0, "CloneSDK"

    const-string v1, "addPreviewFrame, can\'t requestRender since listener is null"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :cond_3
    :try_start_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "illegal image format, expect YUV image"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static cancelEdit()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "cancelEdit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeCancelEdit()V

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    return-void
.end method

.method public static cancelPhoto()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "cancelPhoto"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeCancelPhoto()V

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    return-void
.end method

.method public static cancelVideo()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "cancelVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeCancelVideo()V

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    return-void
.end method

.method public static doCancel()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeDoCancel()V

    return-void
.end method

.method public static editMultiCopy()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "editMultiCopy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeEditMultiCopy()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    return-void
.end method

.method private static extractRawTo(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    sget-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->IS_MTK_PLATFORM:Z

    invoke-static {v0}, Lcom/xiaomi/fenshen/CloneUtil;->getCloneModelVersion(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "CloneSDK"

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->matchCloneModelVersion(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "ignore extractRawTo, file exists and matched"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractRawTo "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->getAssetManager(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 p2, 0x2800

    :try_start_2
    new-array p2, p2, [B

    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->updateCloneModelVersion(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p0, :cond_2

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-void

    :catchall_0
    move-exception p2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_3

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "extract raw file failed"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static finishPhoto()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeFinishPhoto()V

    return-void
.end method

.method public static getCurrentSubjectCount()I
    .locals 1

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeGetCurrentSubjectCount()I

    move-result v0

    return v0
.end method

.method public static init(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->sReleased:Z

    sput-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init previewWidth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", previewHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/fenshen/FenShenCam;->nativeInit(IILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static initResources(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "CloneSDK"

    const-string v1, "initResources E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    sget-boolean v2, Lcom/xiaomi/fenshen/FenShenCam;->IS_MTK_PLATFORM:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    const-string v3, "photo_b384_384_version1_apu_20200508.bin"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v3, v2}, Lcom/xiaomi/fenshen/FenShenCam;->extractRawTo(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "xseg2.dlc"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "xseg2_dlc"

    invoke-static {p0, v3, v2}, Lcom/xiaomi/fenshen/FenShenCam;->extractRawTo(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)V

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OO0oO()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    const-string v3, "det_quant.dlc"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "det_quant_dlc"

    invoke-static {p0, v1, v2}, Lcom/xiaomi/fenshen/FenShenCam;->extractRawTo(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)V

    :cond_1
    :goto_0
    const-string p0, "initResources X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isPlaying()Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeIsPlaying()Z

    move-result v0

    return v0
.end method

.method private static native nativeAddPhoto(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
.end method

.method private static native nativeAddPreviewFrame(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
.end method

.method private static native nativeCancelEdit()V
.end method

.method private static native nativeCancelPhoto()V
.end method

.method private static native nativeCancelVideo()V
.end method

.method private static native nativeDoCancel()V
.end method

.method private static native nativeEditMultiCopy()V
.end method

.method private static native nativeFinishPhoto()V
.end method

.method private static native nativeGetCurrentSubjectCount()I
.end method

.method private static native nativeGetResultJpeg()[B
.end method

.method private static native nativeInit(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeIsPlaying()Z
.end method

.method private static native nativePausePlayEffect()V
.end method

.method private static native nativePlayPreview()V
.end method

.method private static native nativePullCmd()Ljava/lang/String;
.end method

.method private static native nativeRelease()V
.end method

.method private static native nativeRender()I
.end method

.method private static native nativeRenderInit(IIIIII)I
.end method

.method private static native nativeResetEdit()V
.end method

.method private static native nativeResumePlayEffect()V
.end method

.method private static native nativeSaveEdit()V
.end method

.method private static native nativeSaveToVideo(Ljava/lang/String;)V
.end method

.method private static native nativeSaveVideo(Ljava/lang/String;)V
.end method

.method public static native nativeSendTouchEvent(IFFFFF)V
.end method

.method private static native nativeSetFilmFormat(Z)V
.end method

.method private static native nativeSetMode(I)V
.end method

.method private static native nativeSetPersonPos(FFII)V
.end method

.method private static native nativeSetPhotoQuality(I)V
.end method

.method private static native nativeSetVideoCodec(Ljava/lang/String;)V
.end method

.method private static native nativeStart()V
.end method

.method private static native nativeStartRecordVideo()V
.end method

.method private static native nativeStartRecordVideoTF()V
.end method

.method private static native nativeStartTimeFreeze()V
.end method

.method private static native nativeStopRecordVideo()V
.end method

.method private static native nativeStopRecordVideoTF()V
.end method

.method private static native nativeStopTimeFreeze()V
.end method

.method public static pausePlayEffect()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativePausePlayEffect()V

    return-void
.end method

.method public static playPreview()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativePlayPreview()V

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized release()V
    .locals 3

    const-class v0, Lcom/xiaomi/fenshen/FenShenCam;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->sReleased:Z

    if-eqz v1, :cond_0

    const-string v1, "CloneSDK"

    const-string v2, "ignore release twice"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "CloneSDK"

    const-string v2, "release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->sReleased:Z

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeRelease()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized render()V
    .locals 5

    const-class v0, Lcom/xiaomi/fenshen/FenShenCam;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->sReleased:Z

    if-eqz v1, :cond_0

    const-string v1, "CloneSDK"

    const-string v2, "ignore render, released"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeRender()I

    sget-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CloneSDK"

    const-string v2, "nativeRender "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeGetCurrentSubjectCount()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onSubjectCount(I)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativePullCmd()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    sget-boolean v2, Lcom/xiaomi/fenshen/FenShenCam;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "CloneSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "render cmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const-string v2, "dexcam_nullptr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_6

    :goto_1
    monitor-exit v0

    return-void

    :cond_6
    :try_start_2
    const-string v2, "request_render"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    goto :goto_0

    :cond_7
    const-string v2, "start_preview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onStartPreview()V

    goto :goto_0

    :cond_8
    const-string v2, "stop_preview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onStopPreview()V

    goto :goto_0

    :cond_9
    const-string v2, "stop_record"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onStopRecord()V

    goto :goto_0

    :cond_a
    const-string v2, "jpg_available"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeGetResultJpeg()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onPhotoResult([B)V

    goto :goto_0

    :cond_b
    const-string v2, "video_saved "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v2, v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onVideoSaved(I)V

    goto/16 :goto_0

    :cond_c
    const-string v2, "msg_start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->START:Lcom/xiaomi/fenshen/FenShenCam$Message;

    :goto_2
    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_d
    const-string v2, "align_ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_OK:Lcom/xiaomi/fenshen/FenShenCam$Message;

    goto :goto_2

    :cond_e
    const-string v2, "align_warning"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_WARNING:Lcom/xiaomi/fenshen/FenShenCam$Message;

    goto :goto_2

    :cond_f
    const-string v2, "align_fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_TOO_LARGE_OR_FAILED:Lcom/xiaomi/fenshen/FenShenCam$Message;

    goto :goto_2

    :cond_10
    const-string v2, "preview_no_person"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    goto :goto_2

    :cond_11
    const-string v2, "no_person"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    goto :goto_2

    :cond_12
    const-string v2, "move_outside"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->MOVE_OUTSIDE:Lcom/xiaomi/fenshen/FenShenCam$Message;

    goto :goto_2

    :cond_13
    const-string v2, "dynamic_scene"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->DYNAMIC_SCENE:Lcom/xiaomi/fenshen/FenShenCam$Message;

    goto :goto_2

    :cond_14
    const-string v2, "init_error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->ERROR_INIT:Lcom/xiaomi/fenshen/FenShenCam$Message;

    goto :goto_2

    :cond_15
    const-string v2, "runtime_error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->ERROR_RUNTIME:Lcom/xiaomi/fenshen/FenShenCam$Message;

    goto :goto_2

    :cond_16
    const-string v2, "success_target_detect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    goto/16 :goto_2

    :cond_17
    const-string v2, "failed_target_detect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    goto/16 :goto_2

    :cond_18
    const-string v2, "save_video_success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->SAVE_VIDEO_SUCCESS:Lcom/xiaomi/fenshen/FenShenCam$Message;

    goto/16 :goto_2

    :cond_19
    const-string v2, "edit_done"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->EDIT_DONE:Lcom/xiaomi/fenshen/FenShenCam$Message;

    goto/16 :goto_2

    :cond_1a
    const-string v2, "paused"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->PAUSED:Lcom/xiaomi/fenshen/FenShenCam$Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static renderInit(IIIIII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "renderInit screenW "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drawX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drawY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drawW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drawH = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p5}, Lcom/xiaomi/fenshen/FenShenCam;->nativeRenderInit(IIIIII)I

    return-void
.end method

.method public static resetEdit()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "resetEdit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeResetEdit()V

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    return-void
.end method

.method public static resumePlayEffect()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeResumePlayEffect()V

    return-void
.end method

.method public static saveEdit()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "saveEdit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSaveEdit()V

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    return-void
.end method

.method public static saveToVideo(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSaveToVideo(Ljava/lang/String;)V

    return-void
.end method

.method public static saveVideo(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSaveVideo(Ljava/lang/String;)V

    sget-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    return-void
.end method

.method public static sendTouchEvent(Lcom/xiaomi/fenshen/FenShenCam$TEventType;FFFFF)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSendTouchEvent(IFFFFF)V

    return-void
.end method

.method public static setFilmFormat(Z)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSetFilmFormat(Z)V

    return-void
.end method

.method public static setListener(Lcom/xiaomi/fenshen/FenShenCam$Listener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    return-void
.end method

.method public static setMode(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSetMode(I)V

    return-void
.end method

.method public static setPersonPos(FFII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSetPersonPos(FFII)V

    return-void
.end method

.method public static setPhotoQuality(I)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSetPhotoQuality(I)V

    return-void
.end method

.method public static setVideoCodec(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSetVideoCodec(Ljava/lang/String;)V

    return-void
.end method

.method public static start()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeStart()V

    return-void
.end method

.method public static startRecordVideo()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "startRecordVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeStartRecordVideo()V

    return-void
.end method

.method public static startRecordVideoTF()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeStartRecordVideoTF()V

    return-void
.end method

.method public static startTimeFreeze()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeStartTimeFreeze()V

    return-void
.end method

.method public static stopRecordVideo()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "stopRecordVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeStopRecordVideo()V

    return-void
.end method

.method public static stopRecordVideoTF()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeStopRecordVideoTF()V

    return-void
.end method

.method public static stopTimeFreeze()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeStopTimeFreeze()V

    return-void
.end method
