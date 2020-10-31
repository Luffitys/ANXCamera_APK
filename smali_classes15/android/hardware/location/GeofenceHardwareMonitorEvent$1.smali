.class Landroid/hardware/location/GeofenceHardwareMonitorEvent$1;
.super Ljava/lang/Object;
.source "GeofenceHardwareMonitorEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareMonitorEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/location/GeofenceHardwareMonitorEvent;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/GeofenceHardwareMonitorEvent;
    .registers 8

    const-class v0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    new-instance v5, Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;-><init>(IIILandroid/location/Location;)V

    return-object v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/location/GeofenceHardwareMonitorEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/location/GeofenceHardwareMonitorEvent;
    .registers 3

    new-array v0, p1, [Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/location/GeofenceHardwareMonitorEvent$1;->newArray(I)[Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    move-result-object p1

    return-object p1
.end method
