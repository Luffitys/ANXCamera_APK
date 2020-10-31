.class public Landroid/media/tv/tuner/frontend/AnalogFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "AnalogFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mSifStandardCap:I

.field private final mTypeCap:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendCapabilities;->mTypeCap:I

    iput p2, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendCapabilities;->mSifStandardCap:I

    return-void
.end method


# virtual methods
.method public getSifStandardCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendCapabilities;->mSifStandardCap:I

    return v0
.end method

.method public getSignalTypeCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendCapabilities;->mTypeCap:I

    return v0
.end method
