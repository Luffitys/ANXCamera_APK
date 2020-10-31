.class public final Landroid/location/GpsStatus;
.super Ljava/lang/Object;
.source "GpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsStatus$NmeaListener;,
        Landroid/location/GpsStatus$Listener;,
        Landroid/location/GpsStatus$SatelliteIterator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BEIDOU_SVID_OFFSET:I = 0xc8

.field private static final GLONASS_SVID_OFFSET:I = 0x40

.field public static final GPS_EVENT_FIRST_FIX:I = 0x3

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field public static final GPS_EVENT_STARTED:I = 0x1

.field public static final GPS_EVENT_STOPPED:I = 0x2

.field private static final MAX_SATELLITES:I = 0xff

.field private static final SBAS_SVID_OFFSET:I = -0x57


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private final mSatellites:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeToFirstFix:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    new-instance v0, Landroid/location/-$$Lambda$GpsStatus$RTSonBp9m0T0NWA3SCfYgWf1mTo;

    invoke-direct {v0, p0}, Landroid/location/-$$Lambda$GpsStatus$RTSonBp9m0T0NWA3SCfYgWf1mTo;-><init>(Landroid/location/GpsStatus;)V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-void
.end method

.method static synthetic access$000(Landroid/location/GpsStatus;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static create(Landroid/location/GnssStatus;I)Landroid/location/GpsStatus;
    .registers 3

    new-instance v0, Landroid/location/GpsStatus;

    invoke-direct {v0}, Landroid/location/GpsStatus;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/location/GpsStatus;->setStatus(Landroid/location/GnssStatus;I)V

    return-object v0
.end method

.method static createEmpty()Landroid/location/GpsStatus;
    .registers 1

    new-instance v0, Landroid/location/GpsStatus;

    invoke-direct {v0}, Landroid/location/GpsStatus;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getMaxSatellites()I
    .registers 2

    iget-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getSatellites()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getTimeToFirstFix()I
    .registers 2

    iget v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method public synthetic lambda$new$0$GpsStatus()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Landroid/location/GpsStatus$SatelliteIterator;

    invoke-direct {v0, p0}, Landroid/location/GpsStatus$SatelliteIterator;-><init>(Landroid/location/GpsStatus;)V

    return-object v0
.end method

.method setStatus(Landroid/location/GnssStatus;I)V
    .registers 9

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/location/GpsSatellite;->mValid:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    iput p2, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v1

    if-ge v0, v1, :cond_86

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2f

    add-int/lit8 v2, v2, 0x40

    goto :goto_41

    :cond_2f
    const/4 v3, 0x5

    if-ne v1, v3, :cond_35

    add-int/lit16 v2, v2, 0xc8

    goto :goto_41

    :cond_35
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3b

    add-int/lit8 v2, v2, -0x57

    goto :goto_41

    :cond_3b
    if-eq v1, v4, :cond_41

    const/4 v3, 0x4

    if-eq v1, v3, :cond_41

    goto :goto_83

    :cond_41
    :goto_41
    if-lez v2, :cond_83

    const/16 v3, 0xff

    if-le v2, v3, :cond_48

    goto :goto_83

    :cond_48
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    if-nez v3, :cond_5d

    new-instance v5, Landroid/location/GpsSatellite;

    invoke-direct {v5, v2}, Landroid/location/GpsSatellite;-><init>(I)V

    move-object v3, v5

    iget-object v5, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5d
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mValid:Z

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v4

    iput v4, v3, Landroid/location/GpsSatellite;->mSnr:F

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    move-result v4

    iput v4, v3, Landroid/location/GpsSatellite;->mElevation:F

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    move-result v4

    iput v4, v3, Landroid/location/GpsSatellite;->mAzimuth:F

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->hasEphemerisData(I)Z

    move-result v4

    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->hasAlmanacData(I)Z

    move-result v4

    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v4

    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mUsedInFix:Z

    :cond_83
    :goto_83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_86
    return-void
.end method
