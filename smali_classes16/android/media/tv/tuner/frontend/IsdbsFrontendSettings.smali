.class public Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;
.source "IsdbsFrontendSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Rolloff;,
        Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$CodeRate;,
        Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Modulation;,
        Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$StreamIdType;
    }
.end annotation


# static fields
.field public static final CODERATE_1_2:I = 0x2

.field public static final CODERATE_2_3:I = 0x4

.field public static final CODERATE_3_4:I = 0x8

.field public static final CODERATE_5_6:I = 0x10

.field public static final CODERATE_7_8:I = 0x20

.field public static final CODERATE_AUTO:I = 0x1

.field public static final CODERATE_UNDEFINED:I = 0x0

.field public static final MODULATION_AUTO:I = 0x1

.field public static final MODULATION_MOD_BPSK:I = 0x2

.field public static final MODULATION_MOD_QPSK:I = 0x4

.field public static final MODULATION_MOD_TC8PSK:I = 0x8

.field public static final MODULATION_UNDEFINED:I = 0x0

.field public static final ROLLOFF_0_35:I = 0x1

.field public static final ROLLOFF_UNDEFINED:I = 0x0

.field public static final STREAM_ID_TYPE_ID:I = 0x0

.field public static final STREAM_ID_TYPE_RELATIVE_NUMBER:I = 0x1


# instance fields
.field private final mCodeRate:I

.field private final mModulation:I

.field private final mRolloff:I

.field private final mStreamId:I

.field private final mStreamIdType:I

.field private final mSymbolRate:I


# direct methods
.method private constructor <init>(IIIIIII)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(I)V

    iput p2, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mStreamId:I

    iput p3, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mStreamIdType:I

    iput p4, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mModulation:I

    iput p5, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mCodeRate:I

    iput p6, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mSymbolRate:I

    iput p7, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mRolloff:I

    return-void
.end method

.method synthetic constructor <init>(IIIIIIILandroid/media/tv/tuner/frontend/IsdbsFrontendSettings$1;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;-><init>(IIIIIII)V

    return-void
.end method

.method public static builder()Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
    .registers 2

    new-instance v0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$1;)V

    return-object v0
.end method


# virtual methods
.method public getCodeRate()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mCodeRate:I

    return v0
.end method

.method public getModulation()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mModulation:I

    return v0
.end method

.method public getRolloff()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mRolloff:I

    return v0
.end method

.method public getStreamId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mStreamId:I

    return v0
.end method

.method public getStreamIdType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mStreamIdType:I

    return v0
.end method

.method public getSymbolRate()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mSymbolRate:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method
