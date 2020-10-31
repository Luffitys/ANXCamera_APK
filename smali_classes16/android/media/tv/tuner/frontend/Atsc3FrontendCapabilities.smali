.class public Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "Atsc3FrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mBandwidthCap:I

.field private final mCodeRateCap:I

.field private final mDemodOutputFormatCap:I

.field private final mFecCap:I

.field private final mModulationCap:I

.field private final mTimeInterleaveModeCap:I


# direct methods
.method private constructor <init>(IIIIII)V
    .registers 7

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mBandwidthCap:I

    iput p2, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mModulationCap:I

    iput p3, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mTimeInterleaveModeCap:I

    iput p4, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mCodeRateCap:I

    iput p5, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mFecCap:I

    iput p6, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mDemodOutputFormatCap:I

    return-void
.end method


# virtual methods
.method public getBandwidthCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mBandwidthCap:I

    return v0
.end method

.method public getDemodOutputFormatCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mDemodOutputFormatCap:I

    return v0
.end method

.method public getFecCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mFecCap:I

    return v0
.end method

.method public getModulationCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mModulationCap:I

    return v0
.end method

.method public getPlpCodeRateCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mCodeRateCap:I

    return v0
.end method

.method public getTimeInterleaveModeCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendCapabilities;->mTimeInterleaveModeCap:I

    return v0
.end method
