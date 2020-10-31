.class public Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "AnalogFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFrequency:I

.field private mSifStandard:I

.field private mSignalType:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mFrequency:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mSignalType:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mSifStandard:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;
    .registers 6

    new-instance v0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;

    iget v1, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mFrequency:I

    iget v2, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mSignalType:I

    iget v3, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mSifStandard:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;-><init>(IIILandroid/media/tv/tuner/frontend/AnalogFrontendSettings$1;)V

    return-object v0
.end method

.method public setFrequency(I)Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mFrequency:I

    return-object p0
.end method

.method public setSifStandard(I)Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mSifStandard:I

    return-object p0
.end method

.method public setSignalType(I)Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mSignalType:I

    return-object p0
.end method
