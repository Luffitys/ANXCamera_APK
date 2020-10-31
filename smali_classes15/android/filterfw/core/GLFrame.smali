.class public Landroid/filterfw/core/GLFrame;
.super Landroid/filterfw/core/Frame;
.source "GLFrame.java"


# static fields
.field public static final EXISTING_FBO_BINDING:I = 0x65

.field public static final EXISTING_TEXTURE_BINDING:I = 0x64

.field public static final EXTERNAL_TEXTURE:I = 0x68

.field public static final NEW_FBO_BINDING:I = 0x67

.field public static final NEW_TEXTURE_BINDING:I = 0x66


# instance fields
.field private glFrameId:I

.field private mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

.field private mOwnsTexture:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "filterfw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    return-void
.end method

.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    return-void
.end method

.method private assertGLEnvValid()V
    .registers 4

    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->isContextActive()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->isAnyContextActive()Z

    move-result v0

    const-string v1, "Attempting to access "

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with foreign GL context active!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with no GL context  active!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    return-void
.end method

.method private native generateNativeMipMap()Z
.end method

.method private native getNativeBitmap(Landroid/graphics/Bitmap;)Z
.end method

.method private native getNativeData()[B
.end method

.method private native getNativeFboId()I
.end method

.method private native getNativeFloats()[F
.end method

.method private native getNativeInts()[I
.end method

.method private native getNativeTextureId()I
.end method

.method private initNew(Z)V
    .registers 5

    if-eqz p1, :cond_13

    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-direct {p0, v0}, Landroid/filterfw/core/GLFrame;->nativeAllocateExternal(Landroid/filterfw/core/GLEnvironment;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2b

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not allocate external GL frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/filterfw/core/GLFrame;->nativeAllocate(Landroid/filterfw/core/GLEnvironment;II)Z

    move-result v0

    if-eqz v0, :cond_2c

    :goto_2b
    return-void

    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not allocate GL frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initWithFbo(I)V
    .registers 6

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/filterfw/core/GLFrame;->nativeAllocateWithFbo(Landroid/filterfw/core/GLEnvironment;III)Z

    move-result v2

    if-eqz v2, :cond_19

    return-void

    :cond_19
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not allocate FBO backed GL frame!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private initWithTexture(I)V
    .registers 6

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/filterfw/core/GLFrame;->nativeAllocateWithTexture(Landroid/filterfw/core/GLEnvironment;III)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->markReadOnly()V

    return-void

    :cond_1f
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not allocate texture backed GL frame!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private native nativeAllocate(Landroid/filterfw/core/GLEnvironment;II)Z
.end method

.method private native nativeAllocateExternal(Landroid/filterfw/core/GLEnvironment;)Z
.end method

.method private native nativeAllocateWithFbo(Landroid/filterfw/core/GLEnvironment;III)Z
.end method

.method private native nativeAllocateWithTexture(Landroid/filterfw/core/GLEnvironment;III)Z
.end method

.method private native nativeCopyFromGL(Landroid/filterfw/core/GLFrame;)Z
.end method

.method private native nativeCopyFromNative(Landroid/filterfw/core/NativeFrame;)Z
.end method

.method private native nativeDeallocate()Z
.end method

.method private native nativeDetachTexFromFbo()Z
.end method

.method private native nativeFocus()Z
.end method

.method private native nativeReattachTexToFbo()Z
.end method

.method private native nativeResetParams()Z
.end method

.method private native setNativeBitmap(Landroid/graphics/Bitmap;I)Z
.end method

.method private native setNativeData([BII)Z
.end method

.method private native setNativeFloats([F)Z
.end method

.method private native setNativeInts([I)Z
.end method

.method private native setNativeTextureParam(II)Z
.end method

.method private native setNativeViewport(IIII)Z
.end method


# virtual methods
.method flushGPU(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Landroid/filterfw/core/GLFrameTimer;->get()Landroid/filterfw/core/StopWatchMap;

    move-result-object v0

    iget-boolean v1, v0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    if-eqz v1, :cond_31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glFinish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/StopWatchMap;->start(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/StopWatchMap;->stop(Ljava/lang/String;)V

    :cond_31
    return-void
.end method

.method public focus()V
    .registers 3

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not focus on GLFrame for drawing!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateMipMap()V
    .registers 3

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->generateNativeMipMap()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not generate mip-map for GL frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 4

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    const-string v0, "getBitmap"

    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/filterfw/core/GLFrame;->getNativeBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_25

    return-object v0

    :cond_25
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get bitmap data from GL frame!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    const-string v0, "getData"

    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeData()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getFboId()I
    .registers 2

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeFboId()I

    move-result v0

    return v0
.end method

.method public getFloats()[F
    .registers 2

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    const-string v0, "getFloats"

    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeFloats()[F

    move-result-object v0

    return-object v0
.end method

.method public getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    return-object v0
.end method

.method public getInts()[I
    .registers 2

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    const-string v0, "getInts"

    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeInts()[I

    move-result-object v0

    return-object v0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeData()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getTextureId()I
    .registers 2

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeTextureId()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized hasNativeAllocation()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method init(Landroid/filterfw/core/GLEnvironment;)V
    .registers 8

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    iput-object p1, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_97

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8f

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    if-ltz v1, :cond_87

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingType()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2a

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initNew(Z)V

    goto :goto_67

    :cond_2a
    const/16 v3, 0x68

    if-ne v1, v3, :cond_34

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initNew(Z)V

    const/4 v2, 0x0

    goto :goto_67

    :cond_34
    const/16 v3, 0x64

    if-ne v1, v3, :cond_41

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initWithTexture(I)V

    goto :goto_67

    :cond_41
    const/16 v3, 0x65

    if-ne v1, v3, :cond_4e

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initWithFbo(I)V

    goto :goto_67

    :cond_4e
    const/16 v3, 0x66

    if-ne v1, v3, :cond_5b

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initWithTexture(I)V

    goto :goto_67

    :cond_5b
    const/16 v3, 0x67

    if-ne v1, v3, :cond_6b

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initWithFbo(I)V

    :goto_67
    invoke-virtual {p0, v2}, Landroid/filterfw/core/GLFrame;->setReusable(Z)V

    return-void

    :cond_6b
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to create GL frame with unknown binding type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_87
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Initializing GL frame with zero size!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "GL frames must be 2-dimensional!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "GL frames must have 4 bytes per sample!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onFrameFetch()V
    .registers 2

    iget-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeReattachTexToFbo()Z

    :cond_7
    return-void
.end method

.method protected onFrameStore()V
    .registers 2

    iget-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeDetachTexFromFbo()Z

    :cond_7
    return-void
.end method

.method protected declared-synchronized releaseNativeAllocation()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeDeallocate()Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected reset(Landroid/filterfw/core/FrameFormat;)V
    .registers 4

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeResetParams()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1}, Landroid/filterfw/core/Frame;->reset(Landroid/filterfw/core/FrameFormat;)V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not reset GLFrame texture parameters!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 5

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_39

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_39

    invoke-static {p1}, Landroid/filterfw/core/GLFrame;->convertBitmapToRGBA(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/filterfw/core/GLFrame;->setNativeBitmap(Landroid/graphics/Bitmap;I)Z

    move-result v1

    if-eqz v1, :cond_31

    return-void

    :cond_31
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not set GL frame bitmap data!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bitmap dimensions do not match GL frame dimensions!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData(Ljava/nio/ByteBuffer;II)V
    .registers 7

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    array-length v2, v0

    if-ne v1, v2, :cond_24

    invoke-direct {p0, v0, p2, p3}, Landroid/filterfw/core/GLFrame;->setNativeData([BII)Z

    move-result v1

    if-eqz v1, :cond_1c

    return-void

    :cond_1c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not set GL frame data!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Data size in setData does not match GL frame size!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDataFromFrame(Landroid/filterfw/core/Frame;)V
    .registers 5

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    if-lt v0, v1, :cond_3b

    instance-of v0, p1, Landroid/filterfw/core/NativeFrame;

    if-eqz v0, :cond_20

    move-object v0, p1

    check-cast v0, Landroid/filterfw/core/NativeFrame;

    invoke-direct {p0, v0}, Landroid/filterfw/core/GLFrame;->nativeCopyFromNative(Landroid/filterfw/core/NativeFrame;)Z

    goto :goto_3a

    :cond_20
    instance-of v0, p1, Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_2b

    move-object v0, p1

    check-cast v0, Landroid/filterfw/core/GLFrame;

    invoke-direct {p0, v0}, Landroid/filterfw/core/GLFrame;->nativeCopyFromGL(Landroid/filterfw/core/GLFrame;)Z

    goto :goto_3a

    :cond_2b
    instance-of v0, p1, Landroid/filterfw/core/SimpleFrame;

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->setObjectValue(Ljava/lang/Object;)V

    goto :goto_3a

    :cond_37
    invoke-super {p0, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    :goto_3a
    return-void

    :cond_3b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to assign frame of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to smaller GL frame of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFloats([F)V
    .registers 4

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->setNativeFloats([F)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not set int values for GL frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInts([I)V
    .registers 4

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->setNativeInts([I)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not set int values for GL frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextureParameter(II)V
    .registers 6

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/GLFrame;->setNativeTextureParam(II)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set texture value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for GLFrame!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setViewport(IIII)V
    .registers 5

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/core/GLFrame;->setNativeViewport(IIII)Z

    return-void
.end method

.method public setViewport(Landroid/graphics/Rect;)V
    .registers 7

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/filterfw/core/GLFrame;->setNativeViewport(IIII)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLFrame id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") with texture ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", FBO ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFboId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
