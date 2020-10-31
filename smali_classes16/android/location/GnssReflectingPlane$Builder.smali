.class public final Landroid/location/GnssReflectingPlane$Builder;
.super Ljava/lang/Object;
.source "GnssReflectingPlane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssReflectingPlane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAltitudeMeters:D

.field private mAzimuthDegrees:D

.field private mLatitudeDegrees:D

.field private mLongitudeDegrees:D


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/location/GnssReflectingPlane$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssReflectingPlane$Builder;->mLatitudeDegrees:D

    return-wide v0
.end method

.method static synthetic access$100(Landroid/location/GnssReflectingPlane$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssReflectingPlane$Builder;->mLongitudeDegrees:D

    return-wide v0
.end method

.method static synthetic access$200(Landroid/location/GnssReflectingPlane$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssReflectingPlane$Builder;->mAltitudeMeters:D

    return-wide v0
.end method

.method static synthetic access$300(Landroid/location/GnssReflectingPlane$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssReflectingPlane$Builder;->mAzimuthDegrees:D

    return-wide v0
.end method


# virtual methods
.method public build()Landroid/location/GnssReflectingPlane;
    .registers 3

    new-instance v0, Landroid/location/GnssReflectingPlane;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GnssReflectingPlane;-><init>(Landroid/location/GnssReflectingPlane$Builder;Landroid/location/GnssReflectingPlane$1;)V

    return-object v0
.end method

.method public setAltitudeMeters(D)Landroid/location/GnssReflectingPlane$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssReflectingPlane$Builder;->mAltitudeMeters:D

    return-object p0
.end method

.method public setAzimuthDegrees(D)Landroid/location/GnssReflectingPlane$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssReflectingPlane$Builder;->mAzimuthDegrees:D

    return-object p0
.end method

.method public setLatitudeDegrees(D)Landroid/location/GnssReflectingPlane$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssReflectingPlane$Builder;->mLatitudeDegrees:D

    return-object p0
.end method

.method public setLongitudeDegrees(D)Landroid/location/GnssReflectingPlane$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssReflectingPlane$Builder;->mLongitudeDegrees:D

    return-object p0
.end method
