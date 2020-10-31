.class public final Landroid/telephony/MiuiCellSignalStrengthTdscdma;
.super Ljava/lang/Object;
.source "MiuiCellSignalStrengthTdscdma.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MiuiCellSignalStrengthTdscdma"

.field private static final TDSCDMA_RSCP_EXCELLENT:I = -0x58

.field private static final TDSCDMA_RSCP_GOOD:I = -0x66

.field private static final TDSCDMA_RSCP_GREAT:I = -0x5f

.field private static final TDSCDMA_RSCP_MAX:I = -0x18

.field private static final TDSCDMA_RSCP_MODERATE:I = -0x6d

.field private static final TDSCDMA_RSCP_POOR:I = -0x78


# instance fields
.field private mBitErrorRate:I

.field private mRscp:I

.field private mRssi:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "MiuiCellSignalStrengthTdscdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;II)I
    .registers 6

    const/4 v0, 0x0

    const/16 v1, -0x18

    if-gt p3, v1, :cond_2b

    const v1, 0x7fffffff

    if-ne p3, v1, :cond_b

    goto :goto_2b

    :cond_b
    const/16 v1, -0x58

    if-lt p3, v1, :cond_11

    const/4 v0, 0x5

    goto :goto_2c

    :cond_11
    const/16 v1, -0x5f

    if-lt p3, v1, :cond_17

    const/4 v0, 0x4

    goto :goto_2c

    :cond_17
    const/16 v1, -0x66

    if-lt p3, v1, :cond_1d

    const/4 v0, 0x3

    goto :goto_2c

    :cond_1d
    const/16 v1, -0x6d

    if-lt p3, v1, :cond_23

    const/4 v0, 0x2

    goto :goto_2c

    :cond_23
    const/16 v1, -0x78

    if-lt p3, v1, :cond_29

    const/4 v0, 0x1

    goto :goto_2c

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    :goto_2c
    return v0
.end method
