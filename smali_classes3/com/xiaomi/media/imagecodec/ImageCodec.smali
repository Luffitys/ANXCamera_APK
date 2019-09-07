.class public final Lcom/xiaomi/media/imagecodec/ImageCodec;
.super Ljava/lang/Object;
.source "ImageCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageCodec"


# instance fields
.field private final mContextLock:Ljava/lang/Object;

.field private mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

.field private mNativeContext:J

.field private mOutputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jni_imagecodec"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeClassInit()V

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mContextLock:Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctor(): E "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    sget-object p1, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ctor(): X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static create(III)Lcom/xiaomi/media/imagecodec/ImageCodec;
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    if-lt p1, v0, :cond_2

    const/16 v0, 0x23

    if-eq p2, v0, :cond_1

    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The image format must be YUV_420_888 or NV21"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;-><init>(IIILcom/xiaomi/media/imagecodec/ImageCodec$1;)V

    new-instance p0, Lcom/xiaomi/media/imagecodec/ImageCodec;

    invoke-direct {p0, v0}, Lcom/xiaomi/media/imagecodec/ImageCodec;-><init>(Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The image dimensions must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getImageOwner(Landroid/media/Image;)Ljava/lang/Object;
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    const-class v0, Landroid/media/Image;

    new-array v1, p0, [Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getOwner"

    :try_start_1
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, p0, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get the owner of the given image"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private isImageValid(Landroid/media/Image;)Z
    .locals 1

    :try_start_0
    const-class p0, Landroid/media/Image;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "mIsImageValid"

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    const-string v0, "Failed to check if the given image is valid ot not"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Ljava/lang/Object;IIILandroid/view/Surface;)J
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeDrainInputImage(JLandroid/media/Image;)V
.end method

.method private native nativeGetOutputSpec(JLcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;)V
.end method

.method private native nativeSetCodecQuality(JI)V
.end method

.method private native nativeSetFlipFlag(JI)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    const-string v1, "postEventFromNative(): E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/media/imagecodec/ImageCodec;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    const-string v0, "postEventFromNative(): X"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public drainInputImage(Landroid/media/Image;)V
    .locals 5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    iget v1, v1, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->width:I

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    iget v1, v1, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->height:I

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    iget v1, v1, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->format:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.ImageReader$SurfaceImage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/xiaomi/media/imagecodec/ImageCodec;->isImageValid(Landroid/media/Image;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeDrainInputImage(JLandroid/media/Image;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Image is already closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only images from ImageReader can be fed to ImageCodec, other image source is not supported yet!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid input image format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid input image dimensions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The input image must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInputSpec()Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    return-object p0
.end method

.method public getOutputSpec()Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mOutputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    new-instance v1, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;-><init>(IIILcom/xiaomi/media/imagecodec/ImageCodec$1;)V

    iput-object v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mOutputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    iget-object v3, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mOutputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    invoke-direct {p0, v1, v2, v3}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeGetOutputSpec(JLcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageCodec is not initialized"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mOutputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public release()V
    .locals 3

    sget-object v0, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release(): E "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeDestroy(J)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/xiaomi/media/imagecodec/ImageCodec;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release(): X "

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
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v1, v2, p1}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeSetFlipFlag(JI)V

    monitor-exit v0

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ImageCodec is not initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .locals 6

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mInputSpec:Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;

    iget v2, v0, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->width:I

    iget v3, v0, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->height:I

    iget v4, v0, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->format:I

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeCreate(Ljava/lang/Object;IIILandroid/view/Surface;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The given output surface must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setQuality(I)V
    .locals 5

    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Lcom/xiaomi/media/imagecodec/ImageCodec;->nativeSetCodecQuality(JI)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ImageCodec is not initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "quality must be 0..100"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
