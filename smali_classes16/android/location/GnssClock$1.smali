.class Landroid/location/GnssClock$1;
.super Ljava/lang/Object;
.source "GnssClock.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssClock;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssClock;
    .registers 5

    new-instance v0, Landroid/location/GnssClock;

    invoke-direct {v0}, Landroid/location/GnssClock;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/location/GnssClock;->mFlags:I
    invoke-static {v0, v1}, Landroid/location/GnssClock;->access$002(Landroid/location/GnssClock;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/location/GnssClock;->mLeapSecond:I
    invoke-static {v0, v1}, Landroid/location/GnssClock;->access$102(Landroid/location/GnssClock;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    # setter for: Landroid/location/GnssClock;->mTimeNanos:J
    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->access$202(Landroid/location/GnssClock;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssClock;->mTimeUncertaintyNanos:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->access$302(Landroid/location/GnssClock;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    # setter for: Landroid/location/GnssClock;->mFullBiasNanos:J
    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->access$402(Landroid/location/GnssClock;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssClock;->mBiasNanos:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->access$502(Landroid/location/GnssClock;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssClock;->mBiasUncertaintyNanos:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->access$602(Landroid/location/GnssClock;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssClock;->mDriftNanosPerSecond:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->access$702(Landroid/location/GnssClock;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->access$802(Landroid/location/GnssClock;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I
    invoke-static {v0, v1}, Landroid/location/GnssClock;->access$902(Landroid/location/GnssClock;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    # setter for: Landroid/location/GnssClock;->mElapsedRealtimeNanos:J
    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->access$1002(Landroid/location/GnssClock;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssClock;->mElapsedRealtimeUncertaintyNanos:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->access$1102(Landroid/location/GnssClock;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/location/GnssClock;->mReferenceConstellationTypeForIsb:I
    invoke-static {v0, v1}, Landroid/location/GnssClock;->access$1202(Landroid/location/GnssClock;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssClock;->mReferenceCarrierFrequencyHzForIsb:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssClock;->access$1302(Landroid/location/GnssClock;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/location/GnssClock;->mReferenceCodeTypeForIsb:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/location/GnssClock;->access$1402(Landroid/location/GnssClock;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GnssClock$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssClock;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/GnssClock;
    .registers 3

    new-array v0, p1, [Landroid/location/GnssClock;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GnssClock$1;->newArray(I)[Landroid/location/GnssClock;

    move-result-object p1

    return-object p1
.end method
