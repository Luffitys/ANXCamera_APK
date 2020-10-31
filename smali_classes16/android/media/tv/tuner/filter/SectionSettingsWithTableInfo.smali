.class public Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;
.super Landroid/media/tv/tuner/filter/SectionSettings;
.source "SectionSettingsWithTableInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;
    }
.end annotation


# instance fields
.field private final mTableId:I

.field private final mVersion:I


# direct methods
.method private constructor <init>(IZZZII)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/tuner/filter/SectionSettings;-><init>(IZZZ)V

    iput p5, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;->mTableId:I

    iput p6, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;->mVersion:I

    return-void
.end method

.method synthetic constructor <init>(IZZZIILandroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$1;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;-><init>(IZZZII)V

    return-void
.end method

.method public static builder(I)Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;
    .registers 3

    new-instance v0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;-><init>(ILandroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$1;)V

    return-object v0
.end method


# virtual methods
.method public getTableId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;->mTableId:I

    return v0
.end method

.method public getVersion()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;->mVersion:I

    return v0
.end method
