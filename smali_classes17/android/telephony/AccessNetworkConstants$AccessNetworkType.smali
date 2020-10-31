.class public final Landroid/telephony/AccessNetworkConstants$AccessNetworkType;
.super Ljava/lang/Object;
.source "AccessNetworkConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/AccessNetworkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessNetworkType"
.end annotation


# static fields
.field public static final CDMA2000:I = 0x4

.field public static final EUTRAN:I = 0x3

.field public static final GERAN:I = 0x1

.field public static final IWLAN:I = 0x5

.field public static final NGRAN:I = 0x6

.field public static final UNKNOWN:I = 0x0

.field public static final UTRAN:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertRanToAnt(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_12

    const/4 v1, 0x5

    if-eq p0, v1, :cond_11

    const/4 v0, 0x0

    return v0

    :cond_11
    return v0

    :cond_12
    const/4 v0, 0x6

    return v0

    :cond_14
    return v0

    :cond_15
    return v0

    :cond_16
    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1e

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string v0, "NGRAN"

    return-object v0

    :pswitch_b
    const-string v0, "IWLAN"

    return-object v0

    :pswitch_e
    const-string v0, "CDMA2000"

    return-object v0

    :pswitch_11
    const-string v0, "EUTRAN"

    return-object v0

    :pswitch_14
    const-string v0, "UTRAN"

    return-object v0

    :pswitch_17
    const-string v0, "GERAN"

    return-object v0

    :pswitch_1a
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
