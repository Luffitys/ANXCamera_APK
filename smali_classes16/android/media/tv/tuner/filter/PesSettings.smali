.class public Landroid/media/tv/tuner/filter/PesSettings;
.super Landroid/media/tv/tuner/filter/Settings;
.source "PesSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/PesSettings$Builder;
    }
.end annotation


# instance fields
.field private final mIsRaw:Z

.field private final mStreamId:I


# direct methods
.method private constructor <init>(IIZ)V
    .registers 5

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/filter/Settings;-><init>(I)V

    iput p2, p0, Landroid/media/tv/tuner/filter/PesSettings;->mStreamId:I

    iput-boolean p3, p0, Landroid/media/tv/tuner/filter/PesSettings;->mIsRaw:Z

    return-void
.end method

.method synthetic constructor <init>(IIZLandroid/media/tv/tuner/filter/PesSettings$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/tuner/filter/PesSettings;-><init>(IIZ)V

    return-void
.end method

.method public static builder(I)Landroid/media/tv/tuner/filter/PesSettings$Builder;
    .registers 3

    new-instance v0, Landroid/media/tv/tuner/filter/PesSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/tuner/filter/PesSettings$Builder;-><init>(ILandroid/media/tv/tuner/filter/PesSettings$1;)V

    return-object v0
.end method


# virtual methods
.method public getStreamId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/PesSettings;->mStreamId:I

    return v0
.end method

.method public isRaw()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/PesSettings;->mIsRaw:Z

    return v0
.end method
