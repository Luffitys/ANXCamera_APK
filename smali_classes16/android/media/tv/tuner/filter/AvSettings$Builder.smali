.class public Landroid/media/tv/tuner/filter/AvSettings$Builder;
.super Ljava/lang/Object;
.source "AvSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/AvSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mIsAudio:Z

.field private mIsPassthrough:Z

.field private final mMainType:I


# direct methods
.method private constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mMainType:I

    iput-boolean p2, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mIsAudio:Z

    return-void
.end method

.method synthetic constructor <init>(IZLandroid/media/tv/tuner/filter/AvSettings$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/filter/AvSettings$Builder;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/filter/AvSettings;
    .registers 6

    new-instance v0, Landroid/media/tv/tuner/filter/AvSettings;

    iget v1, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mMainType:I

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mIsAudio:Z

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mIsPassthrough:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/tv/tuner/filter/AvSettings;-><init>(IZZLandroid/media/tv/tuner/filter/AvSettings$1;)V

    return-object v0
.end method

.method public setPassthrough(Z)Landroid/media/tv/tuner/filter/AvSettings$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mIsPassthrough:Z

    return-object p0
.end method
