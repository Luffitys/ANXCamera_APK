.class public Lcom/android/camera/effect/framework/graphics/GraphicBuffer;
.super Ljava/lang/Object;
.source "GraphicBuffer.java"


# instance fields
.field private mFboId:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindFrameBuffer()V
    .locals 1

    iget p0, p0, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->mFboId:I

    const v0, 0x8d40

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public getFrameBufferId()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->mFboId:I

    return p0
.end method

.method public getFrameBufferTexId()I
    .locals 0

    invoke-static {}, Lcom/android/camera/effect/ShaderNativeUtil;->getGraphicBufferFboTexId()I

    move-result p0

    return p0
.end method

.method public initBuffer(II)V
    .locals 1

    invoke-static {p1, p2}, Lcom/android/camera/effect/ShaderNativeUtil;->setupGraphicBuffer(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->mFboId:I

    iput p1, p0, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->mWidth:I

    iput p2, p0, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->mHeight:I

    return-void
.end method

.method public initBuffer(III)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/camera/effect/ShaderNativeUtil;->setupGraphicBufferWithChannels(III)I

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->mFboId:I

    return-void
.end method

.method public readBuffer(III)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/camera/effect/ShaderNativeUtil;->readGraphicBuffer(III)V

    return-void
.end method

.method public release()V
    .locals 0

    invoke-static {}, Lcom/android/camera/effect/ShaderNativeUtil;->releaseGraphicBuffer()V

    return-void
.end method

.method public reszieBuffer(II)V
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->mWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->mHeight:I

    if-eq v0, p2, :cond_1

    :cond_0
    invoke-static {p1, p2}, Lcom/android/camera/effect/ShaderNativeUtil;->resizeGraphicBuffer(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->mFboId:I

    iput p1, p0, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->mWidth:I

    iput p2, p0, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->mHeight:I

    :cond_1
    return-void
.end method

.method public unbindFrameBuffer()V
    .locals 1

    const p0, 0x8d40

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method
