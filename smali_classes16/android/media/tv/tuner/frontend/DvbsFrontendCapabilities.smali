.class public Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "DvbsFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mInnerFecCap:J

.field private final mModulationCap:I

.field private final mStandard:I


# direct methods
.method private constructor <init>(IJI)V
    .registers 5

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;->mModulationCap:I

    iput-wide p2, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;->mInnerFecCap:J

    iput p4, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;->mStandard:I

    return-void
.end method


# virtual methods
.method public getInnerFecCapability()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;->mInnerFecCap:J

    return-wide v0
.end method

.method public getModulationCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;->mModulationCap:I

    return v0
.end method

.method public getStandardCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;->mStandard:I

    return v0
.end method
