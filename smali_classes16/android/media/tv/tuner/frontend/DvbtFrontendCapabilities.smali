.class public Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "DvbtFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mBandwidthCap:I

.field private final mCodeRateCap:I

.field private final mConstellationCap:I

.field private final mGuardIntervalCap:I

.field private final mHierarchyCap:I

.field private final mIsMisoSupported:Z

.field private final mIsT2Supported:Z

.field private final mTransmissionModeCap:I


# direct methods
.method private constructor <init>(IIIIIIZZ)V
    .registers 9

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mTransmissionModeCap:I

    iput p2, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mBandwidthCap:I

    iput p3, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mConstellationCap:I

    iput p4, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mCodeRateCap:I

    iput p5, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mHierarchyCap:I

    iput p6, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mGuardIntervalCap:I

    iput-boolean p7, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mIsT2Supported:Z

    iput-boolean p8, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mIsMisoSupported:Z

    return-void
.end method


# virtual methods
.method public getBandwidthCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mBandwidthCap:I

    return v0
.end method

.method public getCodeRateCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mCodeRateCap:I

    return v0
.end method

.method public getConstellationCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mConstellationCap:I

    return v0
.end method

.method public getGuardIntervalCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mGuardIntervalCap:I

    return v0
.end method

.method public getHierarchyCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mHierarchyCap:I

    return v0
.end method

.method public getTransmissionModeCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mTransmissionModeCap:I

    return v0
.end method

.method public isMisoSupported()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mIsMisoSupported:Z

    return v0
.end method

.method public isT2Supported()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mIsT2Supported:Z

    return v0
.end method
