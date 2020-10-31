.class public Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;
.super Landroid/media/tv/tuner/filter/SectionSettings$Builder;
.source "SectionSettingsWithSectionBits.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/tv/tuner/filter/SectionSettings$Builder<",
        "Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mFilter:[B

.field private mMask:[B

.field private mMode:[B


# direct methods
.method private constructor <init>(I)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/SectionSettings$Builder;-><init>(I)V

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mFilter:[B

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mMask:[B

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mMode:[B

    return-void
.end method

.method synthetic constructor <init>(ILandroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;
    .registers 11

    new-instance v9, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;

    iget v1, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mMainType:I

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mCrcEnabled:Z

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mIsRepeat:Z

    iget-boolean v4, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mIsRaw:Z

    iget-object v5, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mFilter:[B

    iget-object v6, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mMask:[B

    iget-object v7, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mMode:[B

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;-><init>(IZZZ[B[B[BLandroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$1;)V

    return-object v9
.end method

.method bridge synthetic self()Landroid/media/tv/tuner/filter/SectionSettings$Builder;
    .registers 2

    invoke-virtual {p0}, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->self()Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;

    move-result-object v0

    return-object v0
.end method

.method self()Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;
    .registers 1

    return-object p0
.end method

.method public setFilter([B)Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mFilter:[B

    return-object p0
.end method

.method public setMask([B)Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mMask:[B

    return-object p0
.end method

.method public setMode([B)Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;->mMode:[B

    return-object p0
.end method
