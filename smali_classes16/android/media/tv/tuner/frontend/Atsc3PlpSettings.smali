.class public Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;
.super Ljava/lang/Object;
.source "Atsc3PlpSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;
    }
.end annotation


# instance fields
.field private final mCodeRate:I

.field private final mFec:I

.field private final mInterleaveMode:I

.field private final mModulation:I

.field private final mPlpId:I


# direct methods
.method private constructor <init>(IIIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mPlpId:I

    iput p2, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mModulation:I

    iput p3, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mInterleaveMode:I

    iput p4, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mCodeRate:I

    iput p5, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mFec:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILandroid/media/tv/tuner/frontend/Atsc3PlpSettings$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;-><init>(IIIII)V

    return-void
.end method

.method public static builder()Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;
    .registers 2

    new-instance v0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/Atsc3PlpSettings$1;)V

    return-object v0
.end method


# virtual methods
.method public getCodeRate()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mCodeRate:I

    return v0
.end method

.method public getFec()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mFec:I

    return v0
.end method

.method public getInterleaveMode()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mInterleaveMode:I

    return v0
.end method

.method public getModulation()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mModulation:I

    return v0
.end method

.method public getPlpId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;->mPlpId:I

    return v0
.end method
