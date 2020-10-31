.class public Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;
.super Ljava/lang/Object;
.source "Atsc3FrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBandwidth:I

.field private mDemodOutputFormat:I

.field private mFrequency:I

.field private mPlpSettings:[Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mFrequency:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mBandwidth:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mDemodOutputFormat:I

    new-array v0, v0, [Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;

    iput-object v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mPlpSettings:[Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings;
    .registers 8

    new-instance v6, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings;

    iget v1, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mFrequency:I

    iget v2, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mBandwidth:I

    iget v3, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mDemodOutputFormat:I

    iget-object v4, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mPlpSettings:[Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings;-><init>(III[Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$1;)V

    return-object v6
.end method

.method public setBandwidth(I)Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mBandwidth:I

    return-object p0
.end method

.method public setDemodOutputFormat(I)Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mDemodOutputFormat:I

    return-object p0
.end method

.method public setFrequency(I)Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mFrequency:I

    return-object p0
.end method

.method public setPlpSettings([Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;)Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mPlpSettings:[Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;

    return-object p0
.end method
