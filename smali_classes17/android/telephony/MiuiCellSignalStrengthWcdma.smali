.class public final Landroid/telephony/MiuiCellSignalStrengthWcdma;
.super Ljava/lang/Object;
.source "MiuiCellSignalStrengthWcdma.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MiuiCellSignalStrengthWcdma"

.field private static WCDMA_RSSI_EXCELLENT:I = 0x0

.field private static final WCDMA_RSSI_GOOD:I = -0x65

.field private static WCDMA_RSSI_GREAT:I = 0x0

.field private static final WCDMA_RSSI_MAX:I = -0x33

.field private static final WCDMA_RSSI_MIN:I = -0x71

.field private static final WCDMA_RSSI_MODERATE:I = -0x6b

.field private static final WCDMA_RSSI_POOR:I = -0x71


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, -0x59

    sput v0, Landroid/telephony/MiuiCellSignalStrengthWcdma;->WCDMA_RSSI_EXCELLENT:I

    const/16 v0, -0x5f

    sput v0, Landroid/telephony/MiuiCellSignalStrengthWcdma;->WCDMA_RSSI_GREAT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "MiuiCellSignalStrengthWcdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;I)I
    .registers 6

    invoke-static {}, Landroid/telephony/MiuiSignalStrength;->shouldOptimizeSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, -0x5d

    sput v0, Landroid/telephony/MiuiCellSignalStrengthWcdma;->WCDMA_RSSI_EXCELLENT:I

    const/16 v0, -0x61

    sput v0, Landroid/telephony/MiuiCellSignalStrengthWcdma;->WCDMA_RSSI_GREAT:I

    :cond_e
    const/4 v0, 0x0

    const/16 v1, -0x71

    if-le p2, v1, :cond_36

    const/16 v2, -0x33

    if-le p2, v2, :cond_18

    goto :goto_36

    :cond_18
    sget v2, Landroid/telephony/MiuiCellSignalStrengthWcdma;->WCDMA_RSSI_EXCELLENT:I

    if-lt p2, v2, :cond_1e

    const/4 v0, 0x5

    goto :goto_37

    :cond_1e
    sget v2, Landroid/telephony/MiuiCellSignalStrengthWcdma;->WCDMA_RSSI_GREAT:I

    if-lt p2, v2, :cond_24

    const/4 v0, 0x4

    goto :goto_37

    :cond_24
    const/16 v2, -0x65

    if-lt p2, v2, :cond_2a

    const/4 v0, 0x3

    goto :goto_37

    :cond_2a
    const/16 v2, -0x6b

    if-lt p2, v2, :cond_30

    const/4 v0, 0x2

    goto :goto_37

    :cond_30
    if-le p2, v1, :cond_34

    const/4 v0, 0x1

    goto :goto_37

    :cond_34
    const/4 v0, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v0, 0x0

    :goto_37
    return v0
.end method
