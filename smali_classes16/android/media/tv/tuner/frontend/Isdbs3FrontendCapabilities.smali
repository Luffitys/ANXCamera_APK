.class public Landroid/media/tv/tuner/frontend/Isdbs3FrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "Isdbs3FrontendCapabilities.java"


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

    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendCapabilities;->mModulationCap:I

    iput p2, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendCapabilities;->mCodeRateCap:I

    return-void
.end method


# virtual methods
.method public getCodeRateCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendCapabilities;->mCodeRateCap:I

    return v0
.end method

.method public getModulationCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendCapabilities;->mModulationCap:I

    return v0
.end method
