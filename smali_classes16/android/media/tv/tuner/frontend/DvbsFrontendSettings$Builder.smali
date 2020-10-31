.class public Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "DvbsFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCodeRate:Landroid/media/tv/tuner/frontend/DvbsCodeRate;

.field private mFrequency:I

.field private mInputStreamId:I

.field private mModulation:I

.field private mPilot:I

.field private mRolloff:I

.field private mStandard:I

.field private mSymbolRate:I

.field private mVcmMode:I


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mFrequency:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mModulation:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mCodeRate:Landroid/media/tv/tuner/frontend/DvbsCodeRate;

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mSymbolRate:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mRolloff:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mPilot:I

    const v1, 0xffff

    iput v1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mInputStreamId:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mStandard:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mVcmMode:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;
    .registers 13

    new-instance v11, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;

    iget v1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mFrequency:I

    iget v2, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mModulation:I

    iget-object v3, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mCodeRate:Landroid/media/tv/tuner/frontend/DvbsCodeRate;

    iget v4, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mSymbolRate:I

    iget v5, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mRolloff:I

    iget v6, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mPilot:I

    iget v7, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mInputStreamId:I

    iget v8, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mStandard:I

    iget v9, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mVcmMode:I

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings;-><init>(IILandroid/media/tv/tuner/frontend/DvbsCodeRate;IIIIIILandroid/media/tv/tuner/frontend/DvbsFrontendSettings$1;)V

    return-object v11
.end method

.method public setCodeRate(Landroid/media/tv/tuner/frontend/DvbsCodeRate;)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mCodeRate:Landroid/media/tv/tuner/frontend/DvbsCodeRate;

    return-object p0
.end method

.method public setFrequency(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mFrequency:I

    return-object p0
.end method

.method public setInputStreamId(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mInputStreamId:I

    return-object p0
.end method

.method public setModulation(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mModulation:I

    return-object p0
.end method

.method public setPilot(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mPilot:I

    return-object p0
.end method

.method public setRolloff(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mRolloff:I

    return-object p0
.end method

.method public setStandard(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mStandard:I

    return-object p0
.end method

.method public setSymbolRate(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mSymbolRate:I

    return-object p0
.end method

.method public setVcmMode(I)Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendSettings$Builder;->mVcmMode:I

    return-object p0
.end method
