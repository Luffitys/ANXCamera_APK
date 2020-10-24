.class public Lmiui/media/Mp3Encoder;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_AUDIO_CHANNEL:I = 0x10

.field public static final DEFAULT_CHANNEL_COUNT:I = 0x1

.field public static final DEFAULT_OUT_BIT_RATE:I = 0x40

.field public static final DEFAULT_OUT_MODE:I = 0x3

.field public static final DEFAULT_QUALITY:I = 0x0

.field public static final DEFAULT_SAMPLE_RATE:I = 0xac44

.field public static final DEFAULT_VBR_QUALITY:I = -0x1

.field public static final OUT_MODE_MONO:I = 0x3

.field public static final OUT_MODE_STEREO:I


# instance fields
.field private mChannelCount:I

.field private mInSampleRate:I

.field private mOutBitRate:I

.field private mOutMode:I

.field private mOutSampleRate:I

.field private mQuality:I

.field private mVBRQuality:I

.field private ptr_lame_global_flag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mp3lame"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/media/Mp3Encoder;->ptr_lame_global_flag:J

    const v0, 0xac44

    iput v0, p0, Lmiui/media/Mp3Encoder;->mInSampleRate:I

    iput v0, p0, Lmiui/media/Mp3Encoder;->mOutSampleRate:I

    const/4 v0, 0x1

    iput v0, p0, Lmiui/media/Mp3Encoder;->mChannelCount:I

    const/4 v0, 0x3

    iput v0, p0, Lmiui/media/Mp3Encoder;->mOutMode:I

    const/16 v0, 0x40

    iput v0, p0, Lmiui/media/Mp3Encoder;->mOutBitRate:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/media/Mp3Encoder;->mQuality:I

    const/4 v0, -0x1

    iput v0, p0, Lmiui/media/Mp3Encoder;->mVBRQuality:I

    return-void
.end method

.method private native lame_close(J)I
.end method

.method private native lame_encode(J[S[SI[BI)I
.end method

.method private native lame_encode_interleaved(J[SI[BI)I
.end method

.method private native lame_flush(J[BI)I
.end method

.method private native lame_init(IIIIIII)J
.end method

.method private native lame_samples_to_encode(J)I
.end method

.method private native lame_write_vbr_header(JLjava/lang/String;)I
.end method


# virtual methods
.method public close()I
    .locals 4

    iget-wide v0, p0, Lmiui/media/Mp3Encoder;->ptr_lame_global_flag:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lmiui/media/Mp3Encoder;->lame_close(J)I

    move-result v0

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lmiui/media/Mp3Encoder;->ptr_lame_global_flag:J

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public encode([S[SI[BI)I
    .locals 8

    iget-wide v1, p0, Lmiui/media/Mp3Encoder;->ptr_lame_global_flag:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lmiui/media/Mp3Encoder;->lame_encode(J[S[SI[BI)I

    move-result p0

    return p0
.end method

.method public encodeInterleaved([SI[BI)I
    .locals 7

    iget-wide v1, p0, Lmiui/media/Mp3Encoder;->ptr_lame_global_flag:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lmiui/media/Mp3Encoder;->lame_encode_interleaved(J[SI[BI)I

    move-result p0

    return p0
.end method

.method protected finalize()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-wide v0, p0, Lmiui/media/Mp3Encoder;->ptr_lame_global_flag:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lmiui/media/Mp3Encoder;->lame_close(J)I

    :cond_0
    return-void
.end method

.method public flush([BI)I
    .locals 2

    iget-wide v0, p0, Lmiui/media/Mp3Encoder;->ptr_lame_global_flag:J

    invoke-direct {p0, v0, v1, p1, p2}, Lmiui/media/Mp3Encoder;->lame_flush(J[BI)I

    move-result p0

    return p0
.end method

.method public getSamplesToEncode()I
    .locals 2

    iget-wide v0, p0, Lmiui/media/Mp3Encoder;->ptr_lame_global_flag:J

    invoke-direct {p0, v0, v1}, Lmiui/media/Mp3Encoder;->lame_samples_to_encode(J)I

    move-result p0

    return p0
.end method

.method public init()Z
    .locals 8

    iget v1, p0, Lmiui/media/Mp3Encoder;->mInSampleRate:I

    iget v2, p0, Lmiui/media/Mp3Encoder;->mOutMode:I

    iget v3, p0, Lmiui/media/Mp3Encoder;->mChannelCount:I

    iget v4, p0, Lmiui/media/Mp3Encoder;->mOutSampleRate:I

    iget v5, p0, Lmiui/media/Mp3Encoder;->mOutBitRate:I

    iget v6, p0, Lmiui/media/Mp3Encoder;->mQuality:I

    iget v7, p0, Lmiui/media/Mp3Encoder;->mVBRQuality:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lmiui/media/Mp3Encoder;->lame_init(IIIIIII)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/media/Mp3Encoder;->ptr_lame_global_flag:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setChannelCount(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Encoder;->mChannelCount:I

    return-void
.end method

.method public setInSampleRate(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Encoder;->mInSampleRate:I

    return-void
.end method

.method public setOutBitRate(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Encoder;->mOutBitRate:I

    return-void
.end method

.method public setOutMode(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Encoder;->mOutMode:I

    return-void
.end method

.method public setOutSampleRate(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Encoder;->mOutSampleRate:I

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Encoder;->mQuality:I

    return-void
.end method

.method public setVBRQuality(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Encoder;->mVBRQuality:I

    return-void
.end method

.method public writeVBRHeader(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lmiui/media/Mp3Encoder;->ptr_lame_global_flag:J

    invoke-direct {p0, v0, v1, p1}, Lmiui/media/Mp3Encoder;->lame_write_vbr_header(JLjava/lang/String;)I

    return-void
.end method
