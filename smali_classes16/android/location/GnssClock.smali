.class public final Landroid/location/GnssClock;
.super Ljava/lang/Object;
.source "GnssClock.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssClock;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_BIAS:I = 0x8

.field private static final HAS_BIAS_UNCERTAINTY:I = 0x10

.field private static final HAS_DRIFT:I = 0x20

.field private static final HAS_DRIFT_UNCERTAINTY:I = 0x40

.field private static final HAS_ELAPSED_REALTIME_NANOS:I = 0x80

.field private static final HAS_ELAPSED_REALTIME_UNCERTAINTY_NANOS:I = 0x100

.field private static final HAS_FULL_BIAS:I = 0x4

.field private static final HAS_LEAP_SECOND:I = 0x1

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_REFERENCE_CARRIER_FREQUENCY_FOR_ISB:I = 0x400

.field private static final HAS_REFERENCE_CODE_TYPE_FOR_ISB:I = 0x800

.field private static final HAS_REFERENCE_CONSTELLATION_TYPE_FOR_ISB:I = 0x200

.field private static final HAS_TIME_UNCERTAINTY:I = 0x2


# instance fields
.field private mBiasNanos:D

.field private mBiasUncertaintyNanos:D

.field private mDriftNanosPerSecond:D

.field private mDriftUncertaintyNanosPerSecond:D

.field private mElapsedRealtimeNanos:J

.field private mElapsedRealtimeUncertaintyNanos:D

.field private mFlags:I

.field private mFullBiasNanos:J

.field private mHardwareClockDiscontinuityCount:I

.field private mLeapSecond:I

.field private mReferenceCarrierFrequencyHzForIsb:D

.field private mReferenceCodeTypeForIsb:Ljava/lang/String;

.field private mReferenceConstellationTypeForIsb:I

.field private mTimeNanos:J

.field private mTimeUncertaintyNanos:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GnssClock$1;

    invoke-direct {v0}, Landroid/location/GnssClock$1;-><init>()V

    sput-object v0, Landroid/location/GnssClock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/location/GnssClock;->initialize()V

    return-void
.end method

.method static synthetic access$002(Landroid/location/GnssClock;I)I
    .registers 2

    iput p1, p0, Landroid/location/GnssClock;->mFlags:I

    return p1
.end method

.method static synthetic access$1002(Landroid/location/GnssClock;J)J
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssClock;->mElapsedRealtimeNanos:J

    return-wide p1
.end method

.method static synthetic access$102(Landroid/location/GnssClock;I)I
    .registers 2

    iput p1, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return p1
.end method

.method static synthetic access$1102(Landroid/location/GnssClock;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssClock;->mElapsedRealtimeUncertaintyNanos:D

    return-wide p1
.end method

.method static synthetic access$1202(Landroid/location/GnssClock;I)I
    .registers 2

    iput p1, p0, Landroid/location/GnssClock;->mReferenceConstellationTypeForIsb:I

    return p1
.end method

.method static synthetic access$1302(Landroid/location/GnssClock;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssClock;->mReferenceCarrierFrequencyHzForIsb:D

    return-wide p1
.end method

.method static synthetic access$1402(Landroid/location/GnssClock;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Landroid/location/GnssClock;->mReferenceCodeTypeForIsb:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroid/location/GnssClock;J)J
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$302(Landroid/location/GnssClock;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-wide p1
.end method

.method static synthetic access$402(Landroid/location/GnssClock;J)J
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-wide p1
.end method

.method static synthetic access$502(Landroid/location/GnssClock;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-wide p1
.end method

.method static synthetic access$602(Landroid/location/GnssClock;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-wide p1
.end method

.method static synthetic access$702(Landroid/location/GnssClock;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-wide p1
.end method

.method static synthetic access$802(Landroid/location/GnssClock;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-wide p1
.end method

.method static synthetic access$902(Landroid/location/GnssClock;I)I
    .registers 2

    iput p1, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return p1
.end method

.method private initialize()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetLeapSecond()V

    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Landroid/location/GnssClock;->setTimeNanos(J)V

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetTimeUncertaintyNanos()V

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetFullBiasNanos()V

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetBiasNanos()V

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetBiasUncertaintyNanos()V

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetDriftNanosPerSecond()V

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetDriftUncertaintyNanosPerSecond()V

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/location/GnssClock;->setHardwareClockDiscontinuityCount(I)V

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetElapsedRealtimeNanos()V

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetElapsedRealtimeUncertaintyNanos()V

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetReferenceConstellationTypeForIsb()V

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetReferenceCarrierFrequencyHzForIsb()V

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetReferenceCodeTypeForIsb()V

    return-void
.end method

.method private isFlagSet(I)Z
    .registers 3

    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private resetFlag(I)V
    .registers 4

    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    return-void
.end method

.method private setFlag(I)V
    .registers 3

    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBiasNanos()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-wide v0
.end method

.method public getBiasUncertaintyNanos()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-wide v0
.end method

.method public getDriftNanosPerSecond()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-wide v0
.end method

.method public getDriftUncertaintyNanosPerSecond()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-wide v0
.end method

.method public getElapsedRealtimeNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssClock;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public getElapsedRealtimeUncertaintyNanos()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssClock;->mElapsedRealtimeUncertaintyNanos:D

    return-wide v0
.end method

.method public getFullBiasNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-wide v0
.end method

.method public getHardwareClockDiscontinuityCount()I
    .registers 2

    iget v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return v0
.end method

.method public getLeapSecond()I
    .registers 2

    iget v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return v0
.end method

.method public getReferenceCarrierFrequencyHzForIsb()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssClock;->mReferenceCarrierFrequencyHzForIsb:D

    return-wide v0
.end method

.method public getReferenceCodeTypeForIsb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/location/GnssClock;->mReferenceCodeTypeForIsb:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceConstellationTypeForIsb()I
    .registers 2

    iget v0, p0, Landroid/location/GnssClock;->mReferenceConstellationTypeForIsb:I

    return v0
.end method

.method public getTimeNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    return-wide v0
.end method

.method public getTimeUncertaintyNanos()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-wide v0
.end method

.method public hasBiasNanos()Z
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasBiasUncertaintyNanos()Z
    .registers 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasDriftNanosPerSecond()Z
    .registers 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasDriftUncertaintyNanosPerSecond()Z
    .registers 2

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasElapsedRealtimeNanos()Z
    .registers 2

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasElapsedRealtimeUncertaintyNanos()Z
    .registers 2

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasFullBiasNanos()Z
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasLeapSecond()Z
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasReferenceCarrierFrequencyHzForIsb()Z
    .registers 2

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasReferenceCodeTypeForIsb()Z
    .registers 2

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasReferenceConstellationTypeForIsb()Z
    .registers 2

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasTimeUncertaintyNanos()Z
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 1

    invoke-direct {p0}, Landroid/location/GnssClock;->initialize()V

    return-void
.end method

.method public resetBiasNanos()V
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    return-void
.end method

.method public resetBiasUncertaintyNanos()V
    .registers 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    return-void
.end method

.method public resetDriftNanosPerSecond()V
    .registers 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    return-void
.end method

.method public resetDriftUncertaintyNanosPerSecond()V
    .registers 2

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    return-void
.end method

.method public resetElapsedRealtimeNanos()V
    .registers 3

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/GnssClock;->mElapsedRealtimeNanos:J

    return-void
.end method

.method public resetElapsedRealtimeUncertaintyNanos()V
    .registers 2

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    return-void
.end method

.method public resetFullBiasNanos()V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-void
.end method

.method public resetLeapSecond()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return-void
.end method

.method public resetReferenceCarrierFrequencyHzForIsb()V
    .registers 2

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    return-void
.end method

.method public resetReferenceCodeTypeForIsb()V
    .registers 2

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Landroid/location/GnssClock;->mReferenceCodeTypeForIsb:Ljava/lang/String;

    return-void
.end method

.method public resetReferenceConstellationTypeForIsb()V
    .registers 2

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssClock;->mReferenceConstellationTypeForIsb:I

    return-void
.end method

.method public resetTimeUncertaintyNanos()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    return-void
.end method

.method public set(Landroid/location/GnssClock;)V
    .registers 4

    iget v0, p1, Landroid/location/GnssClock;->mFlags:I

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    iget v0, p1, Landroid/location/GnssClock;->mLeapSecond:I

    iput v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    iget-wide v0, p1, Landroid/location/GnssClock;->mTimeNanos:J

    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    iget-wide v0, p1, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    iget-wide v0, p1, Landroid/location/GnssClock;->mFullBiasNanos:J

    iput-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    iget-wide v0, p1, Landroid/location/GnssClock;->mBiasNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    iget-wide v0, p1, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    iget-wide v0, p1, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    iget-wide v0, p1, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    iget v0, p1, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    iput v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    iget-wide v0, p1, Landroid/location/GnssClock;->mElapsedRealtimeNanos:J

    iput-wide v0, p0, Landroid/location/GnssClock;->mElapsedRealtimeNanos:J

    iget-wide v0, p1, Landroid/location/GnssClock;->mElapsedRealtimeUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mElapsedRealtimeUncertaintyNanos:D

    iget v0, p1, Landroid/location/GnssClock;->mReferenceConstellationTypeForIsb:I

    iput v0, p0, Landroid/location/GnssClock;->mReferenceConstellationTypeForIsb:I

    iget-wide v0, p1, Landroid/location/GnssClock;->mReferenceCarrierFrequencyHzForIsb:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mReferenceCarrierFrequencyHzForIsb:D

    iget-object v0, p1, Landroid/location/GnssClock;->mReferenceCodeTypeForIsb:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/GnssClock;->mReferenceCodeTypeForIsb:Ljava/lang/String;

    return-void
.end method

.method public setBiasNanos(D)V
    .registers 4

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-void
.end method

.method public setBiasUncertaintyNanos(D)V
    .registers 4

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-void
.end method

.method public setDriftNanosPerSecond(D)V
    .registers 4

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-void
.end method

.method public setDriftUncertaintyNanosPerSecond(D)V
    .registers 4

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-void
.end method

.method public setElapsedRealtimeNanos(J)V
    .registers 4

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssClock;->mElapsedRealtimeNanos:J

    return-void
.end method

.method public setElapsedRealtimeUncertaintyNanos(D)V
    .registers 4

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssClock;->mElapsedRealtimeUncertaintyNanos:D

    return-void
.end method

.method public setFullBiasNanos(J)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-void
.end method

.method public setHardwareClockDiscontinuityCount(I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return-void
.end method

.method public setLeapSecond(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput p1, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return-void
.end method

.method public setReferenceCarrierFrequencyHzForIsb(D)V
    .registers 4

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssClock;->mReferenceCarrierFrequencyHzForIsb:D

    return-void
.end method

.method public setReferenceCodeTypeForIsb(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput-object p1, p0, Landroid/location/GnssClock;->mReferenceCodeTypeForIsb:Ljava/lang/String;

    return-void
.end method

.method public setReferenceConstellationTypeForIsb(I)V
    .registers 3

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput p1, p0, Landroid/location/GnssClock;->mReferenceConstellationTypeForIsb:I

    return-void
.end method

.method public setTimeNanos(J)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeNanos:J

    return-void
.end method

.method public setTimeUncertaintyNanos(D)V
    .registers 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 15

    const-string v0, "   %-15s = %s\n"

    const-string v1, "   %-15s = %-25s   %-26s = %s\n"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GnssClock:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasLeapSecond()Z

    move-result v3

    const-string v4, "   %-15s = %s\n"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_2b

    new-array v3, v5, [Ljava/lang/Object;

    const-string v8, "LeapSecond"

    aput-object v8, v3, v7

    iget v8, p0, Landroid/location/GnssClock;->mLeapSecond:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    const/4 v3, 0x4

    new-array v8, v3, [Ljava/lang/Object;

    const-string v9, "TimeNanos"

    aput-object v9, v8, v7

    iget-wide v9, p0, Landroid/location/GnssClock;->mTimeNanos:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v9, "TimeUncertaintyNanos"

    aput-object v9, v8, v5

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasTimeUncertaintyNanos()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4c

    iget-wide v11, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_4d

    :cond_4c
    move-object v9, v10

    :goto_4d
    const/4 v11, 0x3

    aput-object v9, v8, v11

    const-string v9, "   %-15s = %-25s   %-26s = %s\n"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasFullBiasNanos()Z

    move-result v8

    if-eqz v8, :cond_74

    new-array v8, v5, [Ljava/lang/Object;

    const-string v12, "FullBiasNanos"

    aput-object v12, v8, v7

    iget-wide v12, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v8, v6

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_74
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasNanos()Z

    move-result v8

    if-nez v8, :cond_80

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasUncertaintyNanos()Z

    move-result v8

    if-eqz v8, :cond_b1

    :cond_80
    new-array v8, v3, [Ljava/lang/Object;

    const-string v12, "BiasNanos"

    aput-object v12, v8, v7

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasNanos()Z

    move-result v12

    if-eqz v12, :cond_93

    iget-wide v12, p0, Landroid/location/GnssClock;->mBiasNanos:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_94

    :cond_93
    move-object v12, v10

    :goto_94
    aput-object v12, v8, v6

    const-string v12, "BiasUncertaintyNanos"

    aput-object v12, v8, v5

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasUncertaintyNanos()Z

    move-result v12

    if-eqz v12, :cond_a7

    iget-wide v12, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_a8

    :cond_a7
    move-object v12, v10

    :goto_a8
    aput-object v12, v8, v11

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b1
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftNanosPerSecond()Z

    move-result v8

    if-nez v8, :cond_bd

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftUncertaintyNanosPerSecond()Z

    move-result v8

    if-eqz v8, :cond_ee

    :cond_bd
    new-array v8, v3, [Ljava/lang/Object;

    const-string v12, "DriftNanosPerSecond"

    aput-object v12, v8, v7

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftNanosPerSecond()Z

    move-result v12

    if-eqz v12, :cond_d0

    iget-wide v12, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_d1

    :cond_d0
    move-object v12, v10

    :goto_d1
    aput-object v12, v8, v6

    const-string v12, "DriftUncertaintyNanosPerSecond"

    aput-object v12, v8, v5

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftUncertaintyNanosPerSecond()Z

    move-result v12

    if-eqz v12, :cond_e4

    iget-wide v12, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_e5

    :cond_e4
    move-object v12, v10

    :goto_e5
    aput-object v12, v8, v11

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ee
    new-array v8, v5, [Ljava/lang/Object;

    const-string v12, "HardwareClockDiscontinuityCount"

    aput-object v12, v8, v7

    iget v12, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v6

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasElapsedRealtimeNanos()Z

    move-result v8

    if-nez v8, :cond_10f

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v8

    if-eqz v8, :cond_140

    :cond_10f
    new-array v3, v3, [Ljava/lang/Object;

    const-string v8, "ElapsedRealtimeNanos"

    aput-object v8, v3, v7

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasElapsedRealtimeNanos()Z

    move-result v8

    if-eqz v8, :cond_122

    iget-wide v12, p0, Landroid/location/GnssClock;->mElapsedRealtimeNanos:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_123

    :cond_122
    move-object v8, v10

    :goto_123
    aput-object v8, v3, v6

    const-string v8, "ElapsedRealtimeUncertaintyNanos"

    aput-object v8, v3, v5

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v8

    if-eqz v8, :cond_136

    iget-wide v12, p0, Landroid/location/GnssClock;->mElapsedRealtimeUncertaintyNanos:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_137

    :cond_136
    nop

    :goto_137
    aput-object v10, v3, v11

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_140
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasReferenceConstellationTypeForIsb()Z

    move-result v3

    if-eqz v3, :cond_15b

    new-array v3, v5, [Ljava/lang/Object;

    const-string v8, "ReferenceConstellationTypeForIsb"

    aput-object v8, v3, v7

    iget v8, p0, Landroid/location/GnssClock;->mReferenceConstellationTypeForIsb:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15b
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasReferenceCarrierFrequencyHzForIsb()Z

    move-result v3

    if-eqz v3, :cond_176

    new-array v3, v5, [Ljava/lang/Object;

    const-string v8, "ReferenceCarrierFrequencyHzForIsb"

    aput-object v8, v3, v7

    iget-wide v8, p0, Landroid/location/GnssClock;->mReferenceCarrierFrequencyHzForIsb:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_176
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasReferenceCodeTypeForIsb()Z

    move-result v3

    if-eqz v3, :cond_18d

    new-array v3, v5, [Ljava/lang/Object;

    const-string v5, "ReferenceCodeTypeForIsb"

    aput-object v5, v3, v7

    iget-object v5, p0, Landroid/location/GnssClock;->mReferenceCodeTypeForIsb:Ljava/lang/String;

    aput-object v5, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GnssClock;->mElapsedRealtimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GnssClock;->mElapsedRealtimeUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/location/GnssClock;->mReferenceConstellationTypeForIsb:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GnssClock;->mReferenceCarrierFrequencyHzForIsb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Landroid/location/GnssClock;->mReferenceCodeTypeForIsb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
