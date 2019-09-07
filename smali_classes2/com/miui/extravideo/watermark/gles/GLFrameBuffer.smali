.class public Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;
.super Ljava/lang/Object;
.source "GLFrameBuffer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GLFrameBuffer"


# instance fields
.field private mFbo:I

.field private mHeight:I

.field private mTex:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->initFramebuffer(II)V

    return-void
.end method


# virtual methods
.method public getFrameBufferId()I
    .locals 0

    iget p0, p0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mFbo:I

    return p0
.end method

.method public getFrameBufferTextureId()I
    .locals 0

    iget p0, p0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mTex:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mHeight:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mWidth:I

    return p0
.end method

.method public initFramebuffer(II)V
    .locals 14

    move-object v0, p0

    move v4, p1

    iput v4, v0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mWidth:I

    move/from16 v5, p2

    iput v5, v0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mHeight:I

    const/4 v10, 0x1

    new-array v11, v10, [I

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    aget v1, v11, v12

    const/16 v13, 0xde1

    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v1, 0x46180400    # 9729.0f

    const/16 v2, 0x2801

    invoke-static {v13, v2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    invoke-static {v13, v2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v1, 0x812f

    const/16 v2, 0x2802

    invoke-static {v13, v2, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    invoke-static {v13, v2, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    aget v1, v11, v12

    iput v1, v0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mTex:I

    new-array v1, v10, [I

    invoke-static {v10, v1, v12}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget v2, v1, v12

    const v3, 0x8d40

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    aget v1, v1, v12

    iput v1, v0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mFbo:I

    aget v0, v11, v12

    const v1, 0x8ce0

    invoke-static {v3, v1, v13, v0, v12}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v3, v12}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "framebuffer is not ready("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public release()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget v2, p0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mTex:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-array v1, v0, [I

    iget v2, p0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mFbo:I

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput v3, p0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mTex:I

    iput v3, p0, Lcom/miui/extravideo/watermark/gles/GLFrameBuffer;->mFbo:I

    return-void
.end method
