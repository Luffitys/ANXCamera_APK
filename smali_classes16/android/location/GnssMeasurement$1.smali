.class Landroid/location/GnssMeasurement$1;
.super Ljava/lang/Object;
.source "GnssMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssMeasurement;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurement;
    .registers 5

    new-instance v0, Landroid/location/GnssMeasurement;

    invoke-direct {v0}, Landroid/location/GnssMeasurement;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/location/GnssMeasurement;->mFlags:I
    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->access$002(Landroid/location/GnssMeasurement;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/location/GnssMeasurement;->mSvid:I
    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->access$102(Landroid/location/GnssMeasurement;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/location/GnssMeasurement;->mConstellationType:I
    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->access$202(Landroid/location/GnssMeasurement;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->access$302(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/location/GnssMeasurement;->mState:I
    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->access$402(Landroid/location/GnssMeasurement;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    # setter for: Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J
    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->access$502(Landroid/location/GnssMeasurement;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    # setter for: Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J
    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->access$602(Landroid/location/GnssMeasurement;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssMeasurement;->mCn0DbHz:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->access$702(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->access$802(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->access$902(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I
    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->access$1002(Landroid/location/GnssMeasurement;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->access$1102(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->access$1202(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    # setter for: Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F
    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->access$1302(Landroid/location/GnssMeasurement;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    # setter for: Landroid/location/GnssMeasurement;->mCarrierCycles:J
    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->access$1402(Landroid/location/GnssMeasurement;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssMeasurement;->mCarrierPhase:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->access$1502(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->access$1602(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/location/GnssMeasurement;->mMultipathIndicator:I
    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->access$1702(Landroid/location/GnssMeasurement;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssMeasurement;->mSnrInDb:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->access$1802(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->access$1902(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/location/GnssMeasurement;->mCodeType:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->access$2002(Landroid/location/GnssMeasurement;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssMeasurement;->mBasebandCn0DbHz:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->access$2102(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssMeasurement;->mFullInterSignalBiasNanos:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->access$2202(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssMeasurement;->mFullInterSignalBiasUncertaintyNanos:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->access$2302(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasNanos:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->access$2402(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    # setter for: Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasUncertaintyNanos:D
    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->access$2502(Landroid/location/GnssMeasurement;D)D

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurement;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/GnssMeasurement;
    .registers 3

    new-array v0, p1, [Landroid/location/GnssMeasurement;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurement$1;->newArray(I)[Landroid/location/GnssMeasurement;

    move-result-object p1

    return-object p1
.end method
