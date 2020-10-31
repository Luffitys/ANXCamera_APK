.class public Landroid/media/tv/tuner/frontend/AtscFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "AtscFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mModulationCap:I


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/AtscFrontendCapabilities;->mModulationCap:I

    return-void
.end method


# virtual methods
.method public getModulationCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/AtscFrontendCapabilities;->mModulationCap:I

    return v0
.end method
