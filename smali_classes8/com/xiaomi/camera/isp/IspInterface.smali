.class public Lcom/xiaomi/camera/isp/IspInterface;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IspInterface"


# instance fields
.field private final mContextLock:Ljava/lang/Object;

.field private mInputStreamList:Ljava/util/ArrayList;

.field private mNativeContext:J

.field private mPicOutputSurface:Landroid/view/Surface;

.field private mSettings:Landroid/os/Parcelable;

.field private mTuningOutputSurface:Landroid/view/Surface;

.field private mYuvOutputSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "camera.debug.enable"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/camera/isp/IspInterface;->DEBUG:Z

    :try_start_0
    const-string v0, "jni_ispinterface"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    const-string v2, "load library jni_ispinterface.so failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {}, Lcom/xiaomi/camera/isp/IspInterface;->nativeClassInit()V

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;ILandroid/os/Parcelable;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mContextLock:Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctor: E "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/xiaomi/camera/isp/IspInterface;->mInputStreamList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/xiaomi/camera/isp/IspInterface;->mPicOutputSurface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/xiaomi/camera/isp/IspInterface;->mYuvOutputSurface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/xiaomi/camera/isp/IspInterface;->mTuningOutputSurface:Landroid/view/Surface;

    iput-object p6, p0, Lcom/xiaomi/camera/isp/IspInterface;->mSettings:Landroid/os/Parcelable;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/xiaomi/camera/isp/IspInterface;->mInputStreamList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaomi/camera/isp/IspInterface;->mPicOutputSurface:Landroid/view/Surface;

    iget-object v4, p0, Lcom/xiaomi/camera/isp/IspInterface;->mYuvOutputSurface:Landroid/view/Surface;

    iget-object v5, p0, Lcom/xiaomi/camera/isp/IspInterface;->mTuningOutputSurface:Landroid/view/Surface;

    iget-object v7, p0, Lcom/xiaomi/camera/isp/IspInterface;->mSettings:Landroid/os/Parcelable;

    move-object v0, p0

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/camera/isp/IspInterface;->nativeCreate(Ljava/lang/Object;Ljava/util/ArrayList;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;ILandroid/os/Parcelable;)V

    sget-object v0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctor: X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static create(Ljava/util/ArrayList;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;ILandroid/os/Parcelable;)Lcom/xiaomi/camera/isp/IspInterface;
    .locals 8
    .param p0    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/Surface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/Surface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/Surface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Parcelable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/camera/isp/IspInterface;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/camera/isp/IspInterface;-><init>(Ljava/util/ArrayList;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;ILandroid/os/Parcelable;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The inputStreamList is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Ljava/lang/Object;Ljava/util/ArrayList;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;ILandroid/os/Parcelable;)V
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeQueryFeatureSetting(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;)Lcom/xiaomi/camera/imagecodec/FeatureSetting;
.end method

.method private native nativeRawToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V
.end method

.method private native nativeRawToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V
.end method

.method private native nativeSetFlipFlag(I)V
.end method

.method private native nativeYuvToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V
.end method

.method private native nativeYuvToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    const-string v1, "postEventFromNative: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/isp/IspInterface;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    const-string v0, "postEventFromNative: X"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getInputStreamId(III)J
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mInputStreamList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/isp/IspStream;

    iget v2, v1, Lcom/xiaomi/camera/isp/IspStream;->width:I

    if-ne p1, v2, :cond_0

    iget v2, v1, Lcom/xiaomi/camera/isp/IspStream;->height:I

    if-ne p2, v2, :cond_0

    iget v2, v1, Lcom/xiaomi/camera/isp/IspStream;->format:I

    if-ne p3, v2, :cond_0

    iget-wide p0, v1, Lcom/xiaomi/camera/isp/IspStream;->streamId:J

    return-wide p0

    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mInputStreamList:Ljava/util/ArrayList;

    if-nez p0, :cond_3

    const-string p0, "getInputStreamId: input stream has not been initialized"

    sget-object p1, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/xiaomi/camera/isp/IspInterface;->DEBUG:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "getInputStreamId: no stream found with [width=%d height=%d format=%d]"

    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/xiaomi/camera/isp/IspInterface;->DEBUG:Z

    if-nez p1, :cond_4

    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public queryFeatureSetting(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;)Lcom/xiaomi/camera/imagecodec/FeatureSetting;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeQueryFeatureSetting(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;)Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    move-result-object p0

    return-object p0
.end method

.method public rawToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeRawToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V

    return-void
.end method

.method public rawToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeRawToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V

    return-void
.end method

.method public release()V
    .locals 3

    sget-object v0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: E "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/camera/isp/IspInterface;->nativeDestroy()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setFlip(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeSetFlipFlag(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public yuvToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeYuvToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V

    return-void
.end method

.method public yuvToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeYuvToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V

    return-void
.end method
