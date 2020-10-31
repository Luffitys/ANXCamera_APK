.class public final Landroid/hardware/radio/V1_5/CellIdentity$hidl_discriminator;
.super Ljava/lang/Object;
.source "CellIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/CellIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final cdma:B = 0x4t

.field public static final gsm:B = 0x1t

.field public static final lte:B = 0x5t

.field public static final noinit:B = 0x0t

.field public static final nr:B = 0x6t

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

    packed-switch p0, :pswitch_data_20

    const-string v0, "Unknown"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "nr"

    return-object v0

    :pswitch_a
    const-string v0, "lte"

    return-object v0

    :pswitch_d
    const-string v0, "cdma"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "tdscdma"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "wcdma"

    return-object v0

    :pswitch_18
    const-string v0, "gsm"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "noinit"

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method
