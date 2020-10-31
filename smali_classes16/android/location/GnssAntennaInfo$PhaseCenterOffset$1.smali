.class Landroid/location/GnssAntennaInfo$PhaseCenterOffset$1;
.super Ljava/lang/Object;
.source "GnssAntennaInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAntennaInfo$PhaseCenterOffset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssAntennaInfo$PhaseCenterOffset;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssAntennaInfo$PhaseCenterOffset;
    .registers 16

    new-instance v13, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v11

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;-><init>(DDDDDD)V

    return-object v13
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GnssAntennaInfo$PhaseCenterOffset$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/GnssAntennaInfo$PhaseCenterOffset;
    .registers 3

    new-array v0, p1, [Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GnssAntennaInfo$PhaseCenterOffset$1;->newArray(I)[Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    move-result-object p1

    return-object p1
.end method
