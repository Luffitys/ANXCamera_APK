.class public final Landroid/hardware/radio/V1_4/CellInfo$Info$hidl_discriminator;
.super Ljava/lang/Object;
.source "CellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_4/CellInfo$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final cdma:B = 0x1t

.field public static final gsm:B = 0x0t

.field public static final lte:B = 0x4t

.field public static final nr:B = 0x5t

.field public static final tdscdma:B = 0x3t

.field public static final wcdma:B = 0x2t


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getName(B)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p0, v0, :cond_18

    const/4 v0, 0x5

    if-eq p0, v0, :cond_14

    const-string v0, "Unknown"

    return-object v0

    :cond_14
    const-string/jumbo v0, "nr"

    return-object v0

    :cond_18
    const-string v0, "lte"

    return-object v0

    :cond_1b
    const-string/jumbo v0, "tdscdma"

    return-object v0

    :cond_1f
    const-string/jumbo v0, "wcdma"

    return-object v0

    :cond_23
    const-string v0, "cdma"

    return-object v0

    :cond_26
    const-string v0, "gsm"

    return-object v0
.end method
