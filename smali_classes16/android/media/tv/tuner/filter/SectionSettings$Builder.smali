.class public abstract Landroid/media/tv/tuner/filter/SectionSettings$Builder;
.super Ljava/lang/Object;
.source "SectionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/SectionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/media/tv/tuner/filter/SectionSettings$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mCrcEnabled:Z

.field mIsRaw:Z

.field mIsRepeat:Z

.field final mMainType:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/SectionSettings$Builder;->mMainType:I

    return-void
.end method


# virtual methods
.method abstract self()Landroid/media/tv/tuner/filter/SectionSettings$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public setCrcEnabled(Z)Landroid/media/tv/tuner/filter/SectionSettings$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/SectionSettings$Builder;->mCrcEnabled:Z

    invoke-virtual {p0}, Landroid/media/tv/tuner/filter/SectionSettings$Builder;->self()Landroid/media/tv/tuner/filter/SectionSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRaw(Z)Landroid/media/tv/tuner/filter/SectionSettings$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/SectionSettings$Builder;->mIsRaw:Z

    invoke-virtual {p0}, Landroid/media/tv/tuner/filter/SectionSettings$Builder;->self()Landroid/media/tv/tuner/filter/SectionSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRepeat(Z)Landroid/media/tv/tuner/filter/SectionSettings$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/SectionSettings$Builder;->mIsRepeat:Z

    invoke-virtual {p0}, Landroid/media/tv/tuner/filter/SectionSettings$Builder;->self()Landroid/media/tv/tuner/filter/SectionSettings$Builder;

    move-result-object v0

    return-object v0
.end method
