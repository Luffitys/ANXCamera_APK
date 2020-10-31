.class Landroid/location/GnssSingleSatCorrection$1;
.super Ljava/lang/Object;
.source "GnssSingleSatCorrection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssSingleSatCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssSingleSatCorrection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssSingleSatCorrection;
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    new-instance v2, Landroid/location/GnssSingleSatCorrection$Builder;

    invoke-direct {v2}, Landroid/location/GnssSingleSatCorrection$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/location/GnssSingleSatCorrection$Builder;->setConstellationType(I)Landroid/location/GnssSingleSatCorrection$Builder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/location/GnssSingleSatCorrection$Builder;->setSatelliteId(I)Landroid/location/GnssSingleSatCorrection$Builder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/location/GnssSingleSatCorrection$Builder;->setCarrierFrequencyHz(F)Landroid/location/GnssSingleSatCorrection$Builder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/location/GnssSingleSatCorrection$Builder;->setProbabilityLineOfSight(F)Landroid/location/GnssSingleSatCorrection$Builder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/location/GnssSingleSatCorrection$Builder;->setExcessPathLengthMeters(F)Landroid/location/GnssSingleSatCorrection$Builder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/location/GnssSingleSatCorrection$Builder;->setExcessPathLengthUncertaintyMeters(F)Landroid/location/GnssSingleSatCorrection$Builder;

    move-result-object v2

    if-eqz v1, :cond_4d

    sget-object v3, Landroid/location/GnssReflectingPlane;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GnssReflectingPlane;

    invoke-virtual {v2, v3}, Landroid/location/GnssSingleSatCorrection$Builder;->setReflectingPlane(Landroid/location/GnssReflectingPlane;)Landroid/location/GnssSingleSatCorrection$Builder;

    :cond_4d
    invoke-virtual {v2}, Landroid/location/GnssSingleSatCorrection$Builder;->build()Landroid/location/GnssSingleSatCorrection;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GnssSingleSatCorrection$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssSingleSatCorrection;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/GnssSingleSatCorrection;
    .registers 3

    new-array v0, p1, [Landroid/location/GnssSingleSatCorrection;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GnssSingleSatCorrection$1;->newArray(I)[Landroid/location/GnssSingleSatCorrection;

    move-result-object p1

    return-object p1
.end method
