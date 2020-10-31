.class public Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "DvbcFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAnnex:I

.field private mFrequency:I

.field private mInnerFec:J

.field private mModulation:I

.field private mOuterFec:I

.field private mSpectralInversion:I

.field private mSymbolRate:I


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mFrequency:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mModulation:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInnerFec:J

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSymbolRate:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mOuterFec:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mAnnex:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSpectralInversion:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;
    .registers 12

    new-instance v10, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;

    iget v1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mFrequency:I

    iget v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mModulation:I

    iget-wide v3, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInnerFec:J

    iget v5, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSymbolRate:I

    iget v6, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mOuterFec:I

    iget v7, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mAnnex:I

    iget v8, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSpectralInversion:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;-><init>(IIJIIIILandroid/media/tv/tuner/frontend/DvbcFrontendSettings$1;)V

    return-object v10
.end method

.method public setAnnex(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mAnnex:I

    return-object p0
.end method

.method public setFrequency(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mFrequency:I

    return-object p0
.end method

.method public setInnerFec(J)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInnerFec:J

    return-object p0
.end method

.method public setModulation(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mModulation:I

    return-object p0
.end method

.method public setOuterFec(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mOuterFec:I

    return-object p0
.end method

.method public setSpectralInversion(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSpectralInversion:I

    return-object p0
.end method

.method public setSymbolRate(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSymbolRate:I

    return-object p0
.end method
