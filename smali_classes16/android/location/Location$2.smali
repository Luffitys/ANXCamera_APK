.class Landroid/location/Location$2;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/Location;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Landroid/location/Location;->mTime:J
    invoke-static {v1, v2, v3}, Landroid/location/Location;->access$802(Landroid/location/Location;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Landroid/location/Location;->mElapsedRealtimeNanos:J
    invoke-static {v1, v2, v3}, Landroid/location/Location;->access$902(Landroid/location/Location;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/Location;->mElapsedRealtimeUncertaintyNanos:D
    invoke-static {v1, v2, v3}, Landroid/location/Location;->access$1002(Landroid/location/Location;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    # setter for: Landroid/location/Location;->mFieldsMask:I
    invoke-static {v1, v2}, Landroid/location/Location;->access$1102(Landroid/location/Location;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/Location;->mLatitude:D
    invoke-static {v1, v2, v3}, Landroid/location/Location;->access$1202(Landroid/location/Location;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/Location;->mLongitude:D
    invoke-static {v1, v2, v3}, Landroid/location/Location;->access$1302(Landroid/location/Location;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/Location;->mAltitude:D
    invoke-static {v1, v2, v3}, Landroid/location/Location;->access$1402(Landroid/location/Location;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    # setter for: Landroid/location/Location;->mSpeed:F
    invoke-static {v1, v2}, Landroid/location/Location;->access$1502(Landroid/location/Location;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    # setter for: Landroid/location/Location;->mBearing:F
    invoke-static {v1, v2}, Landroid/location/Location;->access$1602(Landroid/location/Location;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    # setter for: Landroid/location/Location;->mHorizontalAccuracyMeters:F
    invoke-static {v1, v2}, Landroid/location/Location;->access$1702(Landroid/location/Location;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    # setter for: Landroid/location/Location;->mVerticalAccuracyMeters:F
    invoke-static {v1, v2}, Landroid/location/Location;->access$1802(Landroid/location/Location;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    # setter for: Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F
    invoke-static {v1, v2}, Landroid/location/Location;->access$1902(Landroid/location/Location;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    # setter for: Landroid/location/Location;->mBearingAccuracyDegrees:F
    invoke-static {v1, v2}, Landroid/location/Location;->access$2002(Landroid/location/Location;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v2

    # setter for: Landroid/location/Location;->mExtras:Landroid/os/Bundle;
    invoke-static {v1, v2}, Landroid/location/Location;->access$2102(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/Location$2;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/Location;
    .registers 3

    new-array v0, p1, [Landroid/location/Location;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/Location$2;->newArray(I)[Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method
