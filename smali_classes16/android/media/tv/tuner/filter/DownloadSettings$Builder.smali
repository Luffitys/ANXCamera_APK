.class public Landroid/media/tv/tuner/filter/DownloadSettings$Builder;
.super Ljava/lang/Object;
.source "DownloadSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/DownloadSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDownloadId:I

.field private final mMainType:I


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;->mMainType:I

    return-void
.end method

.method synthetic constructor <init>(ILandroid/media/tv/tuner/filter/DownloadSettings$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/filter/DownloadSettings;
    .registers 5

    new-instance v0, Landroid/media/tv/tuner/filter/DownloadSettings;

    iget v1, p0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;->mMainType:I

    iget v2, p0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;->mDownloadId:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/tv/tuner/filter/DownloadSettings;-><init>(IILandroid/media/tv/tuner/filter/DownloadSettings$1;)V

    return-object v0
.end method

.method public setDownloadId(I)Landroid/media/tv/tuner/filter/DownloadSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;->mDownloadId:I

    return-object p0
.end method
