.class public Landroid/media/tv/tuner/filter/DownloadSettings;
.super Landroid/media/tv/tuner/filter/Settings;
.source "DownloadSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/DownloadSettings$Builder;
    }
.end annotation


# instance fields
.field private final mDownloadId:I


# direct methods
.method private constructor <init>(II)V
    .registers 4

    const/4 v0, 0x5

    invoke-static {p1, v0}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/filter/Settings;-><init>(I)V

    iput p2, p0, Landroid/media/tv/tuner/filter/DownloadSettings;->mDownloadId:I

    return-void
.end method

.method synthetic constructor <init>(IILandroid/media/tv/tuner/filter/DownloadSettings$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/filter/DownloadSettings;-><init>(II)V

    return-void
.end method

.method public static builder(I)Landroid/media/tv/tuner/filter/DownloadSettings$Builder;
    .registers 3

    new-instance v0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;-><init>(ILandroid/media/tv/tuner/filter/DownloadSettings$1;)V

    return-object v0
.end method


# virtual methods
.method public getDownloadId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/DownloadSettings;->mDownloadId:I

    return v0
.end method
