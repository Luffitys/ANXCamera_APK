.class public final Landroid/location/GnssCapabilities;
.super Ljava/lang/Object;
.source "GnssCapabilities.java"


# static fields
.field public static final ANTENNA_INFO:J = 0x200L

.field public static final GEOFENCING:J = 0x4L

.field public static final INVALID_CAPABILITIES:J = -0x1L

.field public static final LOW_POWER_MODE:J = 0x1L

.field public static final MEASUREMENTS:J = 0x8L

.field public static final MEASUREMENT_CORRECTIONS:J = 0x20L

.field public static final MEASUREMENT_CORRECTIONS_EXCESS_PATH_LENGTH:J = 0x80L

.field public static final MEASUREMENT_CORRECTIONS_LOS_SATS:J = 0x40L

.field public static final MEASUREMENT_CORRECTIONS_REFLECTING_PLANE:J = 0x100L

.field public static final NAV_MESSAGES:J = 0x10L

.field public static final SATELLITE_BLACKLIST:J = 0x2L


# instance fields
.field private final mGnssCapabilities:J


# direct methods
.method private constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/location/GnssCapabilities;->mGnssCapabilities:J

    return-void
.end method

.method private hasCapability(J)Z
    .registers 5

    iget-wide v0, p0, Landroid/location/GnssCapabilities;->mGnssCapabilities:J

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static of(J)Landroid/location/GnssCapabilities;
    .registers 3

    new-instance v0, Landroid/location/GnssCapabilities;

    invoke-direct {v0, p0, p1}, Landroid/location/GnssCapabilities;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public hasGeofencing()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasGnssAntennaInfo()Z
    .registers 3

    const-wide/16 v0, 0x200

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasLowPowerMode()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasMeasurementCorrections()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-wide/16 v0, 0x20

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasMeasurementCorrectionsExcessPathLength()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-wide/16 v0, 0x80

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasMeasurementCorrectionsLosSats()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasMeasurementCorrectionsReflectingPane()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-wide/16 v0, 0x100

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasMeasurements()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasNavMessages()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasSatelliteBlacklist()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/location/GnssCapabilities;->hasCapability(J)Z

    move-result v0

    return v0
.end method
