.class public Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
.super Ljava/lang/Object;
.source "Isdbs3FrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCodeRate:I

.field private mFrequency:I

.field private mModulation:I

.field private mRolloff:I

.field private mStreamId:I

.field private mStreamIdType:I

.field private mSymbolRate:I


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mFrequency:I

    const v1, 0xffff

    iput v1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mStreamId:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mStreamIdType:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mModulation:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mCodeRate:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mSymbolRate:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mRolloff:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;
    .registers 11

    new-instance v9, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;

    iget v1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mFrequency:I

    iget v2, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mStreamId:I

    iget v3, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mStreamIdType:I

    iget v4, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mModulation:I

    iget v5, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mCodeRate:I

    iget v6, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mSymbolRate:I

    iget v7, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mRolloff:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;-><init>(IIIIIIILandroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$1;)V

    return-object v9
.end method

.method public setCodeRate(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mCodeRate:I

    return-object p0
.end method

.method public setFrequency(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mFrequency:I

    return-object p0
.end method

.method public setModulation(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mModulation:I

    return-object p0
.end method

.method public setRolloff(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mRolloff:I

    return-object p0
.end method

.method public setStreamId(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mStreamId:I

    return-object p0
.end method

.method public setStreamIdType(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mStreamIdType:I

    return-object p0
.end method

.method public setSymbolRate(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mSymbolRate:I

    return-object p0
.end method
