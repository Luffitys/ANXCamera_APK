.class public Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;
.super Ljava/lang/Object;
.source "TEAvcEncoder.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static FORCE_FAILED:Z = false

.field private static final MASK_BIT_RATE:I = 0x1

.field private static final MASK_FORCE_RESTART:I = 0x4

.field private static final MASK_FRAME_RATE:I = 0x2

.field private static MAX_FRAME_RATE:I = 0x7d0

.field private static MIN_FRAME_RATE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "TEAvcEncoder"

.field private static final TIMEOUT_USEC:I = 0x0

.field private static final TIMEOUT_USEC_EOS:I = 0x2710

.field private static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static avcqueuesize:I = 0x19


# instance fields
.field public AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;",
            ">;"
        }
    .end annotation
.end field

.field public configByte:[B

.field private mBufferIndex:I

.field private mEndOfStream:Z

.field private mFirstFrame:Z

.field private m_PTSQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_bNeedSingalEnd:Z

.field private m_bSignalEndOfStream:Z

.field private m_bSuccessInit:Z

.field private m_bitRate:I

.field private m_codecFormat:Landroid/media/MediaFormat;

.field private m_colorFormat:I

.field private m_configStatus:I

.field private m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

.field private m_encodeStartTime:J

.field private m_frameRate:I

.field private m_getnerateIndex:J

.field private m_height:I

.field private m_iFrameInternal:I

.field private m_isNeedReconfigure:Z

.field private m_lastCodecData:Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;

.field private m_level:I

.field private m_maxBitRate:I

.field private m_mediaCodec:Landroid/media/MediaCodec;

.field private m_profile:I

.field private m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

.field private m_surface:Landroid/view/Surface;

.field private m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

.field private m_useInputSurface:Z

.field private m_width:I

.field private pps:[B

.field private sps:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    sget v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->avcqueuesize:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_PTSQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    const/4 v1, 0x0

    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width:I

    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height:I

    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_frameRate:I

    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorFormat:I

    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_maxBitRate:I

    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_iFrameInternal:I

    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_profile:I

    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_level:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_useInputSurface:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_getnerateIndex:J

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_lastCodecData:Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;

    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bSuccessInit:Z

    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_isNeedReconfigure:Z

    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bNeedSingalEnd:Z

    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bSignalEndOfStream:Z

    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_encodeStartTime:J

    iput-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mFirstFrame:Z

    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEndOfStream:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I

    return-void
.end method

.method private addOutputData([BLandroid/media/MediaCodec$BufferInfo;)V
    .locals 8

    sget-object v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encode: pts queue size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_PTSQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_PTSQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x8

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_profile:I

    if-lt v0, v1, :cond_0

    sget-object p1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encode: no available pts!!! profile "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_profile:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_PTSQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    const-string p1, "encode: no available pts!!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_PTSQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move-wide v4, v6

    :goto_0
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_profile:I

    if-lt v0, v1, :cond_3

    const-wide/32 v0, 0x30d40

    sub-long v0, v2, v0

    goto :goto_1

    :cond_3
    move-wide v0, v4

    :goto_1
    sget-object v2, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dts = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", pts = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;

    invoke-direct {v2}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;-><init>()V

    iput-object p1, v2, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->data:[B

    iput-wide v4, v2, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->pts:J

    iput-wide v0, v2, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->dts:J

    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput p1, v2, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->flag:I

    :try_start_0
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private configEncode()I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :cond_1
    const-string v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OMX.google."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, -0x2

    return p0

    :cond_2
    invoke-direct {p0, v0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->reconfigureMediaFormat(Landroid/media/MediaCodecInfo;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, -0x3

    return p0

    :cond_3
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_useInputSurface:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    const-string v1, "m_mediaCodec.createInputSurface()"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x4

    return p0
.end method

.method public static createEncoderObject()Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;
    .locals 1

    new-instance v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;

    invoke-direct {v0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;-><init>()V

    return-object v0
.end method

.method private drainOutputBuffer(J)I
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I

    const/16 v1, -0xd6

    :try_start_0
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    iput v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I

    const/4 v3, 0x0

    if-ltz v2, :cond_5

    invoke-direct {p0, v2}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->getOutputBufferByIdx(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v4, v4, [B

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    iput-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    goto :goto_2

    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x4

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    if-eqz v2, :cond_1

    aget-byte v5, v4, v6

    aget-byte v7, v2, v6

    if-ne v5, v7, :cond_2

    array-length v5, v2

    add-int/2addr v5, v6

    aget-byte v5, v4, v5

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    array-length v5, v4

    array-length v6, v2

    sub-int/2addr v5, v6

    new-array v5, v5, [B

    array-length v2, v2

    array-length v6, v5

    invoke-static {v4, v2, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v5

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    const-string v5, "I can\'t find configByte!!!! NEED extract from I frame!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    invoke-direct {p0, v4, v0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->addOutputData([BLandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_2

    :cond_3
    if-ne v2, v6, :cond_4

    iput-boolean v5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEndOfStream:Z

    goto :goto_3

    :cond_4
    invoke-direct {p0, v4, v0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->addOutputData([BLandroid/media/MediaCodec$BufferInfo;)V

    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    iget v4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I

    invoke-virtual {v2, v4, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    iput v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_5
    :goto_3
    iget p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I

    const/4 p2, -0x2

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "csd-0"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p2

    const-string v0, "csd-1"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->sps:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->pps:[B

    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->sps:[B

    array-length p2, p1

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->pps:[B

    array-length v0, v0

    add-int/2addr p2, v0

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    array-length v0, p1

    invoke-static {p1, v3, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->pps:[B

    iget-object p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->sps:[B

    array-length p0, p0

    array-length v0, p1

    invoke-static {p1, v3, p2, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    return v3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private getOutputBufferByIdx(I)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private reconfigureMediaFormat(Landroid/media/MediaCodecInfo;)I
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    const-string v2, "CodecNames:"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    sget-object v5, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Codec: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width:I

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height:I

    const-string v3, "video/avc"

    invoke-static {v3, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorFormat:I

    const-string v4, "color-format"

    invoke-virtual {v0, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    const-string v4, "bitrate"

    invoke-virtual {v0, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_frameRate:I

    const-string v4, "frame-rate"

    invoke-virtual {v0, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_iFrameInternal:I

    const-string v4, "i-frame-interval"

    invoke-virtual {v0, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {p1, v3}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->setProfile(Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    sget-object p1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_frameRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    iget v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_iFrameInternal:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    iget v3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x5

    iget p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorFormat:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "width:[%d] height:[%d] frameRate:[%d] iFrameInternal:[%d] bitRate:[%d] colorFormat:[%d]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private setBitRateMode(Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "BITRATE_MODE_CQ"

    const-string v1, "BITRATE_MODE_VBR"

    const-string v2, "BITRATE_MODE_CBR"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    const/4 p1, 0x1

    const-string v0, "bitrate-mode"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private setEncoder(IIIIIII)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    if-lez p1, :cond_0

    iput p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width:I

    :cond_0
    if-lez p2, :cond_1

    iput p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height:I

    :cond_1
    const/4 p1, 0x1

    if-lez p3, :cond_5

    sget p2, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->MIN_FRAME_RATE:I

    const/4 v1, 0x2

    if-ge p3, p2, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v0

    sget p3, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->MIN_FRAME_RATE:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, p1

    const-string p3, "_frameRate:[%d] is too small, change to %d"

    invoke-static {p2, p3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget p3, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->MIN_FRAME_RATE:I

    goto :goto_0

    :cond_2
    sget p2, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->MAX_FRAME_RATE:I

    if-le p3, p2, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v0

    sget p3, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->MAX_FRAME_RATE:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, p1

    const-string p3, "_frameRate:[%d] is too large, change to %d"

    invoke-static {p2, p3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget p3, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->MAX_FRAME_RATE:I

    :cond_3
    :goto_0
    iget p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_frameRate:I

    if-eq p2, p3, :cond_5

    iput p3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_frameRate:I

    iget p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_iFrameInternal:I

    if-ge p3, p2, :cond_4

    iput p3, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_iFrameInternal:I

    :cond_4
    iput-boolean p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_isNeedReconfigure:Z

    iget p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    or-int/2addr p2, v1

    iput p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    :cond_5
    if-lez p4, :cond_6

    iput p4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_maxBitRate:I

    iget p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    if-eq p2, p4, :cond_6

    iput p4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    iput-boolean p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_isNeedReconfigure:Z

    iget p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    or-int/2addr p2, p1

    iput p2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    :cond_6
    if-ltz p5, :cond_7

    iput p5, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_iFrameInternal:I

    :cond_7
    if-lez p6, :cond_8

    iput p6, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorFormat:I

    :cond_8
    const/16 p2, 0x40

    invoke-static {p7, p1, p2}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_profile:I

    return-void
.end method

.method private setProfile(Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_profile:I

    invoke-static {p1, v0}, Lcom/ss/android/ttve/mediacodec/MediaCodecUtils;->findBestMatchedProfile(Landroid/media/MediaCodecInfo$CodecCapabilities;I)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    iget v1, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const-string v2, "profile"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    iget v1, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget p1, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    const-string v0, "Set High Profile"

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_maxBitRate:I

    int-to-float p1, p1

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    const-string v0, "Set Main Profile"

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_maxBitRate:I

    int-to-float p1, p1

    const v0, 0x3f59999a    # 0.85f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    :goto_0
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_codecFormat:Landroid/media/MediaFormat;

    iget p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    const-string v0, "bitrate"

    invoke-virtual {p1, v0, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public encodeVideoFromTexture(IJZ)I
    .locals 18
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    iget-boolean v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bSuccessInit:Z

    const/4 v4, 0x0

    if-nez v0, :cond_0

    return v4

    :cond_0
    sget-object v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encodeVideoFromTexture:: pts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_PTSQueue:Ljava/util/Queue;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ss/android/ttve/common/TEEglStateSaver;

    invoke-direct {v0}, Lcom/ss/android/ttve/common/TEEglStateSaver;-><init>()V

    iput-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TEEglStateSaver;->saveEGLState()V

    :cond_1
    iget-boolean v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_isNeedReconfigure:Z

    const/4 v5, 0x1

    if-nez v0, :cond_2

    iget v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    iget v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    if-ne v0, v5, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v0, v6, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v6, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bitRate:I

    const-string v7, "video-bitrate"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    iput v4, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_configStatus:I

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->restartEncoder()I

    :goto_0
    iput-boolean v4, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_isNeedReconfigure:Z

    :cond_4
    iget-wide v6, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_encodeStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_encodeStartTime:J

    :cond_5
    const-wide/16 v6, 0x0

    invoke-direct {v1, v6, v7}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->drainOutputBuffer(J)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_6
    and-int/lit8 v0, p1, -0x1

    const/16 v8, 0x1e

    if-eqz v0, :cond_14

    const/4 v9, 0x0

    :try_start_0
    iget-object v10, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    if-eqz v10, :cond_10

    iget-object v10, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    invoke-virtual {v10}, Lcom/ss/android/ttve/common/TESharedContext;->makeCurrent()Z

    iget v10, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width:I

    iget v11, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height:I

    invoke-static {v4, v4, v10, v11}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v10, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    invoke-virtual {v10, v0}, Lcom/ss/android/ttve/common/TETextureDrawer;->drawTexture(I)V

    iget-boolean v10, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mFirstFrame:Z

    if-eqz v10, :cond_8

    sget-boolean v10, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->DEBUG:Z

    if-eqz v10, :cond_7

    const v10, 0x384000

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x500

    const/16 v14, 0x2d0

    const/16 v15, 0x1908

    const/16 v16, 0x1401

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v17}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    new-instance v11, Ljava/io/FileOutputStream;

    const-string v12, "/mnt/sdcard/ttt.rgba"

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v11

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v9, v11

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v9, v11

    goto/16 :goto_7

    :cond_7
    :goto_1
    :try_start_2
    iput-boolean v4, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mFirstFrame:Z

    :cond_8
    iget-object v10, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    const-wide/16 v11, 0x3e8

    mul-long/2addr v2, v11

    invoke-virtual {v10, v2, v3}, Lcom/ss/android/ttve/common/TESharedContext;->setPresentationTime(J)V

    iget-object v10, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    invoke-virtual {v10}, Lcom/ss/android/ttve/common/TESharedContext;->swapBuffers()Z

    iput-boolean v5, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bNeedSingalEnd:Z

    invoke-direct {v1, v6, v7}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->drainOutputBuffer(J)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_a

    if-eqz v9, :cond_9

    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_2
    return v5

    :cond_a
    :try_start_4
    iget-object v5, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    if-nez v5, :cond_10

    move v5, v4

    :cond_b
    sget-object v10, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Encoder first frame, count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v10, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width:I

    iget v11, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height:I

    invoke-static {v4, v4, v10, v11}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v10, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    invoke-virtual {v10, v0}, Lcom/ss/android/ttve/common/TETextureDrawer;->drawTexture(I)V

    iget-object v10, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    invoke-virtual {v10, v2, v3}, Lcom/ss/android/ttve/common/TESharedContext;->setPresentationTime(J)V

    iget-object v10, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    invoke-virtual {v10}, Lcom/ss/android/ttve/common/TESharedContext;->swapBuffers()Z

    invoke-direct {v1, v6, v7}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->drainOutputBuffer(J)I

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v10, :cond_d

    if-eqz v9, :cond_c

    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_3
    return v10

    :cond_d
    add-int/lit8 v5, v5, 0x1

    if-le v5, v8, :cond_e

    goto :goto_4

    :cond_e
    const-wide/16 v10, 0xa

    :try_start_6
    invoke-static {v10, v11, v4}, Ljava/lang/Thread;->sleep(JI)V

    iget-object v10, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    if-eqz v10, :cond_b

    :goto_4
    iget-object v10, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    if-nez v10, :cond_f

    sget-object v10, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Generate configData failed!!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_f
    sget-object v10, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Generate configData succeed!!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v5, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->restartEncoder()I

    iput-wide v6, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_getnerateIndex:J

    iget-object v5, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    invoke-virtual {v5}, Lcom/ss/android/ttve/common/TESharedContext;->makeCurrent()Z

    iget v5, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_width:I

    iget v10, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_height:I

    invoke-static {v4, v4, v5, v10}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v5, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    invoke-virtual {v5, v0}, Lcom/ss/android/ttve/common/TETextureDrawer;->drawTexture(I)V

    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/ttve/common/TESharedContext;->setPresentationTime(J)V

    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TESharedContext;->swapBuffers()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_10
    if-eqz v9, :cond_11

    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_11
    :goto_6
    iget-wide v2, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_getnerateIndex:J

    const-wide/16 v9, 0x1

    add-long/2addr v2, v9

    iput-wide v2, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_getnerateIndex:J

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_9

    :catch_4
    move-exception v0

    :goto_7
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/16 v1, -0xd3

    if-eqz v9, :cond_12

    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_12
    :goto_8
    return v1

    :goto_9
    if-eqz v9, :cond_13

    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_13
    :goto_a
    throw v1

    :cond_14
    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_15

    iget-boolean v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bSignalEndOfStream:Z

    if-nez v0, :cond_15

    iget-boolean v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bNeedSingalEnd:Z

    if-eqz v0, :cond_15

    :try_start_b
    sget-object v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    const-string v2, "m_mediaCodec.flush()"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bSignalEndOfStream:Z

    iput-boolean v4, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEndOfStream:Z

    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, -0xd5

    return v0

    :cond_15
    :goto_b
    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TEEglStateSaver;->makeSavedStateCurrent()V

    iget-boolean v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bSignalEndOfStream:Z

    if-eqz v0, :cond_19

    :cond_16
    iget-boolean v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEndOfStream:Z

    if-nez v0, :cond_1a

    const-wide/16 v2, 0x2710

    invoke-direct {v1, v2, v3}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->drainOutputBuffer(J)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    :cond_17
    iget v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mBufferIndex:I

    if-ltz v0, :cond_18

    goto :goto_c

    :cond_18
    add-int/lit8 v8, v8, -0x1

    if-gtz v8, :cond_16

    goto :goto_c

    :cond_19
    invoke-direct {v1, v6, v7}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->drainOutputBuffer(J)I

    move-result v0

    if-eqz v0, :cond_1a

    return v0

    :cond_1a
    :goto_c
    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->AVCQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;

    iput-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_lastCodecData:Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;

    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_lastCodecData:Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->data:[B

    array-length v4, v0

    :cond_1b
    return v4
.end method

.method public getCodecData(I)[B
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_lastCodecData:Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->data:[B

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtraData()[B
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configByte:[B

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public getInfoByFlag([II)I
    .locals 7

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_lastCodecData:Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;

    iget-wide v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->pts:J

    const-wide/16 v3, -0x1

    and-long v5, v1, v3

    long-to-int v5, v5

    aput v5, p1, p2

    const/16 p2, 0x20

    shr-long/2addr v1, p2

    and-long/2addr v1, v3

    long-to-int v1, v1

    aput v1, p1, v0

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$CodecData;->dts:J

    and-long v5, v1, v3

    long-to-int p0, v5

    aput p0, p1, v0

    const/4 p0, 0x3

    shr-long v0, v1, p2

    and-long/2addr v0, v3

    long-to-int p2, v0

    aput p2, p1, p0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    return-object p0
.end method

.method public initEncoder(IIIIIIIZ)I
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    move-object v8, p0

    move/from16 v0, p8

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iput-boolean v0, v8, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_useInputSurface:Z

    iget-boolean v0, v8, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_useInputSurface:Z

    if-eqz v0, :cond_1

    const v0, 0x7f000789

    iput v0, v8, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorFormat:I

    goto :goto_0

    :cond_1
    move v0, p4

    iput v0, v8, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorFormat:I

    :goto_0
    iget v6, v8, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_colorFormat:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p6

    move v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->setEncoder(IIIIIII)V

    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_isNeedReconfigure:Z

    iput-boolean v0, v8, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bSuccessInit:Z

    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bSignalEndOfStream:Z

    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configEncode()I

    move-result v0

    return v0
.end method

.method public initTextureDrawer()Z
    .locals 2

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TETextureDrawer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    :cond_0
    invoke-static {}, Lcom/ss/android/ttve/common/TETextureDrawer;->create()Lcom/ss/android/ttve/common/TETextureDrawer;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/common/TETextureDrawer;->setRotation(F)V

    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/common/TETextureDrawer;->setFlipScale(FF)V

    const/4 p0, 0x1

    return p0
.end method

.method public releaseEncoder()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-virtual {p0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->stopEncoder()V

    const-string v0, "TEAvcEncoder"

    const-string v1, "releaseEncoder"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "release surface"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    :cond_0
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    const-string v1, "release mediaCodec"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    :cond_1
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TESharedContext;->release()V

    iput-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    :cond_2
    return-void
.end method

.method public releaseTextureDrawer()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TETextureDrawer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    return-void
.end method

.method public restartEncoder()I
    .locals 2

    sget-object v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    const-string v1, "restartEncoder..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_bNeedSingalEnd:Z

    invoke-virtual {p0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->stopEncoder()V

    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->configEncode()I

    move-result v0

    if-gez v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->startEncoder()I

    move-result p0

    return p0
.end method

.method public startEncoder()I
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    sget-object v0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->TAG:Ljava/lang/String;

    const-string v1, "startEncoder..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_useInputSurface:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    const/4 v1, -0x2

    const/16 v3, 0x3142

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_eglStateSaver:Lcom/ss/android/ttve/common/TEEglStateSaver;

    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TEEglStateSaver;->getSavedEGLContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    const/16 v5, 0x40

    invoke-static {v0, v5, v5, v3, v4}, Lcom/ss/android/ttve/common/TESharedContext;->create(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Lcom/ss/android/ttve/common/TESharedContext;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    if-nez v0, :cond_1

    return v1

    :cond_0
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_surface:Landroid/view/Surface;

    invoke-virtual {v0, v2, v2, v3, v4}, Lcom/ss/android/ttve/common/TESharedContext;->updateSurface(IIILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->initTextureDrawer()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, -0x3

    return p0

    :cond_2
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_encodeStartTime:J

    iput-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_isNeedReconfigure:Z

    iput-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->mEndOfStream:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public stopEncoder()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_sharedContext:Lcom/ss/android/ttve/common/TESharedContext;

    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TESharedContext;->makeCurrent()Z

    :cond_0
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TETextureDrawer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_textureDrawer:Lcom/ss/android/ttve/common/TETextureDrawer;

    :cond_1
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->m_mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
