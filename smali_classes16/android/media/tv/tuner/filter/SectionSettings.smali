.class public abstract Landroid/media/tv/tuner/filter/SectionSettings;
.super Landroid/media/tv/tuner/filter/Settings;
.source "SectionSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/SectionSettings$Builder;
    }
.end annotation


# instance fields
.field final mCrcEnabled:Z

.field final mIsRaw:Z

.field final mIsRepeat:Z


# direct methods
.method constructor <init>(IZZZ)V
    .registers 6

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/filter/Settings;-><init>(I)V

    iput-boolean p2, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mCrcEnabled:Z

    iput-boolean p3, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mIsRepeat:Z

    iput-boolean p4, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mIsRaw:Z

    return-void
.end method


# virtual methods
.method public isCrcEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mCrcEnabled:Z

    return v0
.end method

.method public isRaw()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mIsRaw:Z

    return v0
.end method

.method public isRepeat()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/SectionSettings;->mIsRepeat:Z

    return v0
.end method
