.class public Landroid/media/tv/tuner/filter/AvSettings;
.super Landroid/media/tv/tuner/filter/Settings;
.source "AvSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/AvSettings$Builder;
    }
.end annotation


# instance fields
.field private final mIsPassthrough:Z


# direct methods
.method private constructor <init>(IZZ)V
    .registers 5

    nop

    if-eqz p2, :cond_5

    const/4 v0, 0x3

    goto :goto_6

    :cond_5
    const/4 v0, 0x4

    :goto_6
    invoke-static {p1, v0}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/filter/Settings;-><init>(I)V

    iput-boolean p3, p0, Landroid/media/tv/tuner/filter/AvSettings;->mIsPassthrough:Z

    return-void
.end method

.method synthetic constructor <init>(IZZLandroid/media/tv/tuner/filter/AvSettings$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/tuner/filter/AvSettings;-><init>(IZZ)V

    return-void
.end method

.method public static builder(IZ)Landroid/media/tv/tuner/filter/AvSettings$Builder;
    .registers 4

    new-instance v0, Landroid/media/tv/tuner/filter/AvSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/media/tv/tuner/filter/AvSettings$Builder;-><init>(IZLandroid/media/tv/tuner/filter/AvSettings$1;)V

    return-object v0
.end method


# virtual methods
.method public isPassthrough()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/AvSettings;->mIsPassthrough:Z

    return v0
.end method
