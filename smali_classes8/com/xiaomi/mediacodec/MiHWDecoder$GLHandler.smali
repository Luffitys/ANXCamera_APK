.class Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;


# direct methods
.method private constructor <init>(Lcom/xiaomi/mediacodec/MiHWDecoder;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mediacodec/MiHWDecoder;Landroid/os/Looper;Lcom/xiaomi/mediacodec/MiHWDecoder$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;-><init>(Lcom/xiaomi/mediacodec/MiHWDecoder;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    const/4 v3, 0x2

    const/4 v4, 0x4

    const-wide/16 v5, 0x3e8

    if-eq v0, v3, :cond_6

    if-eq v0, v4, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;

    iget-object v0, p1, Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v10, v0, [B

    iget-object v2, p1, Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v10, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {v7}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$1300(Lcom/xiaomi/mediacodec/MiHWDecoder;)J

    move-result-wide v8

    iget-object p0, p1, Lcom/xiaomi/mediacodec/MoviePlayer$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v11, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide p0, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long v12, p0, v5

    invoke-virtual/range {v7 .. v13}, Lcom/xiaomi/mediacodec/MiHWDecoder;->onAudioFrameJni(J[BIJ)V

    goto/16 :goto_2

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaFormat;

    const-string v0, "channel-count"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "sample-rate"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$1300(Lcom/xiaomi/mediacodec/MiHWDecoder;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->onAudioFormatJni(JII)V

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/mediacodec/MiHWDecoder;)Lcom/xiaomi/mediacodec/OriginalRenderDrawer;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$300(Lcom/xiaomi/mediacodec/MiHWDecoder;)I

    move-result p1

    iget-object v0, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/mediacodec/MiHWDecoder;)Lcom/xiaomi/mediacodec/OriginalRenderDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mediacodec/OriginalRenderDrawer;->getOutputTextureId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaomi/mediacodec/GlesUtil;->deleteFrameBuffer(II)V

    new-array p1, v2, [I

    iget-object v0, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$700(Lcom/xiaomi/mediacodec/MiHWDecoder;)I

    move-result v0

    aput v0, p1, v1

    invoke-static {v2, p1, v1}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/mediacodec/MiHWDecoder;)Lcom/xiaomi/mediacodec/OriginalRenderDrawer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->destroy()V

    const-string p1, " detete frame "

    invoke-static {p1}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$800(Lcom/xiaomi/mediacodec/MiHWDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$800(Lcom/xiaomi/mediacodec/MiHWDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1, v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$802(Lcom/xiaomi/mediacodec/MiHWDecoder;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    :cond_4
    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1, v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$602(Lcom/xiaomi/mediacodec/MiHWDecoder;Lcom/xiaomi/mediacodec/OriginalRenderDrawer;)Lcom/xiaomi/mediacodec/OriginalRenderDrawer;

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$200(Lcom/xiaomi/mediacodec/MiHWDecoder;)Lcom/xiaomi/mediacodec/EglBase;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$200(Lcom/xiaomi/mediacodec/MiHWDecoder;)Lcom/xiaomi/mediacodec/EglBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mediacodec/EglBase;->release()V

    :cond_5
    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1, v2}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$1402(Lcom/xiaomi/mediacodec/MiHWDecoder;Z)Z

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1, v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$202(Lcom/xiaomi/mediacodec/MiHWDecoder;Lcom/xiaomi/mediacodec/EglBase;)Lcom/xiaomi/mediacodec/EglBase;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " recoder end "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$1400(Lcom/xiaomi/mediacodec/MiHWDecoder;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$800(Lcom/xiaomi/mediacodec/MiHWDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    invoke-static {}, Lcom/xiaomi/mediacodec/GlesUtil;->checkError()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    iget-object v0, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$800(Lcom/xiaomi/mediacodec/MiHWDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v0, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$800(Lcom/xiaomi/mediacodec/MiHWDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    iget-object v0, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$300(Lcom/xiaomi/mediacodec/MiHWDecoder;)I

    move-result v0

    iget-object v7, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {v7}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/mediacodec/MiHWDecoder;)Lcom/xiaomi/mediacodec/OriginalRenderDrawer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/mediacodec/OriginalRenderDrawer;->getOutputTextureId()I

    move-result v7

    invoke-static {v0, v7}, Lcom/xiaomi/mediacodec/GlesUtil;->bindFrameBuffer(II)V

    invoke-static {}, Lcom/xiaomi/mediacodec/GlesUtil;->checkError()V

    iget-object v0, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/mediacodec/MiHWDecoder;)Lcom/xiaomi/mediacodec/OriginalRenderDrawer;

    move-result-object v0

    invoke-virtual {v0, v2, v3, p1}, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->draw(J[F)V

    invoke-static {}, Lcom/xiaomi/mediacodec/GlesUtil;->checkError()V

    invoke-static {}, Landroid/opengl/GLES30;->glFlush()V

    invoke-static {}, Lcom/xiaomi/mediacodec/GlesUtil;->checkError()V

    invoke-static {}, Lcom/xiaomi/mediacodec/GlesUtil;->unBindFrameBuffer()V

    invoke-static {}, Lcom/xiaomi/mediacodec/GlesUtil;->checkError()V

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$900(Lcom/xiaomi/mediacodec/MiHWDecoder;)I

    move-result p1

    if-gez p1, :cond_7

    sget p1, Lcom/xiaomi/mediacodec/GlUtil;->mWidht:I

    sget v0, Lcom/xiaomi/mediacodec/GlUtil;->mHeight:I

    mul-int/2addr p1, v0

    mul-int/2addr p1, v4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$300(Lcom/xiaomi/mediacodec/MiHWDecoder;)I

    move-result v0

    const v4, 0x8d40

    invoke-static {v4, v0}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget v9, Lcom/xiaomi/mediacodec/GlUtil;->mWidht:I

    sget v10, Lcom/xiaomi/mediacodec/GlUtil;->mHeight:I

    const/16 v11, 0x1908

    const/16 v12, 0x1401

    move-object v13, p1

    invoke-static/range {v7 .. v13}, Landroid/opengl/GLES30;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    sget v0, Lcom/xiaomi/mediacodec/GlUtil;->mWidht:I

    sget v7, Lcom/xiaomi/mediacodec/GlUtil;->mHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-static {v4, v1}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$908(Lcom/xiaomi/mediacodec/MiHWDecoder;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kkk"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {v1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$900(Lcom/xiaomi/mediacodec/MiHWDecoder;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/sdcard/kk"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/mediacodec/GlUtil;->saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    :cond_7
    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$1008(Lcom/xiaomi/mediacodec/MiHWDecoder;)I

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$1100(Lcom/xiaomi/mediacodec/MiHWDecoder;)J

    move-result-wide v0

    const-wide/16 v7, -0x1

    cmp-long p1, v0, v7

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$1100(Lcom/xiaomi/mediacodec/MiHWDecoder;)J

    move-result-wide v0

    mul-long/2addr v0, v5

    mul-long/2addr v0, v5

    cmp-long p1, v2, v0

    if-ltz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$1200(Lcom/xiaomi/mediacodec/MiHWDecoder;)J

    move-result-wide v0

    cmp-long p1, v0, v7

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$1200(Lcom/xiaomi/mediacodec/MiHWDecoder;)J

    move-result-wide v0

    mul-long/2addr v0, v5

    mul-long/2addr v0, v5

    cmp-long p1, v2, v0

    if-gtz p1, :cond_9

    goto :goto_0

    :cond_9
    iget-object p0, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-virtual {p0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->getPlayer()Lcom/xiaomi/mediacodec/MoviePlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mediacodec/MoviePlayer;->getOneFrame()V

    goto/16 :goto_2

    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$1300(Lcom/xiaomi/mediacodec/MiHWDecoder;)J

    move-result-wide v4

    iget-object p0, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/mediacodec/MiHWDecoder;)Lcom/xiaomi/mediacodec/OriginalRenderDrawer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mediacodec/OriginalRenderDrawer;->getOutputTextureId()I

    move-result p0

    sget p1, Lcom/xiaomi/mediacodec/GlUtil;->mWidht:I

    sget v6, Lcom/xiaomi/mediacodec/GlUtil;->mHeight:I

    const-wide/32 v7, 0xf4240

    div-long v7, v2, v7

    move-wide v1, v4

    move v3, p0

    move v4, p1

    move v5, v6

    move-wide v6, v7

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/mediacodec/MiHWDecoder;->onVideoFrameJni(JIIIJ)V

    goto/16 :goto_2

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " createPbufferSurface width "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/xiaomi/mediacodec/GlUtil;->mWidht:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/xiaomi/mediacodec/GlUtil;->mHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " shader_egl_context:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$100(Lcom/xiaomi/mediacodec/MiHWDecoder;)Lcom/xiaomi/mediacodec/EglBase$Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mediacodec/Logg;->LogI(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    iget-object v0, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$100(Lcom/xiaomi/mediacodec/MiHWDecoder;)Lcom/xiaomi/mediacodec/EglBase$Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mediacodec/EglBase;->create(Lcom/xiaomi/mediacodec/EglBase$Context;)Lcom/xiaomi/mediacodec/EglBase;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$202(Lcom/xiaomi/mediacodec/MiHWDecoder;Lcom/xiaomi/mediacodec/EglBase;)Lcom/xiaomi/mediacodec/EglBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {}, Lcom/xiaomi/mediacodec/EglBase;->create()Lcom/xiaomi/mediacodec/EglBase;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$202(Lcom/xiaomi/mediacodec/MiHWDecoder;Lcom/xiaomi/mediacodec/EglBase;)Lcom/xiaomi/mediacodec/EglBase;

    :goto_1
    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$200(Lcom/xiaomi/mediacodec/MiHWDecoder;)Lcom/xiaomi/mediacodec/EglBase;

    move-result-object p1

    sget v0, Lcom/xiaomi/mediacodec/GlUtil;->mWidht:I

    sget v3, Lcom/xiaomi/mediacodec/GlUtil;->mHeight:I

    invoke-virtual {p1, v0, v3}, Lcom/xiaomi/mediacodec/EglBase;->createPbufferSurface(II)V

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$200(Lcom/xiaomi/mediacodec/MiHWDecoder;)Lcom/xiaomi/mediacodec/EglBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mediacodec/EglBase;->makeCurrent()V

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {}, Lcom/xiaomi/mediacodec/GlesUtil;->createFrameBuffer()I

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$302(Lcom/xiaomi/mediacodec/MiHWDecoder;I)I

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$400(Lcom/xiaomi/mediacodec/MiHWDecoder;)I

    move-result p1

    sget v0, Lcom/xiaomi/mediacodec/GlUtil;->mWidht:I

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$500(Lcom/xiaomi/mediacodec/MiHWDecoder;)I

    move-result p1

    sget v0, Lcom/xiaomi/mediacodec/GlUtil;->mHeight:I

    if-ne p1, v0, :cond_c

    move v1, v2

    :cond_c
    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/mediacodec/MiHWDecoder;)Lcom/xiaomi/mediacodec/OriginalRenderDrawer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaomi/mediacodec/OriginalRenderDrawer;->setReserverResolution(Z)V

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {v1}, Lcom/xiaomi/mediacodec/GlesUtil;->createCameraTexture(Z)I

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$702(Lcom/xiaomi/mediacodec/MiHWDecoder;I)I

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {v1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$700(Lcom/xiaomi/mediacodec/MiHWDecoder;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {p1, v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$802(Lcom/xiaomi/mediacodec/MiHWDecoder;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$800(Lcom/xiaomi/mediacodec/MiHWDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-virtual {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->Play()V

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/mediacodec/MiHWDecoder;)Lcom/xiaomi/mediacodec/OriginalRenderDrawer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->create()V

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/mediacodec/MiHWDecoder;)Lcom/xiaomi/mediacodec/OriginalRenderDrawer;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$700(Lcom/xiaomi/mediacodec/MiHWDecoder;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/mediacodec/OriginalRenderDrawer;->setInputTextureId(I)V

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/mediacodec/MiHWDecoder;)Lcom/xiaomi/mediacodec/OriginalRenderDrawer;

    move-result-object p1

    sget v0, Lcom/xiaomi/mediacodec/GlUtil;->mWidht:I

    sget v1, Lcom/xiaomi/mediacodec/GlUtil;->mHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/mediacodec/BaseRenderDrawer;->surfaceChangedSize(II)V

    iget-object p1, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/mediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/mediacodec/MiHWDecoder;)Lcom/xiaomi/mediacodec/OriginalRenderDrawer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mediacodec/OriginalRenderDrawer;->getOutputTextureId()I

    iget-object p0, p0, Lcom/xiaomi/mediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/mediacodec/MiHWDecoder;

    iget-object p0, p0, Lcom/xiaomi/mediacodec/MiHWDecoder;->mPlayTask:Lcom/xiaomi/mediacodec/MoviePlayer$PlayTask;

    invoke-virtual {p0}, Lcom/xiaomi/mediacodec/MoviePlayer$PlayTask;->execute()V

    :goto_2
    return-void
.end method
