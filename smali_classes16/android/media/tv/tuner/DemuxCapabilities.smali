.class public Landroid/media/tv/tuner/DemuxCapabilities;
.super Ljava/lang/Object;
.source "DemuxCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/DemuxCapabilities$FilterCapabilities;
    }
.end annotation


# instance fields
.field private final mAudioFilterCount:I

.field private final mDemuxCount:I

.field private final mFilterCaps:I

.field private final mLinkCaps:[I

.field private final mPcrFilterCount:I

.field private final mPesFilterCount:I

.field private final mPlaybackCount:I

.field private final mRecordCount:I

.field private final mSectionFilterCount:I

.field private final mSectionFilterLength:J

.field private final mSupportTimeFilter:Z

.field private final mTsFilterCount:I

.field private final mVideoFilterCount:I


# direct methods
.method private constructor <init>(IIIIIIIIIJI[IZ)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mDemuxCount:I

    iput p2, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mRecordCount:I

    iput p3, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPlaybackCount:I

    iput p4, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mTsFilterCount:I

    iput p5, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterCount:I

    iput p6, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mAudioFilterCount:I

    iput p7, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mVideoFilterCount:I

    iput p8, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPesFilterCount:I

    iput p9, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPcrFilterCount:I

    iput-wide p10, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterLength:J

    iput p12, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mFilterCaps:I

    iput-object p13, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mLinkCaps:[I

    iput-boolean p14, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSupportTimeFilter:Z

    return-void
.end method


# virtual methods
.method public getAudioFilterCount()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mAudioFilterCount:I

    return v0
.end method

.method public getDemuxCount()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mDemuxCount:I

    return v0
.end method

.method public getFilterCapabilities()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mFilterCaps:I

    return v0
.end method

.method public getLinkCapabilities()[I
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mLinkCaps:[I

    return-object v0
.end method

.method public getPcrFilterCount()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPcrFilterCount:I

    return v0
.end method

.method public getPesFilterCount()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPesFilterCount:I

    return v0
.end method

.method public getPlaybackCount()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPlaybackCount:I

    return v0
.end method

.method public getRecordCount()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mRecordCount:I

    return v0
.end method

.method public getSectionFilterCount()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterCount:I

    return v0
.end method

.method public getSectionFilterLength()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterLength:J

    return-wide v0
.end method

.method public getTsFilterCount()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mTsFilterCount:I

    return v0
.end method

.method public getVideoFilterCount()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mVideoFilterCount:I

    return v0
.end method

.method public isTimeFilterSupported()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSupportTimeFilter:Z

    return v0
.end method
