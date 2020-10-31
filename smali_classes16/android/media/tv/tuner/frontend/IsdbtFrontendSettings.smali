.class public Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;
.source "IsdbtFrontendSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Bandwidth;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Mode;,
        Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Modulation;
    }
.end annotation


# static fields
.field public static final BANDWIDTH_6MHZ:I = 0x8

.field public static final BANDWIDTH_7MHZ:I = 0x4

.field public static final BANDWIDTH_8MHZ:I = 0x2

.field public static final BANDWIDTH_AUTO:I = 0x1

.field public static final BANDWIDTH_UNDEFINED:I = 0x0

.field public static final MODE_1:I = 0x2

.field public static final MODE_2:I = 0x4

.field public static final MODE_3:I = 0x8

.field public static final MODE_AUTO:I = 0x1

.field public static final MODE_UNDEFINED:I = 0x0

.field public static final MODULATION_AUTO:I = 0x1

.field public static final MODULATION_MOD_16QAM:I = 0x8

.field public static final MODULATION_MOD_64QAM:I = 0x10

.field public static final MODULATION_MOD_DQPSK:I = 0x2

.field public static final MODULATION_MOD_QPSK:I = 0x4

.field public static final MODULATION_UNDEFINED:I


# instance fields
.field private final mBandwidth:I

.field private final mCodeRate:I

.field private final mGuardInterval:I

.field private final mMode:I

.field private final mModulation:I

.field private final mServiceAreaId:I


# direct methods
.method private constructor <init>(IIIIIII)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(I)V

    iput p2, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mModulation:I

    iput p3, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mBandwidth:I

    iput p4, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mMode:I

    iput p5, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mCodeRate:I

    iput p6, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mGuardInterval:I

    iput p7, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mServiceAreaId:I

    return-void
.end method

.method synthetic constructor <init>(IIIIIIILandroid/media/tv/tuner/frontend/IsdbtFrontendSettings$1;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;-><init>(IIIIIII)V

    return-void
.end method

.method public static builder()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 2

    new-instance v0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$1;)V

    return-object v0
.end method


# virtual methods
.method public getBandwidth()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mBandwidth:I

    return v0
.end method

.method public getCodeRate()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mCodeRate:I

    return v0
.end method

.method public getGuardInterval()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mGuardInterval:I

    return v0
.end method

.method public getMode()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mMode:I

    return v0
.end method

.method public getModulation()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mModulation:I

    return v0
.end method

.method public getServiceAreaId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;->mServiceAreaId:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method
