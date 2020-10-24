.class public abstract Lcom/xiaomi/mediacodec/BaseRenderDrawer;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final CoordsPerTextureCount:I

.field protected final CoordsPerVertexCount:I

.field protected final TextureStride:I

.field protected final VertexCount:I

.field protected final VertexStride:I

.field protected backTextureData:[F

.field protected displayTextureData:[F

.field protected frameBufferData:[F

.field protected frontTextureData:[F

.field protected height:I

.field private mBackTextureBuffer:Ljava/nio/FloatBuffer;

.field protected mBackTextureBufferId:I

.field private mDisplayTextureBuffer:Ljava/nio/FloatBuffer;

.field protected mDisplayTextureBufferId:I

.field private mFrameTextureBuffer:Ljava/nio/FloatBuffer;

.field protected mFrameTextureBufferId:I

.field private mFrontTextureBuffer:Ljava/nio/FloatBuffer;

.field protected mFrontTextureBufferId:I

.field protected mProgram:I

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field protected mVertexBufferId:I

.field protected vertexData:[F

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->vertexData:[F

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->frontTextureData:[F

    new-array v2, v0, [F

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->backTextureData:[F

    new-array v2, v0, [F

    fill-array-data v2, :array_3

    iput-object v2, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->displayTextureData:[F

    new-array v2, v0, [F

    fill-array-data v2, :array_4

    iput-object v2, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->frameBufferData:[F

    const/4 v2, 0x2

    iput v2, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->CoordsPerVertexCount:I

    array-length v1, v1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->VertexCount:I

    iput v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->VertexStride:I

    iput v2, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->CoordsPerTextureCount:I

    iput v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->TextureStride:I

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected clear()V
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-static {p0, p0, p0, v0}, Landroid/opengl/GLES30;->glClearColor(FFFF)V

    const/16 p0, 0x4100

    invoke-static {p0}, Landroid/opengl/GLES30;->glClear(I)V

    return-void
.end method

.method public create()V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->getVertexSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->getFragmentSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mediacodec/GlesUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mProgram:I

    invoke-virtual {p0}, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->initVertexBufferObjects()V

    invoke-virtual {p0}, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->onCreated()V

    return-void
.end method

.method public cropSize(IIIIII)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->onCroped(IIIIII)V

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->releaseVertexBufferObjects()V

    iget p0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mProgram:I

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mediacodec/GlesUtil;->DestoryProgram(I)V

    :cond_0
    return-void
.end method

.method public draw(J[F)V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->clear()V

    invoke-virtual {p0}, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->useProgram()V

    iget p1, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->width:I

    iget p2, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->height:I

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p3, p1, p2}, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->viewPort(IIII)V

    invoke-virtual {p0}, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->onDraw()V

    return-void
.end method

.method protected abstract getFragmentSource()Ljava/lang/String;
.end method

.method public abstract getOutputTextureId()I
.end method

.method protected abstract getVertexSource()Ljava/lang/String;
.end method

.method protected initVertexBufferObjects()V
    .locals 7

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glGenBuffers(I[II)V

    iget-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->vertexData:[F

    array-length v0, v0

    const/4 v3, 0x4

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->vertexData:[F

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    aget v0, v1, v2

    iput v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mVertexBufferId:I

    const v4, 0x8892

    invoke-static {v4, v0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->vertexData:[F

    array-length v0, v0

    mul-int/2addr v0, v3

    iget-object v5, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const v6, 0x88e4

    invoke-static {v4, v0, v5, v6}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->backTextureData:[F

    array-length v0, v0

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v5, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->backTextureData:[F

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mBackTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    aget v0, v1, v0

    iput v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mBackTextureBufferId:I

    invoke-static {v4, v0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->backTextureData:[F

    array-length v0, v0

    mul-int/2addr v0, v3

    iget-object v5, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mBackTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v4, v0, v5, v6}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->frontTextureData:[F

    array-length v0, v0

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v5, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->frontTextureData:[F

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mFrontTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x2

    aget v0, v1, v0

    iput v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mFrontTextureBufferId:I

    invoke-static {v4, v0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->frontTextureData:[F

    array-length v0, v0

    mul-int/2addr v0, v3

    iget-object v5, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mFrontTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v4, v0, v5, v6}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->displayTextureData:[F

    array-length v0, v0

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v5, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->displayTextureData:[F

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mDisplayTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x3

    aget v0, v1, v0

    iput v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mDisplayTextureBufferId:I

    invoke-static {v4, v0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->displayTextureData:[F

    array-length v0, v0

    mul-int/2addr v0, v3

    iget-object v5, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mDisplayTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v4, v0, v5, v6}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->frameBufferData:[F

    array-length v0, v0

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v5, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->frameBufferData:[F

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mFrameTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    aget v0, v1, v3

    iput v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mFrameTextureBufferId:I

    invoke-static {v4, v0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->frameBufferData:[F

    array-length v0, v0

    mul-int/2addr v0, v3

    iget-object p0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mFrameTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v4, v0, p0, v6}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {v4, v2}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    return-void
.end method

.method protected abstract onChanged(II)V
.end method

.method protected abstract onCreated()V
.end method

.method protected abstract onCroped(IIIIII)V
.end method

.method protected abstract onDraw()V
.end method

.method protected abstract release()V
.end method

.method protected releaseVertexBufferObjects()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget v2, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mVertexBufferId:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glDeleteBuffers(I[II)V

    new-array v1, v0, [I

    iget v2, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mBackTextureBufferId:I

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glDeleteBuffers(I[II)V

    new-array v1, v0, [I

    iget v2, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mFrontTextureBufferId:I

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glDeleteBuffers(I[II)V

    new-array v1, v0, [I

    iget v2, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mDisplayTextureBufferId:I

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glDeleteBuffers(I[II)V

    new-array v1, v0, [I

    iget v2, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mFrameTextureBufferId:I

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glDeleteBuffers(I[II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mBackTextureBuffer:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mFrontTextureBuffer:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mFrameTextureBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public abstract setInputTextureId(I)V
.end method

.method public abstract setReserverResolution(Z)V
.end method

.method public surfaceChangedSize(II)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->width:I

    iput p2, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->height:I

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->onChanged(II)V

    return-void
.end method

.method protected useProgram()V
    .locals 0

    iget p0, p0, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->mProgram:I

    invoke-static {p0}, Landroid/opengl/GLES30;->glUseProgram(I)V

    return-void
.end method

.method protected viewPort(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glViewport(IIII)V

    return-void
.end method
