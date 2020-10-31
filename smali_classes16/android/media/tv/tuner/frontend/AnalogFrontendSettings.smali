.class public Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;
.source "AnalogFrontendSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$SifStandard;,
        Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$SignalType;
    }
.end annotation


# static fields
.field public static final SIF_AUTO:I = 0x1

.field public static final SIF_BG:I = 0x2

.field public static final SIF_BG_A2:I = 0x4

.field public static final SIF_BG_NICAM:I = 0x8

.field public static final SIF_DK:I = 0x20

.field public static final SIF_DK1_A2:I = 0x40

.field public static final SIF_DK2_A2:I = 0x80

.field public static final SIF_DK3_A2:I = 0x100

.field public static final SIF_DK_NICAM:I = 0x200

.field public static final SIF_I:I = 0x10

.field public static final SIF_I_NICAM:I = 0x8000

.field public static final SIF_L:I = 0x400

.field public static final SIF_L_NICAM:I = 0x10000

.field public static final SIF_L_PRIME:I = 0x20000

.field public static final SIF_M:I = 0x800

.field public static final SIF_M_A2:I = 0x2000

.field public static final SIF_M_BTSC:I = 0x1000

.field public static final SIF_M_EIAJ:I = 0x4000

.field public static final SIF_UNDEFINED:I = 0x0

.field public static final SIGNAL_TYPE_AUTO:I = 0x1

.field public static final SIGNAL_TYPE_NTSC:I = 0x20

.field public static final SIGNAL_TYPE_NTSC_443:I = 0x40

.field public static final SIGNAL_TYPE_PAL:I = 0x2

.field public static final SIGNAL_TYPE_PAL_60:I = 0x10

.field public static final SIGNAL_TYPE_PAL_M:I = 0x4

.field public static final SIGNAL_TYPE_PAL_N:I = 0x8

.field public static final SIGNAL_TYPE_SECAM:I = 0x80

.field public static final SIGNAL_TYPE_UNDEFINED:I


# instance fields
.field private final mSifStandard:I

.field private final mSignalType:I


# direct methods
.method private constructor <init>(III)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(I)V

    iput p2, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;->mSignalType:I

    iput p3, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;->mSifStandard:I

    return-void
.end method

.method synthetic constructor <init>(IIILandroid/media/tv/tuner/frontend/AnalogFrontendSettings$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;-><init>(III)V

    return-void
.end method

.method public static builder()Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;
    .registers 2

    new-instance v0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$1;)V

    return-object v0
.end method


# virtual methods
.method public getSifStandard()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;->mSifStandard:I

    return v0
.end method

.method public getSignalType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;->mSignalType:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
