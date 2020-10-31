.class public Landroid/media/tv/tuner/frontend/IsdbsFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "IsdbsFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mCodeRateCap:I

.field private final mModulationCap:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendCapabilities;->mModulationCap:I

    iput p2, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendCapabilities;->mCodeRateCap:I

    return-void
.end method


# virtual methods
.method public getCodeRateCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendCapabilities;->mCodeRateCap:I

    return v0
.end method

.method public getModulationCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendCapabilities;->mModulationCap:I

    return v0
.end method
