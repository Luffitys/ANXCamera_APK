.class public Landroid/location/GpsClock;
.super Ljava/lang/Object;
.source "GpsClock.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsClock;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_BIAS:S = 0x8s

.field private static final HAS_BIAS_UNCERTAINTY:S = 0x10s

.field private static final HAS_DRIFT:S = 0x20s

.field private static final HAS_DRIFT_UNCERTAINTY:S = 0x40s

.field private static final HAS_FULL_BIAS:S = 0x4s

.field private static final HAS_LEAP_SECOND:S = 0x1s

.field private static final HAS_NO_FLAGS:S = 0x0s

.field private static final HAS_TIME_UNCERTAINTY:S = 0x2s

.field public static final TYPE_GPS_TIME:B = 0x2t

.field public static final TYPE_LOCAL_HW_TIME:B = 0x1t

.field public static final TYPE_UNKNOWN:B


# instance fields
.field private mBiasInNs:D

.field private mBiasUncertaintyInNs:D

.field private mDriftInNsPerSec:D

.field private mDriftUncertaintyInNsPerSec:D

.field private mFlags:S

.field private mFullBiasInNs:J

.field private mLeapSecond:S

.field private mTimeInNs:J

.field private mTimeUncertaintyInNs:D

.field private mType:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GpsClock$1;

    invoke-direct {v0}, Landroid/location/GpsClock$1;-><init>()V

    sput-object v0, Landroid/location/GpsClock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/location/GpsClock;->initialize()V

    return-void
.end method

.method static synthetic access$002(Landroid/location/GpsClock;S)S
    .registers 2

    iput-short p1, p0, Landroid/location/GpsClock;->mFlags:S

    return p1
.end method

.method static synthetic access$102(Landroid/location/GpsClock;S)S
    .registers 2

    iput-short p1, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return p1
.end method

.method static synthetic access$202(Landroid/location/GpsClock;B)B
    .registers 2

    iput-byte p1, p0, Landroid/location/GpsClock;->mType:B

    return p1
.end method

.method static synthetic access$302(Landroid/location/GpsClock;J)J
    .registers 3

    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeInNs:J

    return-wide p1
.end method

.method static synthetic access$402(Landroid/location/GpsClock;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-wide p1
.end method

.method static synthetic access$502(Landroid/location/GpsClock;J)J
    .registers 3

    iput-wide p1, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-wide p1
.end method

.method static synthetic access$602(Landroid/location/GpsClock;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-wide p1
.end method

.method static synthetic access$702(Landroid/location/GpsClock;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-wide p1
.end method

.method static synthetic access$802(Landroid/location/GpsClock;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-wide p1
.end method

.method static synthetic access$902(Landroid/location/GpsClock;D)D
    .registers 3

    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-wide p1
.end method

.method private getTypeString()Ljava/lang/String;
    .registers 3

    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    if-eqz v0, :cond_29

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/location/GpsClock;->mType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    const-string v0, "GpsTime"

    return-object v0

    :cond_26
    const-string v0, "LocalHwClock"

    return-object v0

    :cond_29
    const-string v0, "Unknown"

    return-object v0
.end method

.method private initialize()V
    .registers 3

    const/4 v0, 0x0

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    invoke-virtual {p0}, Landroid/location/GpsClock;->resetLeapSecond()V

    invoke-virtual {p0, v0}, Landroid/location/GpsClock;->setType(B)V

    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Landroid/location/GpsClock;->setTimeInNs(J)V

    invoke-virtual {p0}, Landroid/location/GpsClock;->resetTimeUncertaintyInNs()V

    invoke-virtual {p0}, Landroid/location/GpsClock;->resetFullBiasInNs()V

    invoke-virtual {p0}, Landroid/location/GpsClock;->resetBiasInNs()V

    invoke-virtual {p0}, Landroid/location/GpsClock;->resetBiasUncertaintyInNs()V

    invoke-virtual {p0}, Landroid/location/GpsClock;->resetDriftInNsPerSec()V

    invoke-virtual {p0}, Landroid/location/GpsClock;->resetDriftUncertaintyInNsPerSec()V

    return-void
.end method

.method private isFlagSet(S)Z
    .registers 3

    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private resetFlag(S)V
    .registers 4

    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    not-int v1, p1

    and-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    return-void
.end method

.method private setFlag(S)V
    .registers 3

    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    or-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBiasInNs()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-wide v0
.end method

.method public getBiasUncertaintyInNs()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-wide v0
.end method

.method public getDriftInNsPerSec()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-wide v0
.end method

.method public getDriftUncertaintyInNsPerSec()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-wide v0
.end method

.method public getFullBiasInNs()J
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-wide v0
.end method

.method public getLeapSecond()S
    .registers 2

    iget-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return v0
.end method

.method public getTimeInNs()J
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    return-wide v0
.end method

.method public getTimeUncertaintyInNs()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-wide v0
.end method

.method public getType()B
    .registers 2

    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    return v0
.end method

.method public hasBiasInNs()Z
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasBiasUncertaintyInNs()Z
    .registers 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasDriftInNsPerSec()Z
    .registers 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasDriftUncertaintyInNsPerSec()Z
    .registers 2

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasFullBiasInNs()Z
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasLeapSecond()Z
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasTimeUncertaintyInNs()Z
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 1

    invoke-direct {p0}, Landroid/location/GpsClock;->initialize()V

    return-void
.end method

.method public resetBiasInNs()V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-void
.end method

.method public resetBiasUncertaintyInNs()V
    .registers 3

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-void
.end method

.method public resetDriftInNsPerSec()V
    .registers 3

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-void
.end method

.method public resetDriftUncertaintyInNsPerSec()V
    .registers 3

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-void
.end method

.method public resetFullBiasInNs()V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-void
.end method

.method public resetLeapSecond()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const/16 v0, -0x8000

    iput-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return-void
.end method

.method public resetTimeUncertaintyInNs()V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-void
.end method

.method public set(Landroid/location/GpsClock;)V
    .registers 4

    iget-short v0, p1, Landroid/location/GpsClock;->mFlags:S

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    iget-short v0, p1, Landroid/location/GpsClock;->mLeapSecond:S

    iput-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    iget-byte v0, p1, Landroid/location/GpsClock;->mType:B

    iput-byte v0, p0, Landroid/location/GpsClock;->mType:B

    iget-wide v0, p1, Landroid/location/GpsClock;->mTimeInNs:J

    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    iget-wide v0, p1, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    iget-wide v0, p1, Landroid/location/GpsClock;->mFullBiasInNs:J

    iput-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    iget-wide v0, p1, Landroid/location/GpsClock;->mBiasInNs:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    iget-wide v0, p1, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    iget-wide v0, p1, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    iget-wide v0, p1, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-void
.end method

.method public setBiasInNs(D)V
    .registers 4

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-void
.end method

.method public setBiasUncertaintyInNs(D)V
    .registers 4

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-void
.end method

.method public setDriftInNsPerSec(D)V
    .registers 4

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-void
.end method

.method public setDriftUncertaintyInNsPerSec(D)V
    .registers 4

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-void
.end method

.method public setFullBiasInNs(J)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    iput-wide p1, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-void
.end method

.method public setLeapSecond(S)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    iput-short p1, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return-void
.end method

.method public setTimeInNs(J)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeInNs:J

    return-void
.end method

.method public setTimeUncertaintyInNs(D)V
    .registers 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-void
.end method

.method public setType(B)V
    .registers 2

    iput-byte p1, p0, Landroid/location/GpsClock;->mType:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 15

    const-string v0, "   %-15s = %s\n"

    const-string v1, "   %-15s = %-25s   %-26s = %s\n"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GpsClock:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Type"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {p0}, Landroid/location/GpsClock;->getTypeString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "   %-15s = %s\n"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v8, "LeapSecond"

    aput-object v8, v4, v6

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasLeapSecond()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_37

    iget-short v8, p0, Landroid/location/GpsClock;->mLeapSecond:S

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    goto :goto_38

    :cond_37
    move-object v8, v9

    :goto_38
    aput-object v8, v4, v7

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    new-array v8, v4, [Ljava/lang/Object;

    const-string v10, "TimeInNs"

    aput-object v10, v8, v6

    iget-wide v10, p0, Landroid/location/GpsClock;->mTimeInNs:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v7

    const-string v10, "TimeUncertaintyInNs"

    aput-object v10, v8, v3

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasTimeUncertaintyInNs()Z

    move-result v10

    if-eqz v10, :cond_61

    iget-wide v10, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_62

    :cond_61
    move-object v10, v9

    :goto_62
    const/4 v11, 0x3

    aput-object v10, v8, v11

    const-string v10, "   %-15s = %-25s   %-26s = %s\n"

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v3, [Ljava/lang/Object;

    const-string v12, "FullBiasInNs"

    aput-object v12, v8, v6

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasFullBiasInNs()Z

    move-result v12

    if-eqz v12, :cond_81

    iget-wide v12, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_82

    :cond_81
    move-object v12, v9

    :goto_82
    aput-object v12, v8, v7

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v8, "BiasInNs"

    aput-object v8, v5, v6

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasBiasInNs()Z

    move-result v8

    if-eqz v8, :cond_9e

    iget-wide v12, p0, Landroid/location/GpsClock;->mBiasInNs:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto :goto_9f

    :cond_9e
    move-object v8, v9

    :goto_9f
    aput-object v8, v5, v7

    const-string v8, "BiasUncertaintyInNs"

    aput-object v8, v5, v3

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasBiasUncertaintyInNs()Z

    move-result v8

    if-eqz v8, :cond_b2

    iget-wide v12, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto :goto_b3

    :cond_b2
    move-object v8, v9

    :goto_b3
    aput-object v8, v5, v11

    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "DriftInNsPerSec"

    aput-object v5, v4, v6

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasDriftInNsPerSec()Z

    move-result v5

    if-eqz v5, :cond_cf

    iget-wide v5, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_d0

    :cond_cf
    move-object v5, v9

    :goto_d0
    aput-object v5, v4, v7

    const-string v5, "DriftUncertaintyInNsPerSec"

    aput-object v5, v4, v3

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasDriftUncertaintyInNsPerSec()Z

    move-result v3

    if-eqz v3, :cond_e2

    iget-wide v5, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    :cond_e2
    aput-object v9, v4, v11

    invoke-static {v10, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
