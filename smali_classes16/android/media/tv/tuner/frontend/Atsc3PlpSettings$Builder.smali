.class public Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;
.super Ljava/lang/Object;
.source "Atsc3PlpSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCodeRate:I

.field private mFec:I

.field private mInterleaveMode:I

.field private mModulation:I

.field private mPlpId:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;
    .registers 9

    new-instance v7, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;

    iget v1, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mPlpId:I

    iget v2, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mModulation:I

    iget v3, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mInterleaveMode:I

    iget v4, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mCodeRate:I

    iget v5, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mFec:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;-><init>(IIIIILandroid/media/tv/tuner/frontend/Atsc3PlpSettings$1;)V

    return-object v7
.end method

.method public setCodeRate(I)Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mCodeRate:I

    return-object p0
.end method

.method public setFec(I)Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mFec:I

    return-object p0
.end method

.method public setInterleaveMode(I)Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mInterleaveMode:I

    return-object p0
.end method

.method public setModulation(I)Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mModulation:I

    return-object p0
.end method

.method public setPlpId(I)Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;->mPlpId:I

    return-object p0
.end method
