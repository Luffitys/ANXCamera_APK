.class public Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;
.source "DvbcFrontendSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$SpectralInversion;,
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Annex;,
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$OuterFec;,
        Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Modulation;
    }
.end annotation


# static fields
.field public static final ANNEX_A:I = 0x1

.field public static final ANNEX_B:I = 0x2

.field public static final ANNEX_C:I = 0x4

.field public static final ANNEX_UNDEFINED:I = 0x0

.field public static final MODULATION_AUTO:I = 0x1

.field public static final MODULATION_MOD_128QAM:I = 0x10

.field public static final MODULATION_MOD_16QAM:I = 0x2

.field public static final MODULATION_MOD_256QAM:I = 0x20

.field public static final MODULATION_MOD_32QAM:I = 0x4

.field public static final MODULATION_MOD_64QAM:I = 0x8

.field public static final MODULATION_UNDEFINED:I = 0x0

.field public static final OUTER_FEC_OUTER_FEC_NONE:I = 0x1

.field public static final OUTER_FEC_OUTER_FEC_RS:I = 0x2

.field public static final OUTER_FEC_UNDEFINED:I = 0x0

.field public static final SPECTRAL_INVERSION_INVERTED:I = 0x2

.field public static final SPECTRAL_INVERSION_NORMAL:I = 0x1

.field public static final SPECTRAL_INVERSION_UNDEFINED:I


# instance fields
.field private final mAnnex:I

.field private final mInnerFec:J

.field private final mModulation:I

.field private final mOuterFec:I

.field private final mSpectralInversion:I

.field private final mSymbolRate:I


# direct methods
.method private constructor <init>(IIJIIII)V
    .registers 9

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(I)V

    iput p2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mModulation:I

    iput-wide p3, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mInnerFec:J

    iput p5, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mSymbolRate:I

    iput p6, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mOuterFec:I

    iput p7, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mAnnex:I

    iput p8, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mSpectralInversion:I

    return-void
.end method

.method synthetic constructor <init>(IIJIIIILandroid/media/tv/tuner/frontend/DvbcFrontendSettings$1;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;-><init>(IIJIIII)V

    return-void
.end method

.method public static builder()Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2

    new-instance v0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$1;)V

    return-object v0
.end method


# virtual methods
.method public getAnnex()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mAnnex:I

    return v0
.end method

.method public getInnerFec()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mInnerFec:J

    return-wide v0
.end method

.method public getModulation()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mModulation:I

    return v0
.end method

.method public getOuterFec()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mOuterFec:I

    return v0
.end method

.method public getSpectralInversion()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mSpectralInversion:I

    return v0
.end method

.method public getSymbolRate()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;->mSymbolRate:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method
