.class public Lcom/ss/android/medialib/AVCEncoder;
.super Ljava/lang/Object;
.source "AVCEncoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/AVCEncoder$Status;
    }
.end annotation


# static fields
.field private static final BITRATE_MODES:[Ljava/lang/String;

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "AVCEncoder"

.field private static TIMEOUT_USEC:I

.field static mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;


# instance fields
.field private codec_config:[B

.field fileWriter:Ljava/io/BufferedOutputStream;

.field inputBuffers:[Ljava/nio/ByteBuffer;

.field mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mCodecName:Ljava/lang/String;

.field private mColorFormat:I

.field private mDrawCount:I

.field private mEncodeCount:I

.field private mFlag:Z

.field mFrameRate:I

.field private mHeight:I

.field private mIsError:Z

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMediaCodecInfo:Landroid/media/MediaCodecInfo;

.field private mPTSQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProfile:I

.field private mSurface:Landroid/view/Surface;

.field private mTextureDrawer:Lcom/ss/android/medialib/common/TextureDrawer;

.field private mWidth:I

.field outputBuffers:[Ljava/nio/ByteBuffer;

.field status:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "BITRATE_MODE_CQ"

    const-string v1, "BITRATE_MODE_VBR"

    const-string v2, "BITRATE_MODE_CBR"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/medialib/AVCEncoder;->BITRATE_MODES:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    const/16 v0, 0x1388

    sput v0, Lcom/ss/android/medialib/AVCEncoder;->TIMEOUT_USEC:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ss/android/medialib/AVCEncoder$1;

    invoke-direct {v1}, Lcom/ss/android/medialib/AVCEncoder$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-string v1, "video/avc"

    iput-object v1, p0, Lcom/ss/android/medialib/AVCEncoder;->mCodecName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ss/android/medialib/AVCEncoder;->mFlag:Z

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/ss/android/medialib/AVCEncoder;->mPTSQueue:Ljava/util/Queue;

    iput v1, p0, Lcom/ss/android/medialib/AVCEncoder;->status:I

    const/16 v2, 0x1e

    iput v2, p0, Lcom/ss/android/medialib/AVCEncoder;->mFrameRate:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/ss/android/medialib/AVCEncoder;->mProfile:I

    iput-boolean v1, p0, Lcom/ss/android/medialib/AVCEncoder;->mIsError:Z

    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->fileWriter:Ljava/io/BufferedOutputStream;

    iput v1, p0, Lcom/ss/android/medialib/AVCEncoder;->mDrawCount:I

    iput v1, p0, Lcom/ss/android/medialib/AVCEncoder;->mEncodeCount:I

    return-void
.end method

.method private getMediaCodecInfo()Landroid/media/MediaCodecInfo;
    .locals 8

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OMX.google."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "OMX.Nvidia."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "OMX.TI.DUCATI1.VIDEO.H264E"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_3

    aget-object v6, v4, v5

    iget-object v7, p0, Lcom/ss/android/medialib/AVCEncoder;->mCodecName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMediaCodecInfo21()Landroid/media/MediaCodecInfo;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OMX.google."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "OMX.Nvidia."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "OMX.TI.DUCATI1.VIDEO.H264E"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    move v7, v3

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_4

    aget-object v8, v6, v7

    iget-object v9, p0, Lcom/ss/android/medialib/AVCEncoder;->mCodecName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    return-object v5

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-object v1
.end method

.method private getOneColorFormat()I
    .locals 4

    invoke-virtual {p0}, Lcom/ss/android/medialib/AVCEncoder;->getColorFormats()[I

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget v2, p0, v1

    const v3, 0x7f000789

    if-ne v2, v3, :cond_1

    const-string v0, "AVCEncoder"

    const-string v2, "====== mColorFormat support COLOR_FormatSurface ======"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    aget p0, p0, v1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static setDrainWaitTimeout(I)V
    .locals 0

    sput p0, Lcom/ss/android/medialib/AVCEncoder;->TIMEOUT_USEC:I

    return-void
.end method

.method private testCode(Z)V
    .locals 9

    iget v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mWidth:I

    iget v1, p0, Lcom/ss/android/medialib/AVCEncoder;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v4, p0, Lcom/ss/android/medialib/AVCEncoder;->mWidth:I

    iget v5, p0, Lcom/ss/android/medialib/AVCEncoder;->mHeight:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move-object v8, v0

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/medialib/AVCEncoder;->fileWriter:Ljava/io/BufferedOutputStream;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/storage/emulated/0/xzw/rgbaBig.rgba"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/ss/android/medialib/AVCEncoder;->fileWriter:Ljava/io/BufferedOutputStream;

    :cond_0
    iget-object v1, p0, Lcom/ss/android/medialib/AVCEncoder;->fileWriter:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/ss/android/medialib/AVCEncoder;->fileWriter:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ss/android/medialib/AVCEncoder;->fileWriter:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/ss/android/medialib/AVCEncoder;->fileWriter:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ss/android/medialib/AVCEncoder;->fileWriter:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    iget v1, p0, Lcom/ss/android/medialib/AVCEncoder;->mWidth:I

    iget v2, p0, Lcom/ss/android/medialib/AVCEncoder;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    if-eqz p1, :cond_2

    const-string p1, "/sdcard/aweme/picture/record_e.jpeg"

    invoke-virtual {p0, v1, p1}, Lcom/ss/android/medialib/AVCEncoder;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "/sdcard/aweme/picture/record_s.jpeg"

    invoke-virtual {p0, v1, p1}, Lcom/ss/android/medialib/AVCEncoder;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->fileWriter:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/ss/android/medialib/AVCEncoder;->fileWriter:Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_3
    throw p1
.end method


# virtual methods
.method public declared-synchronized createEncoder()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/medialib/AVCEncoder;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/ss/android/medialib/AVCEncoder;->getOneColorFormat()I

    move-result v0

    iput v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mColorFormat:I

    iget v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mColorFormat:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mCodecName:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OMX.google."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    const-string v4, "AVCEncoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CodecNames: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/ss/android/medialib/AVCEncoder;->status:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "AVCEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createEncoderByTyp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public encode(IIIZ)I
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encodeTexture::texID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " duration:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  isEndStream = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AVCEncoder"

    invoke-static {v6, v4}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget v4, v1, Lcom/ss/android/medialib/AVCEncoder;->status:I

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-ne v4, v6, :cond_15

    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v4, :cond_0

    goto/16 :goto_6

    :cond_0
    if-lez v0, :cond_14

    if-gez v2, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mTextureDrawer:Lcom/ss/android/medialib/common/TextureDrawer;

    if-nez v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/medialib/AVCEncoder;->initEGLCtx()Z

    move-result v4

    if-nez v4, :cond_2

    monitor-exit p0

    return v7

    :cond_2
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mPTSQueue:Ljava/util/Queue;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mWidth:I

    iget v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mHeight:I

    const/4 v5, 0x0

    invoke-static {v5, v5, v2, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string v2, "AVCEncoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encode: width = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/ss/android/medialib/AVCEncoder;->mWidth:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " height = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/ss/android/medialib/AVCEncoder;->mHeight:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mTextureDrawer:Lcom/ss/android/medialib/common/TextureDrawer;

    invoke-virtual {v2, v0}, Lcom/ss/android/medialib/common/TextureDrawer;->drawTexture(I)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    iget v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mDrawCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mDrawCount:I

    sget-object v0, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    invoke-interface {v0}, Lcom/ss/android/medialib/AVCEncoderInterface;->onSwapGlBuffers()V

    iget-boolean v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mFlag:Z

    if-eqz v0, :cond_3

    invoke-direct {v1, v3}, Lcom/ss/android/medialib/AVCEncoder;->testCode(Z)V

    iput-boolean v5, v1, Lcom/ss/android/medialib/AVCEncoder;->mFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_3
    const/4 v0, -0x2

    if-eqz v3, :cond_4

    :try_start_1
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    iput-boolean v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mIsError:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return v0

    :cond_4
    :goto_0
    move v4, v5

    :goto_1
    add-int/2addr v4, v2

    const/4 v8, -0x3

    :try_start_3
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v9, v10, :cond_5

    iget-object v9, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, v1, Lcom/ss/android/medialib/AVCEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    :cond_5
    iget-object v9, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v11, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    sget v12, Lcom/ss/android/medialib/AVCEncoder;->TIMEOUT_USEC:I

    int-to-long v12, v12

    invoke-virtual {v9, v11, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v11, "AVCEncoder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "outputBufferIndex = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "AVCEncoder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mBufferInfo.flags = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v13, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v9, v7, :cond_7

    if-eqz v3, :cond_6

    sget v8, Lcom/ss/android/medialib/AVCEncoder;->TIMEOUT_USEC:I

    const/16 v9, 0x1388

    if-ge v8, v9, :cond_6

    const/16 v8, 0x2710

    sput v8, Lcom/ss/android/medialib/AVCEncoder;->TIMEOUT_USEC:I

    :cond_6
    if-eqz v3, :cond_a

    iget v8, v1, Lcom/ss/android/medialib/AVCEncoder;->mDrawCount:I

    iget v9, v1, Lcom/ss/android/medialib/AVCEncoder;->mEncodeCount:I

    if-eq v8, v9, :cond_a

    const/16 v8, 0xa

    if-ge v4, v8, :cond_a

    goto :goto_1

    :cond_7
    if-ne v9, v8, :cond_8

    iget-object v8, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, v1, Lcom/ss/android/medialib/AVCEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_8
    if-ne v9, v0, :cond_9

    const-string v8, "AVCEncoder"

    const-string v9, "encode: output format change!"

    invoke-static {v8, v9}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    if-gez v9, :cond_c

    const-string v0, "AVCEncoder"

    const-string v2, "encode: error."

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/medialib/AVCEncoder;->releaseEGLCtx()V

    :cond_b
    monitor-exit p0

    return v5

    :cond_c
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_d

    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v9}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    goto :goto_2

    :cond_d
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v9

    :goto_2
    move-object v11, v4

    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v11, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v8, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v8

    invoke-virtual {v11, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_f

    const-string v4, "AVCEncoder"

    const-string v8, "mEncoderCaller.onSetCodecConfig"

    invoke-static {v4, v8}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz v4, :cond_e

    sget-object v4, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    invoke-interface {v4, v11}, Lcom/ss/android/medialib/AVCEncoderInterface;->onSetCodecConfig(Ljava/nio/ByteBuffer;)V

    :cond_e
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v5, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto/16 :goto_4

    :cond_f
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_10

    move/from16 v17, v2

    goto :goto_3

    :cond_10
    move/from16 v17, v5

    :goto_3
    const-string v4, "AVCEncoder"

    const-string v8, "mEncoderCaller.onWriteFile"

    invoke-static {v4, v8}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz v4, :cond_13

    const-string v4, "AVCEncoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "encode: pts queue size = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/ss/android/medialib/AVCEncoder;->mPTSQueue:Ljava/util/Queue;

    invoke-interface {v10}, Ljava/util/Queue;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mPTSQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    if-lez v4, :cond_12

    iget v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mEncodeCount:I

    add-int/2addr v4, v2

    iput v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mEncodeCount:I

    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mPTSQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v8, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v12, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v14, 0x0

    cmp-long v8, v12, v14

    if-lez v8, :cond_11

    iget-object v8, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v14, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_11
    sget-object v10, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    const-wide/16 v12, 0x3e8

    div-long v12, v14, v12

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v14, v8

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-interface/range {v10 .. v17}, Lcom/ss/android/medialib/AVCEncoderInterface;->onWriteFile(Ljava/nio/ByteBuffer;JJII)V

    goto :goto_4

    :cond_12
    const-string v4, "AVCEncoder"

    const-string v8, "encode: no available pts!!!"

    invoke-static {v4, v8}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_13
    const-string v4, "AVCEncoder"

    const-string v8, "encode: no output."

    invoke-static {v4, v8}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v9, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    :catchall_1
    iput-boolean v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mIsError:Z

    monitor-exit p0

    return v8

    :cond_14
    :goto_5
    const-string v3, "AVCEncoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encode: invalidate params: texID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pts = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return v7

    :cond_15
    :goto_6
    const-string v0, "AVCEncoder"

    const-string v2, "encode: codec is not ready."

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return v7

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public encode([BIZ)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    monitor-enter p0

    :try_start_0
    iget v4, v1, Lcom/ss/android/medialib/AVCEncoder;->status:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v4, :cond_0

    goto/16 :goto_9

    :cond_0
    const-string v4, "AVCEncoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encodeBuffer pts: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  isEndStream = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    const-wide/16 v10, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-lt v4, v6, :cond_7

    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v15

    if-ltz v15, :cond_2

    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v15}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    array-length v6, v0

    invoke-virtual {v4, v0, v13, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v14, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/16 v16, 0x0

    array-length v0, v0

    int-to-long v10, v2

    if-ne v3, v12, :cond_1

    move/from16 v20, v9

    goto :goto_0

    :cond_1
    move/from16 v20, v13

    :goto_0
    move/from16 v17, v0

    move-wide/from16 v18, v10

    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_2
    iget-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    sget v3, Lcom/ss/android/medialib/AVCEncoder;->TIMEOUT_USEC:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const-string v2, "AVCEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputBufferIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AVCEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBufferInfo.flags = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-ltz v0, :cond_10

    iget-object v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_4

    const-string v3, "AVCEncoder"

    const-string v4, "mEncoderCaller.onSetCodecConfig"

    invoke-static {v3, v4}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    invoke-interface {v3, v2}, Lcom/ss/android/medialib/AVCEncoderInterface;->onSetCodecConfig(Ljava/nio/ByteBuffer;)V

    :cond_3
    iget-object v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v13, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_3

    :cond_4
    iget-object v3, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-int v3, v3

    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v4, v12

    if-eqz v4, :cond_5

    move v4, v12

    goto :goto_2

    :cond_5
    move v4, v13

    :goto_2
    const-string v6, "AVCEncoder"

    const-string v9, "mEncoderCaller.onWriteFile"

    invoke-static {v6, v9}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz v6, :cond_6

    sget-object v6, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    invoke-interface {v6, v2, v3, v13, v4}, Lcom/ss/android/medialib/AVCEncoderInterface;->onWriteFile(Ljava/nio/ByteBuffer;III)V

    :cond_6
    :goto_3
    iget-object v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v13}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v2, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    goto :goto_1

    :cond_7
    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v15

    if-ltz v15, :cond_9

    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v15

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    array-length v6, v0

    invoke-virtual {v4, v0, v13, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v14, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/16 v16, 0x0

    array-length v0, v0

    int-to-long v10, v2

    if-ne v3, v12, :cond_8

    move/from16 v20, v9

    goto :goto_4

    :cond_8
    move/from16 v20, v13

    :goto_4
    move/from16 v17, v0

    move-wide/from16 v18, v10

    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_9
    iget-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    sget v3, Lcom/ss/android/medialib/AVCEncoder;->TIMEOUT_USEC:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    :goto_5
    if-ltz v0, :cond_10

    const/4 v2, -0x3

    if-ne v0, v2, :cond_a

    iget-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_8

    :cond_a
    const/4 v2, -0x2

    if-eq v0, v2, :cond_f

    iget-object v2, v1, Lcom/ss/android/medialib/AVCEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v0

    iget-object v3, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_c

    const-string v3, "AVCEncoder"

    const-string v4, "mEncoderCaller.onSetCodecConfig"

    invoke-static {v3, v4}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz v3, :cond_b

    sget-object v3, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    invoke-interface {v3, v2}, Lcom/ss/android/medialib/AVCEncoderInterface;->onSetCodecConfig(Ljava/nio/ByteBuffer;)V

    :cond_b
    iget-object v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v13, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_7

    :cond_c
    iget-object v3, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-int v3, v3

    iget-object v4, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v4, v12

    if-eqz v4, :cond_d

    move v4, v12

    goto :goto_6

    :cond_d
    move v4, v13

    :goto_6
    const-string v6, "AVCEncoder"

    const-string v9, "mEncoderCaller.onWriteFile"

    invoke-static {v6, v9}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz v6, :cond_e

    sget-object v6, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    invoke-interface {v6, v2, v3, v13, v4}, Lcom/ss/android/medialib/AVCEncoderInterface;->onWriteFile(Ljava/nio/ByteBuffer;III)V

    :cond_e
    :goto_7
    iget-object v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v13}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_f
    :goto_8
    iget-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v2, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    goto :goto_5

    :cond_10
    monitor-exit p0

    return v13

    :cond_11
    :goto_9
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getColorFormats()[I
    .locals 4

    const-string v0, "AVCEncoder"

    const-string v1, "start == "

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/ss/android/medialib/AVCEncoder;->getMediaCodecInfo21()Landroid/media/MediaCodecInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/ss/android/medialib/AVCEncoder;->getMediaCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    const-string v1, "end == "

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMediaCodecInfo name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    iget-object p0, p0, Lcom/ss/android/medialib/AVCEncoder;->mCodecName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v3, v3, v2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public getProfile()I
    .locals 0

    iget p0, p0, Lcom/ss/android/medialib/AVCEncoder;->mProfile:I

    return p0
.end method

.method public initAVCEncoder(IIII)Landroid/view/Surface;
    .locals 8

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/medialib/AVCEncoder;->initAVCEncoder(IIIIIIZ)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public initAVCEncoder(IIIIIIZ)Landroid/view/Surface;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return-object v7

    :cond_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x12

    if-ge v8, v9, :cond_1

    return-object v7

    :cond_1
    const/4 v8, 0x0

    iput v8, v1, Lcom/ss/android/medialib/AVCEncoder;->mDrawCount:I

    iput v8, v1, Lcom/ss/android/medialib/AVCEncoder;->mEncodeCount:I

    const-string v9, "AVCEncoder"

    const-string v10, "initAVCEncoder == enter"

    invoke-static {v9, v10}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ltz v4, :cond_2

    if-le v4, v9, :cond_3

    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Do not support bitrate mode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", set VBR mode"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v11, "AVCEncoder"

    invoke-static {v11, v4}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v10

    :cond_3
    if-lt v5, v10, :cond_4

    const/16 v11, 0x40

    if-le v5, v11, :cond_5

    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Do not support profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", use baseline"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "AVCEncoder"

    invoke-static {v11, v5}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v10

    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "width + "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\theight = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\tbitrate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\tuseTextureInput = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "AVCEncoder"

    invoke-static {v11, v6}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_16

    if-gtz v2, :cond_6

    goto/16 :goto_9

    :cond_6
    iput v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mWidth:I

    iput v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mHeight:I

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/medialib/AVCEncoder;->createEncoder()V

    sget-object v6, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz v6, :cond_7

    sget-object v6, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    iget v11, v1, Lcom/ss/android/medialib/AVCEncoder;->mColorFormat:I

    invoke-interface {v6, v11}, Lcom/ss/android/medialib/AVCEncoderInterface;->setColorFormat(I)V

    :cond_7
    iget-object v6, v1, Lcom/ss/android/medialib/AVCEncoder;->mCodecName:Ljava/lang/String;

    invoke-static {v6, v0, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iget-object v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    iget-object v6, v1, Lcom/ss/android/medialib/AVCEncoder;->mCodecName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    iget-object v6, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v11, v6

    move-object v13, v7

    move v12, v8

    :goto_0
    if-ge v12, v11, :cond_c

    aget-object v15, v6, v12

    const-string v7, "AVCEncoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Profile = "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", Level = "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v7, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v7, v10, :cond_8

    const-string v7, "AVCEncoder"

    const-string v8, "Support Baseline Profile!"

    invoke-static {v7, v8}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget v7, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v7, v9, :cond_9

    const-string v7, "AVCEncoder"

    const-string v8, "Support Main Profile!"

    invoke-static {v7, v8}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v7, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ge v7, v9, :cond_a

    goto :goto_1

    :cond_9
    iget v7, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_a

    const-string v7, "AVCEncoder"

    const-string v14, "Support High Profile!"

    invoke-static {v7, v14}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v7, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ge v7, v8, :cond_a

    :goto_1
    move-object v13, v15

    :cond_a
    iget v7, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v7, v5, :cond_b

    goto :goto_2

    :cond_b
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_0

    :cond_c
    :goto_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x3

    const/16 v8, 0x15

    if-lt v6, v8, :cond_d

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object v6

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v7, :cond_d

    const-string v12, "AVCEncoder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/ss/android/medialib/AVCEncoder;->BITRATE_MODES:[Ljava/lang/String;

    aget-object v15, v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_d
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v6, v11, :cond_10

    if-eqz v13, :cond_10

    const-string v5, "AVCEncoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set Profile: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", Level = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iput v5, v1, Lcom/ss/android/medialib/AVCEncoder;->mProfile:I

    const-string v5, "profile"

    iget v6, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "level"

    iget v6, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v5, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-eq v5, v9, :cond_f

    const/16 v6, 0x8

    if-eq v5, v6, :cond_e

    move v5, v3

    goto :goto_5

    :cond_e
    const-string v5, "AVCEncoder"

    const-string v6, "Set High Profile"

    invoke-static {v5, v6}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v5, v3

    const/high16 v6, 0x3f400000    # 0.75f

    goto :goto_4

    :cond_f
    const-string v5, "AVCEncoder"

    const-string v6, "Set Main Profile"

    invoke-static {v5, v6}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v5, v3

    const v6, 0x3f59999a    # 0.85f

    :goto_4
    mul-float/2addr v5, v6

    float-to-int v5, v5

    :goto_5
    const-string v6, "te_mediacodec_profile"

    iget v11, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    int-to-long v11, v11

    const/4 v14, 0x0

    invoke-static {v14, v6, v11, v12}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    const-string v6, "iesve_record_mediacodec_profile"

    iget v11, v13, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    int-to-long v11, v11

    invoke-static {v6, v11, v12}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(Ljava/lang/String;J)V

    goto :goto_6

    :cond_10
    const-string v6, "AVCEncoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Do not support profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", use baseline"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "te_mediacodec_profile"

    const-wide/16 v11, 0x1

    const/4 v6, 0x0

    invoke-static {v6, v5, v11, v12}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    const-string v5, "iesve_record_mediacodec_profile"

    invoke-static {v5, v11, v12}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(Ljava/lang/String;J)V

    move v5, v3

    :goto_6
    const v6, 0xb71b00

    if-le v5, v6, :cond_11

    move v5, v6

    :cond_11
    const-string v6, "AVCEncoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bitrate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v12, v5

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v12, v13

    const v13, 0x49742400    # 1000000.0f

    div-float/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, "Mb/s"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "AVCEncoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "speed = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "bitrate"

    invoke-virtual {v0, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v8, :cond_13

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object v2

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v7, :cond_12

    const-string v6, "AVCEncoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/ss/android/medialib/AVCEncoder;->BITRATE_MODES:[Ljava/lang/String;

    aget-object v12, v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_12
    const-string v5, "bitrate-mode"

    invoke-virtual {v0, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "AVCEncoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bitrate mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "te_record_mediacodec_rate_control"

    int-to-long v6, v4

    const/4 v4, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    const-string v4, "max-bitrate"

    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "AVCEncoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoder ComplexityRange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->getComplexityRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const-string v2, "color-format"

    iget v3, v1, Lcom/ss/android/medialib/AVCEncoder;->mColorFormat:I

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "frame-rate"

    iget v3, v1, Lcom/ss/android/medialib/AVCEncoder;->mFrameRate:I

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "i-frame-interval"

    invoke-virtual {v0, v2, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "te_record_video_encode_gop"

    iget v3, v1, Lcom/ss/android/medialib/AVCEncoder;->mFrameRate:I

    mul-int/2addr v3, v10

    int-to-long v3, v3

    const/4 v5, 0x0

    invoke-static {v5, v2, v3, v4}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    const-string v2, "AVCEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initAVCEncoder: format = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3, v10}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mSurface:Landroid/view/Surface;

    iget-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iput v9, v1, Lcom/ss/android/medialib/AVCEncoder;->status:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v8, :cond_14

    iget-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    iget-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    :cond_14
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_15

    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    :cond_15
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "AVCEncoder"

    const-string v2, "initAVCEncoder == exit"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/ss/android/medialib/AVCEncoder;->mSurface:Landroid/view/Surface;

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    monitor-exit p0

    const/4 v2, 0x0

    return-object v2

    :goto_8
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_16
    :goto_9
    move-object v2, v7

    return-object v2
.end method

.method public initAVCEncoder(IIIIZ)Landroid/view/Surface;
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/medialib/AVCEncoder;->initAVCEncoder(IIIIIIZ)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public initEGLCtx()Z
    .locals 2

    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    const-string p0, "AVCEncoder"

    const-string v0, "initEGLCtx: MediaCodec should initialized ahead."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/ss/android/medialib/common/TextureDrawer;->create()Lcom/ss/android/medialib/common/TextureDrawer;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mTextureDrawer:Lcom/ss/android/medialib/common/TextureDrawer;

    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mTextureDrawer:Lcom/ss/android/medialib/common/TextureDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/common/TextureDrawer;->setRotation(F)V

    iget-object p0, p0, Lcom/ss/android/medialib/AVCEncoder;->mTextureDrawer:Lcom/ss/android/medialib/common/TextureDrawer;

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/medialib/common/TextureDrawer;->setFlipScale(FF)V

    const/4 p0, 0x1

    return p0
.end method

.method public isError()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/medialib/AVCEncoder;->mIsError:Z

    return p0
.end method

.method public releaseEGLCtx()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mTextureDrawer:Lcom/ss/android/medialib/common/TextureDrawer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ss/android/medialib/common/TextureDrawer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mTextureDrawer:Lcom/ss/android/medialib/common/TextureDrawer;

    :cond_0
    return-void
.end method

.method public declared-synchronized releaseEncoder()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iput v2, p0, Lcom/ss/android/medialib/AVCEncoder;->status:I

    const-string v2, "AVCEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time cost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saving Bitmap : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AVCEncoder"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, p0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Bitmap "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " saved!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    goto :goto_5

    :catch_2
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v1, p0

    goto :goto_5

    :catch_4
    move-exception p1

    move-object v1, p0

    :goto_2
    :try_start_5
    const-string p2, "Err when saving bitmap..."

    invoke-static {v0, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p0, :cond_0

    :try_start_6
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_3
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_6
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    return-void

    :goto_5
    if-eqz p0, :cond_2

    :try_start_8
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_6
    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_7
    throw p1
.end method

.method public setBitrateMode(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string p0, "bitrate-mode"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p1
.end method

.method public setEncoderCaller(Lcom/ss/android/medialib/AVCEncoderInterface;)V
    .locals 0

    sput-object p1, Lcom/ss/android/medialib/AVCEncoder;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/AVCEncoder;->mFrameRate:I

    return-void
.end method

.method public uninitAVCEncoder()V
    .locals 2

    const-string v0, "AVCEncoder"

    const-string v1, "uninitAVCEncoder == enter"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ss/android/medialib/AVCEncoder;->status:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/ss/android/medialib/AVCEncoder;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "AVCEncoder"

    const-string v1, "MediaCodec Exception"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/ss/android/medialib/AVCEncoder;->status:I

    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/medialib/AVCEncoder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_2
    invoke-virtual {p0}, Lcom/ss/android/medialib/AVCEncoder;->releaseEncoder()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p0, "AVCEncoder"

    const-string v0, "uninitAVCEncoder == exit"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    :try_start_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
