.class Landroid/location/GnssStatus$GnssSvInfo;
.super Ljava/lang/Object;
.source "GnssStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssSvInfo"
.end annotation


# instance fields
.field private final mAzimuth:F

.field private final mBasebandCn0DbHz:F

.field private final mCarrierFrequency:F

.field private final mCn0DbHz:F

.field private final mElevation:F

.field private final mSvidWithFlags:I


# direct methods
.method private constructor <init>(IIFFFZZZZFZF)V
    .registers 19

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    shl-int/lit8 v1, p2, 0xc

    and-int/lit8 v2, p1, 0xf

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    or-int/2addr v1, p6

    const/4 v2, 0x0

    if-eqz p7, :cond_12

    const/4 v4, 0x2

    goto :goto_13

    :cond_12
    move v4, v2

    :goto_13
    or-int/2addr v1, v4

    if-eqz p8, :cond_18

    const/4 v4, 0x4

    goto :goto_19

    :cond_18
    move v4, v2

    :goto_19
    or-int/2addr v1, v4

    if-eqz p9, :cond_1d

    goto :goto_1e

    :cond_1d
    move v3, v2

    :goto_1e
    or-int/2addr v1, v3

    if-eqz p11, :cond_23

    const/16 v2, 0x10

    :cond_23
    or-int/2addr v1, v2

    iput v1, v0, Landroid/location/GnssStatus$GnssSvInfo;->mSvidWithFlags:I

    move v1, p3

    iput v1, v0, Landroid/location/GnssStatus$GnssSvInfo;->mCn0DbHz:F

    move v2, p4

    iput v2, v0, Landroid/location/GnssStatus$GnssSvInfo;->mElevation:F

    move v3, p5

    iput v3, v0, Landroid/location/GnssStatus$GnssSvInfo;->mAzimuth:F

    const/4 v4, 0x0

    if-eqz p9, :cond_35

    move/from16 v5, p10

    goto :goto_36

    :cond_35
    move v5, v4

    :goto_36
    iput v5, v0, Landroid/location/GnssStatus$GnssSvInfo;->mCarrierFrequency:F

    if-eqz p11, :cond_3c

    move/from16 v4, p12

    :cond_3c
    iput v4, v0, Landroid/location/GnssStatus$GnssSvInfo;->mBasebandCn0DbHz:F

    return-void
.end method

.method synthetic constructor <init>(IIFFFZZZZFZFLandroid/location/GnssStatus$1;)V
    .registers 14

    invoke-direct/range {p0 .. p12}, Landroid/location/GnssStatus$GnssSvInfo;-><init>(IIFFFZZZZFZF)V

    return-void
.end method

.method static synthetic access$100(Landroid/location/GnssStatus$GnssSvInfo;)I
    .registers 2

    iget v0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mSvidWithFlags:I

    return v0
.end method

.method static synthetic access$200(Landroid/location/GnssStatus$GnssSvInfo;)F
    .registers 2

    iget v0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mCn0DbHz:F

    return v0
.end method

.method static synthetic access$300(Landroid/location/GnssStatus$GnssSvInfo;)F
    .registers 2

    iget v0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mElevation:F

    return v0
.end method

.method static synthetic access$400(Landroid/location/GnssStatus$GnssSvInfo;)F
    .registers 2

    iget v0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mAzimuth:F

    return v0
.end method

.method static synthetic access$500(Landroid/location/GnssStatus$GnssSvInfo;)F
    .registers 2

    iget v0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mCarrierFrequency:F

    return v0
.end method

.method static synthetic access$600(Landroid/location/GnssStatus$GnssSvInfo;)F
    .registers 2

    iget v0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mBasebandCn0DbHz:F

    return v0
.end method
