.class public final Landroid/telephony/MiuiCellSignalStrengthCdma;
.super Ljava/lang/Object;
.source "MiuiCellSignalStrengthCdma.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MiuiCellSignalStrengthCdma"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaLevel(II)I
    .registers 3

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_29

    const/4 v0, -0x1

    if-ne p0, v0, :cond_9

    goto :goto_29

    :cond_9
    const/16 v0, -0x5a

    if-lt p0, v0, :cond_f

    const/4 v0, 0x5

    goto :goto_2a

    :cond_f
    const/16 v0, -0x5d

    if-lt p0, v0, :cond_15

    const/4 v0, 0x4

    goto :goto_2a

    :cond_15
    const/16 v0, -0x61

    if-lt p0, v0, :cond_1b

    const/4 v0, 0x3

    goto :goto_2a

    :cond_1b
    const/16 v0, -0x65

    if-lt p0, v0, :cond_21

    const/4 v0, 0x2

    goto :goto_2a

    :cond_21
    const/16 v0, -0x6d

    if-lt p0, v0, :cond_27

    const/4 v0, 0x1

    goto :goto_2a

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x0

    :goto_2a
    return v0
.end method

.method public static getEvdoLevel(III)I
    .registers 4

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_29

    const/4 v0, -0x1

    if-ne p0, v0, :cond_9

    goto :goto_29

    :cond_9
    const/16 v0, -0x5a

    if-lt p0, v0, :cond_f

    const/4 v0, 0x5

    goto :goto_2a

    :cond_f
    const/16 v0, -0x5d

    if-lt p0, v0, :cond_15

    const/4 v0, 0x4

    goto :goto_2a

    :cond_15
    const/16 v0, -0x61

    if-lt p0, v0, :cond_1b

    const/4 v0, 0x3

    goto :goto_2a

    :cond_1b
    const/16 v0, -0x65

    if-lt p0, v0, :cond_21

    const/4 v0, 0x2

    goto :goto_2a

    :cond_21
    const/16 v0, -0x6d

    if-lt p0, v0, :cond_27

    const/4 v0, 0x1

    goto :goto_2a

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x0

    :goto_2a
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "MiuiCellSignalStrengthCdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;IIIII)I
    .registers 11

    const/4 v0, 0x0

    invoke-static {p2, p3}, Landroid/telephony/MiuiCellSignalStrengthCdma;->getCdmaLevel(II)I

    move-result v1

    invoke-static {p4, p5, p6}, Landroid/telephony/MiuiCellSignalStrengthCdma;->getEvdoLevel(III)I

    move-result v2

    if-nez v2, :cond_10

    invoke-static {p2, p3}, Landroid/telephony/MiuiCellSignalStrengthCdma;->getCdmaLevel(II)I

    move-result v0

    goto :goto_1d

    :cond_10
    if-nez v1, :cond_17

    invoke-static {p4, p5, p6}, Landroid/telephony/MiuiCellSignalStrengthCdma;->getEvdoLevel(III)I

    move-result v0

    goto :goto_1d

    :cond_17
    if-ge v1, v2, :cond_1b

    move v3, v1

    goto :goto_1c

    :cond_1b
    move v3, v2

    :goto_1c
    move v0, v3

    :goto_1d
    return v0
.end method
