.class public Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;
.super Landroid/media/tv/tuner/filter/SectionSettings;
.source "SectionSettingsWithSectionBits.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;
    }
.end annotation


# instance fields
.field private final mFilter:[B

.field private final mMask:[B

.field private final mMode:[B


# direct methods
.method private constructor <init>(IZZZ[B[B[B)V
    .registers 8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/tuner/filter/SectionSettings;-><init>(IZZZ)V

    iput-object p5, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;->mFilter:[B

    iput-object p6, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;->mMask:[B

    iput-object p7, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;->mMode:[B

    return-void
.end method

.method synthetic constructor <init>(IZZZ[B[B[BLandroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$1;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;-><init>(IZZZ[B[B[B)V

    return-void
.end method

.method public static builder(I)Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;
    .registers 3

    new-instance v0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$Builder;-><init>(ILandroid/media/tv/tuner/filter/SectionSettingsWithSectionBits$1;)V

    return-object v0
.end method


# virtual methods
.method public getFilterBytes()[B
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;->mFilter:[B

    return-object v0
.end method

.method public getMask()[B
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;->mMask:[B

    return-object v0
.end method

.method public getMode()[B
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithSectionBits;->mMode:[B

    return-object v0
.end method
