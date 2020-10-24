.class public Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;
.super Ljava/io/InputStream;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mBuffers:[Ljava/nio/ByteBuffer;

.field private mClosed:Z

.field private mIndex:I

.field private mMediaCodec:Landroid/media/MediaCodec;

.field public mMediaFormat:Landroid/media/MediaFormat;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, "MediaCodecInputStream"

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mMediaCodec:Landroid/media/MediaCodec;

    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mClosed:Z

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p0, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mClosed:Z

    return-void
.end method

.method public getLastBufferInfo()Landroid/media/MediaCodec$BufferInfo;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-object p0
.end method

.method public read()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public read([BII)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_4

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mClosed:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/32 v3, 0x7a120

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    iput v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mIndex:I

    if-ltz v1, :cond_0

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v2, v1

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    :cond_0
    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    const/4 v2, -0x2

    const-string v3, "MediaCodecInputStream"

    if-ne v1, v2, :cond_2

    :try_start_1
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const-string v1, "No buffer available..."

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :goto_1
    iget-boolean v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mClosed:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge p3, v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p3, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    sub-int/2addr p3, v1

    :goto_2
    :try_start_2
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iget-object p2, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lt p1, p2, :cond_7

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mMediaCodec:Landroid/media/MediaCodec;

    iget p2, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    move v0, p3

    goto :goto_3

    :cond_6
    :try_start_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "This InputStream was closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move p3, v0

    :cond_7
    :goto_4
    return p3
.end method
