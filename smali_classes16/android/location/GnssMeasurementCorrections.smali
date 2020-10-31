.class public final Landroid/location/GnssMeasurementCorrections;
.super Ljava/lang/Object;
.source "GnssMeasurementCorrections.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssMeasurementCorrections$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssMeasurementCorrections;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAltitudeMeters:D

.field private final mEnvironmentBearingDegrees:F

.field private final mEnvironmentBearingUncertaintyDegrees:F

.field private final mHasEnvironmentBearing:Z

.field private final mHorizontalPositionUncertaintyMeters:D

.field private final mLatitudeDegrees:D

.field private final mLongitudeDegrees:D

.field private final mSingleSatCorrectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssSingleSatCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private final mToaGpsNanosecondsOfWeek:J

.field private final mVerticalPositionUncertaintyMeters:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GnssMeasurementCorrections$1;

    invoke-direct {v0}, Landroid/location/GnssMeasurementCorrections$1;-><init>()V

    sput-object v0, Landroid/location/GnssMeasurementCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/location/GnssMeasurementCorrections$Builder;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Landroid/location/GnssMeasurementCorrections$Builder;->mLatitudeDegrees:D
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->access$000(Landroid/location/GnssMeasurementCorrections$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mLatitudeDegrees:D

    # getter for: Landroid/location/GnssMeasurementCorrections$Builder;->mLongitudeDegrees:D
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->access$100(Landroid/location/GnssMeasurementCorrections$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mLongitudeDegrees:D

    # getter for: Landroid/location/GnssMeasurementCorrections$Builder;->mAltitudeMeters:D
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->access$200(Landroid/location/GnssMeasurementCorrections$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mAltitudeMeters:D

    # getter for: Landroid/location/GnssMeasurementCorrections$Builder;->mHorizontalPositionUncertaintyMeters:D
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->access$300(Landroid/location/GnssMeasurementCorrections$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mHorizontalPositionUncertaintyMeters:D

    # getter for: Landroid/location/GnssMeasurementCorrections$Builder;->mVerticalPositionUncertaintyMeters:D
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->access$400(Landroid/location/GnssMeasurementCorrections$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mVerticalPositionUncertaintyMeters:D

    # getter for: Landroid/location/GnssMeasurementCorrections$Builder;->mToaGpsNanosecondsOfWeek:J
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->access$500(Landroid/location/GnssMeasurementCorrections$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mToaGpsNanosecondsOfWeek:J

    # getter for: Landroid/location/GnssMeasurementCorrections$Builder;->mSingleSatCorrectionList:Ljava/util/List;
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->access$600(Landroid/location/GnssMeasurementCorrections$Builder;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_37

    move v3, v1

    goto :goto_38

    :cond_37
    move v3, v2

    :goto_38
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/location/GnssMeasurementCorrections;->mSingleSatCorrectionList:Ljava/util/List;

    # getter for: Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingIsSet:Z
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->access$700(Landroid/location/GnssMeasurementCorrections$Builder;)Z

    move-result v3

    if-eqz v3, :cond_53

    # getter for: Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingUncertaintyIsSet:Z
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->access$800(Landroid/location/GnssMeasurementCorrections$Builder;)Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_54

    :cond_53
    move v1, v2

    :goto_54
    iput-boolean v1, p0, Landroid/location/GnssMeasurementCorrections;->mHasEnvironmentBearing:Z

    # getter for: Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingDegrees:F
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->access$900(Landroid/location/GnssMeasurementCorrections$Builder;)F

    move-result v1

    iput v1, p0, Landroid/location/GnssMeasurementCorrections;->mEnvironmentBearingDegrees:F

    # getter for: Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingUncertaintyDegrees:F
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->access$1000(Landroid/location/GnssMeasurementCorrections$Builder;)F

    move-result v1

    iput v1, p0, Landroid/location/GnssMeasurementCorrections;->mEnvironmentBearingUncertaintyDegrees:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/GnssMeasurementCorrections$Builder;Landroid/location/GnssMeasurementCorrections$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GnssMeasurementCorrections;-><init>(Landroid/location/GnssMeasurementCorrections$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAltitudeMeters()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mAltitudeMeters:D

    return-wide v0
.end method

.method public getEnvironmentBearingDegrees()F
    .registers 2

    iget v0, p0, Landroid/location/GnssMeasurementCorrections;->mEnvironmentBearingDegrees:F

    return v0
.end method

.method public getEnvironmentBearingUncertaintyDegrees()F
    .registers 2

    iget v0, p0, Landroid/location/GnssMeasurementCorrections;->mEnvironmentBearingUncertaintyDegrees:F

    return v0
.end method

.method public getHorizontalPositionUncertaintyMeters()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mHorizontalPositionUncertaintyMeters:D

    return-wide v0
.end method

.method public getLatitudeDegrees()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mLatitudeDegrees:D

    return-wide v0
.end method

.method public getLongitudeDegrees()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mLongitudeDegrees:D

    return-wide v0
.end method

.method public getSingleSatelliteCorrectionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GnssSingleSatCorrection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/location/GnssMeasurementCorrections;->mSingleSatCorrectionList:Ljava/util/List;

    return-object v0
.end method

.method public getToaGpsNanosecondsOfWeek()J
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mToaGpsNanosecondsOfWeek:J

    return-wide v0
.end method

.method public getVerticalPositionUncertaintyMeters()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mVerticalPositionUncertaintyMeters:D

    return-wide v0
.end method

.method public hasEnvironmentBearing()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/GnssMeasurementCorrections;->mHasEnvironmentBearing:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    const-string v0, "   %-29s = %s\n"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GnssMeasurementCorrections:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "LatitudeDegrees = "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-wide v6, p0, Landroid/location/GnssMeasurementCorrections;->mLatitudeDegrees:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "   %-29s = %s\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "LongitudeDegrees = "

    aput-object v7, v3, v5

    iget-wide v7, p0, Landroid/location/GnssMeasurementCorrections;->mLongitudeDegrees:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "AltitudeMeters = "

    aput-object v7, v3, v5

    iget-wide v7, p0, Landroid/location/GnssMeasurementCorrections;->mAltitudeMeters:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "HorizontalPositionUncertaintyMeters = "

    aput-object v7, v3, v5

    iget-wide v7, p0, Landroid/location/GnssMeasurementCorrections;->mHorizontalPositionUncertaintyMeters:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "VerticalPositionUncertaintyMeters = "

    aput-object v7, v3, v5

    iget-wide v7, p0, Landroid/location/GnssMeasurementCorrections;->mVerticalPositionUncertaintyMeters:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "ToaGpsNanosecondsOfWeek = "

    aput-object v7, v3, v5

    iget-wide v7, p0, Landroid/location/GnssMeasurementCorrections;->mToaGpsNanosecondsOfWeek:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v7, "mSingleSatCorrectionList = "

    aput-object v7, v3, v5

    iget-object v7, p0, Landroid/location/GnssMeasurementCorrections;->mSingleSatCorrectionList:Ljava/util/List;

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "HasEnvironmentBearing = "

    aput-object v7, v3, v5

    iget-boolean v7, p0, Landroid/location/GnssMeasurementCorrections;->mHasEnvironmentBearing:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "EnvironmentBearingDegrees = "

    aput-object v7, v3, v5

    iget v7, p0, Landroid/location/GnssMeasurementCorrections;->mEnvironmentBearingDegrees:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "EnvironmentBearingUncertaintyDegrees = "

    aput-object v3, v2, v5

    iget v3, p0, Landroid/location/GnssMeasurementCorrections;->mEnvironmentBearingUncertaintyDegrees:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mLatitudeDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mLongitudeDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mAltitudeMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mHorizontalPositionUncertaintyMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mVerticalPositionUncertaintyMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mToaGpsNanosecondsOfWeek:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/location/GnssMeasurementCorrections;->mSingleSatCorrectionList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-boolean v0, p0, Landroid/location/GnssMeasurementCorrections;->mHasEnvironmentBearing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/location/GnssMeasurementCorrections;->mHasEnvironmentBearing:Z

    if-eqz v0, :cond_36

    iget v0, p0, Landroid/location/GnssMeasurementCorrections;->mEnvironmentBearingDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/location/GnssMeasurementCorrections;->mEnvironmentBearingUncertaintyDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_36
    return-void
.end method
