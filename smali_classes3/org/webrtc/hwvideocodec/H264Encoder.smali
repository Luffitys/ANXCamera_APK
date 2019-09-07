.class Lorg/webrtc/hwvideocodec/H264Encoder;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/hwvideocodec/H264Encoder$EncoderProperties;
    }
.end annotation


# static fields
.field private static final AVC_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final HEVC_MIME_TYPE:Ljava/lang/String; = "video/hevc"

.field private static final TAG:Ljava/lang/String; = "H264Encoder"

.field private static final VIDEO_ControlRateConstant:I = 0x2

.field private static isQcomPlatform:Z

.field private static final supportedColorList:[I

.field private static final supportedHwCodecPrefixes:[Ljava/lang/String;


# instance fields
.field private Constructed:Z

.field counter:I

.field private dequedBufferIndex:I

.field frameCounter:I

.field m_height:I

.field m_info:[B

.field m_width:I

.field private mediaCodec:Landroid/media/MediaCodec;

.field private nativeContext:J

.field private supportColorFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/webrtc/hwvideocodec/H264Encoder;->supportedColorList:[I

    const-string v1, "OMX.qcom."

    const-string v2, "OMX.Nvidia."

    const-string v3, "OMX.IMG.TOPAZ"

    const-string v4, "OMX.Exynos"

    const-string v5, "OMX.MTK"

    const-string v6, "OMX.hantro"

    const-string v7, "OMX.Intel"

    const-string v8, "OMX.ARM"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/webrtc/hwvideocodec/H264Encoder;->supportedHwCodecPrefixes:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x15
        0x13
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->m_info:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->counter:I

    iput v0, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->frameCounter:I

    iput-boolean v0, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->Constructed:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->dequedBufferIndex:I

    iput v0, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->supportColorFormat:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->nativeContext:J

    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    rsub-int/lit8 v2, v0, 0x3

    mul-int/lit8 v2, v2, 0x8

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static findHwEncoder(Ljava/lang/String;)Lorg/webrtc/hwvideocodec/H264Encoder$EncoderProperties;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "H264Encoder"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sdk version is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "codec name: "

    if-ge v4, v5, :cond_3

    :try_start_1
    invoke-static {v4}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " company:"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_3
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v5

    if-ge v4, v5, :cond_e

    invoke-static {v4}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_b

    :cond_4
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_4
    if-ge v9, v8, :cond_6

    aget-object v10, v7, v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    move-object v7, v2

    :goto_5
    if-nez v7, :cond_7

    goto/16 :goto_b

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found candidate encoder "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    iget-object v8, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v9, v8

    move v10, v3

    :goto_6
    if-ge v10, v9, :cond_8

    aget v11, v8, v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "   Color: 0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_8
    sget-object v8, Lorg/webrtc/hwvideocodec/H264Encoder;->supportedHwCodecPrefixes:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lorg/webrtc/hwvideocodec/H264Encoder;->isQcomPlatform:Z

    sget-object v8, Lorg/webrtc/hwvideocodec/H264Encoder;->supportedHwCodecPrefixes:[Ljava/lang/String;

    array-length v9, v8

    move v10, v3

    :goto_7
    if-ge v10, v9, :cond_d

    aget-object v11, v8, v10

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_a

    :cond_9
    sget-object v11, Lorg/webrtc/hwvideocodec/H264Encoder;->supportedColorList:[I

    array-length v12, v11

    move v13, v3

    :goto_8
    if-ge v13, v12, :cond_c

    aget v14, v11, v13

    iget-object v15, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v3, v15

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_b

    aget v0, v15, v2

    if-ne v0, v14, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found target encoder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Color: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/webrtc/hwvideocodec/H264Encoder$EncoderProperties;

    invoke-direct {v2, v7, v0}, Lorg/webrtc/hwvideocodec/H264Encoder$EncoderProperties;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :cond_a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto :goto_9

    :cond_b
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    goto :goto_8

    :cond_c
    :goto_a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_7

    :cond_d
    :goto_b
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_e
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "find exception at findHwEncoder:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static intToByteArray(I[B)V
    .locals 2

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x3

    aput-byte p0, p1, v0

    return-void
.end method

.method private static isPlatformSupported()Z
    .locals 1

    const-string v0, "video/avc"

    invoke-static {v0}, Lorg/webrtc/hwvideocodec/H264Encoder;->findHwEncoder(Ljava/lang/String;)Lorg/webrtc/hwvideocodec/H264Encoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public native SendFrame([BJJZ)V
.end method

.method public encodeFrameInput(Lorg/webrtc/hwvideocodec/H264I420Frame;Z)Z
    .locals 12

    const-string v0, "H264Encoder"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v2, "force a key frame"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    if-eqz p2, :cond_1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt p2, v2, :cond_1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v2, "request-sync"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, p2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_1
    iget p2, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->counter:I

    const/4 v2, 0x1

    add-int/2addr p2, v2

    iput p2, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->counter:I

    if-gez v6, :cond_2

    return v1

    :cond_2
    iget-object p2, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p2

    iget v3, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->frameCounter:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->frameCounter:I

    aget-object p2, p2, v6

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v3, p1, Lorg/webrtc/hwvideocodec/H264I420Frame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    iget v8, p1, Lorg/webrtc/hwvideocodec/H264I420Frame;->size:I

    iget-wide p1, p1, Lorg/webrtc/hwvideocodec/H264I420Frame;->timeStamp:J

    const-wide/16 v3, 0x3e8

    mul-long v9, p1, v3

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual {p0, v1}, Lorg/webrtc/hwvideocodec/H264Encoder;->encodeFrameOutput(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    const-string p1, "find exception at encodeFrameInput encoder:"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public encodeFrameOutput(Z)V
    .locals 19

    move-object/from16 v8, p0

    const-string v9, "H264Encoder"

    :try_start_0
    new-instance v10, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v10}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "flush output queue"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v8, Lorg/webrtc/hwvideocodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v11, 0x0

    invoke-virtual {v0, v10, v11, v12}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ltz v0, :cond_1

    move v1, v13

    goto :goto_0

    :cond_1
    move v1, v14

    :goto_0
    const/4 v15, 0x4

    if-eqz p1, :cond_3

    iget v1, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v1, v15

    if-nez v1, :cond_2

    move v1, v13

    goto :goto_1

    :cond_2
    move v1, v14

    :cond_3
    :goto_1
    const/16 v2, 0x12c

    move/from16 v16, v2

    :cond_4
    :goto_2
    if-eqz v1, :cond_a

    if-lez v16, :cond_a

    if-ltz v0, :cond_7

    iget v1, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v2, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x3e8

    div-long v5, v2, v4

    iget-object v2, v8, Lorg/webrtc/hwvideocodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    new-array v3, v1, [B

    iget v1, v8, Lorg/webrtc/hwvideocodec/H264Encoder;->frameCounter:I

    sub-int/2addr v1, v13

    iput v1, v8, Lorg/webrtc/hwvideocodec/H264Encoder;->frameCounter:I

    aget-object v1, v2, v0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    aget-byte v1, v3, v15

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x5

    if-lt v1, v2, :cond_5

    const/16 v2, 0x8

    if-gt v1, v2, :cond_5

    move v7, v13

    goto :goto_3

    :cond_5
    move v7, v14

    :goto_3
    if-eqz v7, :cond_6

    const-string v1, "h264 add frame header  cdr flag"

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-wide v1, v8, Lorg/webrtc/hwvideocodec/H264Encoder;->nativeContext:J

    move-wide/from16 v17, v1

    move-object/from16 v1, p0

    move-object v2, v3

    move-wide/from16 v3, v17

    invoke-virtual/range {v1 .. v7}, Lorg/webrtc/hwvideocodec/H264Encoder;->SendFrame([BJJZ)V

    iget-object v1, v8, Lorg/webrtc/hwvideocodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v14}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    :cond_7
    const-wide/16 v0, 0xa

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v16, v16, -0xa

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    const-string v0, "find exception at ThreadSleep:"

    invoke-static {v9, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    iget-object v0, v8, Lorg/webrtc/hwvideocodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v10, v11, v12}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    if-ltz v0, :cond_8

    move v1, v13

    goto :goto_5

    :cond_8
    move v1, v14

    :goto_5
    if-eqz p1, :cond_4

    iget v1, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    and-int/2addr v1, v15

    if-nez v1, :cond_9

    move v1, v13

    goto :goto_2

    :cond_9
    move v1, v14

    goto :goto_2

    :cond_a
    return-void

    :catch_1
    move-exception v0

    const-string v1, "find exception at encodeFrameOutput:"

    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public flush()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/webrtc/hwvideocodec/H264Encoder;->encodeFrameOutput(Z)V

    return v0
.end method

.method public initEncoder(IIIIIJZ)Z
    .locals 4

    const-string v0, "H264Encoder"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "H264 encoder creat width"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "framerate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "bitrate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "this:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const-string p1, "video/avc"

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    const-string p1, "video/hevc"

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    iput p2, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->m_width:I

    iput p3, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->m_height:I

    iput-wide p6, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->nativeContext:J

    iput-object v2, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->m_info:[B

    const/4 p6, -0x1

    iput p6, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->dequedBufferIndex:I

    invoke-static {p1}, Lorg/webrtc/hwvideocodec/H264Encoder;->findHwEncoder(Ljava/lang/String;)Lorg/webrtc/hwvideocodec/H264Encoder$EncoderProperties;

    move-result-object p6

    if-nez p6, :cond_2

    const-string p0, "Can not find HW AVC encoder"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object p7, p6, Lorg/webrtc/hwvideocodec/H264Encoder$EncoderProperties;->codecName:Ljava/lang/String;

    invoke-static {p7}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p7

    iput-object p7, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    iget-object p7, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    if-nez p7, :cond_3

    const-string p0, "creatByCodecName failed"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-static {p1, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "bitrate"

    invoke-virtual {p1, p2, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "frame-rate"

    invoke-virtual {p1, p2, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 p2, 0x2

    if-nez p8, :cond_4

    const-string p3, "bitrate-mode"

    invoke-virtual {p1, p3, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_4
    iget p3, p6, Lorg/webrtc/hwvideocodec/H264Encoder$EncoderProperties;->colorFormat:I

    iput p3, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->supportColorFormat:I

    const-string p3, "color-format"

    iget p4, p6, Lorg/webrtc/hwvideocodec/H264Encoder$EncoderProperties;->colorFormat:I

    invoke-virtual {p1, p3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p3, "i-frame-interval"

    invoke-virtual {p1, p3, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p2, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object p1, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    iput-boolean v3, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->Constructed:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "avc encoder creat done, isSemiPlanar:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p6, Lorg/webrtc/hwvideocodec/H264Encoder$EncoderProperties;->colorFormat:I

    const/16 p2, 0x15

    if-ne p1, p2, :cond_5

    move p1, v3

    goto :goto_1

    :cond_5
    move p1, v1

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    const-string p1, "find exception at initEncoder:"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isSemiPlanarSupport()Z
    .locals 1

    iget p0, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->supportColorFormat:I

    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public release()V
    .locals 2

    const-string v0, "H264Encoder"

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->Constructed:Z

    const-string v1, "avc encoder release begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    iput-object v1, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->m_info:[B

    const-string p0, "avc encoder release done"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "find exception at release encoder:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "H264Encoder"

    :try_start_0
    iget-boolean v1, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->Constructed:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->flush()V

    const-string p0, "avc encoder reset done"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "find exception at reset encoder:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setBitrate(I)V
    .locals 3

    const-string v0, "H264Encoder"

    :try_start_0
    iget-boolean v1, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->Constructed:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " kbps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "video-bitrate"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lorg/webrtc/hwvideocodec/H264Encoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "find exception at setBitrate encoder:"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
