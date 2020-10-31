.class public Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "AtscFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/AtscFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFrequency:I

.field private mModulation:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->mFrequency:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->mModulation:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/AtscFrontendSettings$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/AtscFrontendSettings;
    .registers 5

    new-instance v0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings;

    iget v1, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->mFrequency:I

    iget v2, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->mModulation:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/tv/tuner/frontend/AtscFrontendSettings;-><init>(IILandroid/media/tv/tuner/frontend/AtscFrontendSettings$1;)V

    return-object v0
.end method

.method public setFrequency(I)Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->mFrequency:I

    return-object p0
.end method

.method public setModulation(I)Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->mModulation:I

    return-object p0
.end method
