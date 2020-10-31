.class public Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "IsdbtFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mBandwidthCap:I

.field private final mCodeRateCap:I

.field private final mGuardIntervalCap:I

.field private final mModeCap:I

.field private final mModulationCap:I


# direct methods
.method private constructor <init>(IIIII)V
    .registers 6

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mModeCap:I

    iput p2, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mBandwidthCap:I

    iput p3, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mModulationCap:I

    iput p4, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mCodeRateCap:I

    iput p5, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mGuardIntervalCap:I

    return-void
.end method


# virtual methods
.method public getBandwidthCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mBandwidthCap:I

    return v0
.end method

.method public getCodeRateCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mCodeRateCap:I

    return v0
.end method

.method public getGuardIntervalCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mGuardIntervalCap:I

    return v0
.end method

.method public getModeCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mModeCap:I

    return v0
.end method

.method public getModulationCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mModulationCap:I

    return v0
.end method
