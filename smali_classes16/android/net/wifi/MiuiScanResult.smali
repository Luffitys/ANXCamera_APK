.class public Landroid/net/wifi/MiuiScanResult;
.super Ljava/lang/Object;
.source "MiuiScanResult.java"


# static fields
.field private static final BAND0_2GHZ:I = 0x0

.field private static final BAND1_5GHZ:I = 0x1

.field private static final BAND2_5GHZ:I = 0x2

.field private static final BAND3_5GHZ:I = 0x3

.field private static final BAND4_5GHZ:I = 0x4

.field private static final BAND5_60GHZ:I = 0x5


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compensateSignalLevel(II)I
    .registers 6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1102000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1104001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_19

    return p0

    :cond_19
    invoke-static {p1}, Landroid/net/wifi/MiuiScanResult;->selectFrequencyToBand(I)I

    move-result v2

    if-gez v2, :cond_20

    return p0

    :cond_20
    aget v3, v0, v2

    add-int/2addr v3, p0

    return v3
.end method

.method private static selectFrequencyToBand(I)I
    .registers 2

    const/16 v0, 0x96c

    if-lt p0, v0, :cond_a

    const/16 v0, 0x9b4

    if-gt p0, v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/16 v0, 0x143c

    if-lt p0, v0, :cond_14

    const/16 v0, 0x1478

    if-gt p0, v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/16 v0, 0x148c

    if-lt p0, v0, :cond_1e

    const/16 v0, 0x14c8

    if-gt p0, v0, :cond_1e

    const/4 v0, 0x2

    return v0

    :cond_1e
    const/16 v0, 0x157c

    if-lt p0, v0, :cond_28

    const/16 v0, 0x1658

    if-gt p0, v0, :cond_28

    const/4 v0, 0x3

    return v0

    :cond_28
    const/16 v0, 0x1671

    if-lt p0, v0, :cond_32

    const/16 v0, 0x16c1

    if-gt p0, v0, :cond_32

    const/4 v0, 0x4

    return v0

    :cond_32
    const v0, 0xe3d0

    if-lt p0, v0, :cond_3e

    const v0, 0x11238

    if-gt p0, v0, :cond_3e

    const/4 v0, 0x5

    return v0

    :cond_3e
    const/4 v0, -0x1

    return v0
.end method
