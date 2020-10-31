.class public Landroid/media/tv/tuner/filter/MediaEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "MediaEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mDataId:J

.field private final mDataLength:J

.field private final mExtraMetaData:Landroid/media/tv/tuner/filter/AudioDescriptor;

.field private final mIsPrivateData:Z

.field private final mIsPtsPresent:Z

.field private final mIsSecureMemory:Z

.field private mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

.field private final mLock:Ljava/lang/Object;

.field private final mMpuSequenceNumber:I

.field private mNativeContext:J

.field private final mOffset:J

.field private final mPts:J

.field private mReleased:Z

.field private final mStreamId:I


# direct methods
.method private constructor <init>(IZJJJLandroid/media/MediaCodec$LinearBlock;ZJIZLandroid/media/tv/tuner/filter/AudioDescriptor;)V
    .registers 32

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mReleased:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mLock:Ljava/lang/Object;

    move/from16 v1, p1

    iput v1, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mStreamId:I

    move/from16 v2, p2

    iput-boolean v2, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsPtsPresent:Z

    move-wide/from16 v3, p3

    iput-wide v3, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mPts:J

    move-wide/from16 v5, p5

    iput-wide v5, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataLength:J

    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mOffset:J

    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    move/from16 v10, p10

    iput-boolean v10, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsSecureMemory:Z

    move-wide/from16 v11, p11

    iput-wide v11, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataId:J

    move/from16 v13, p13

    iput v13, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mMpuSequenceNumber:I

    move/from16 v14, p14

    iput-boolean v14, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsPrivateData:Z

    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mExtraMetaData:Landroid/media/tv/tuner/filter/AudioDescriptor;

    return-void
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetAudioHandle()Ljava/lang/Long;
.end method

.method private native nativeGetLinearBlock()Landroid/media/MediaCodec$LinearBlock;
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    return-void
.end method

.method public getAudioHandle()J
    .registers 3

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/MediaEvent;->nativeGetAudioHandle()Ljava/lang/Long;

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataId:J

    return-wide v0
.end method

.method public getAvDataId()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataId:J

    return-wide v0
.end method

.method public getDataLength()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataLength:J

    return-wide v0
.end method

.method public getExtraMetaData()Landroid/media/tv/tuner/filter/AudioDescriptor;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mExtraMetaData:Landroid/media/tv/tuner/filter/AudioDescriptor;

    return-object v0
.end method

.method public getLinearBlock()Landroid/media/MediaCodec$LinearBlock;
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v1, :cond_d

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/MediaEvent;->nativeGetLinearBlock()Landroid/media/MediaCodec$LinearBlock;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    :cond_d
    iget-object v1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getMpuSequenceNumber()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mMpuSequenceNumber:I

    return v0
.end method

.method public getOffset()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mOffset:J

    return-wide v0
.end method

.method public getPts()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mPts:J

    return-wide v0
.end method

.method public getStreamId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mStreamId:I

    return v0
.end method

.method public isPrivateData()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsPrivateData:Z

    return v0
.end method

.method public isPtsPresent()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsPtsPresent:Z

    return v0
.end method

.method public isSecureMemory()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsSecureMemory:Z

    return v0
.end method

.method public release()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mReleased:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/MediaEvent;->nativeFinalize()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mNativeContext:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mReleased:Z

    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method
