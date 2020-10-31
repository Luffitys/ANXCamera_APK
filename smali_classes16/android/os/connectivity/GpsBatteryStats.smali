.class public final Landroid/os/connectivity/GpsBatteryStats;
.super Ljava/lang/Object;
.source "GpsBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/connectivity/GpsBatteryStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEnergyConsumedMaMs:J

.field private mLoggingDurationMs:J

.field private mTimeInGpsSignalQualityLevel:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/connectivity/GpsBatteryStats$1;

    invoke-direct {v0}, Landroid/os/connectivity/GpsBatteryStats$1;-><init>()V

    sput-object v0, Landroid/os/connectivity/GpsBatteryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/os/connectivity/GpsBatteryStats;->initialize()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/os/connectivity/GpsBatteryStats;->initialize()V

    invoke-virtual {p0, p1}, Landroid/os/connectivity/GpsBatteryStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/connectivity/GpsBatteryStats$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/connectivity/GpsBatteryStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private initialize()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mLoggingDurationMs:J

    iput-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mEnergyConsumedMaMs:J

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mTimeInGpsSignalQualityLevel:[J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getEnergyConsumedMaMs()J
    .registers 3

    iget-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mEnergyConsumedMaMs:J

    return-wide v0
.end method

.method public getLoggingDurationMs()J
    .registers 3

    iget-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mLoggingDurationMs:J

    return-wide v0
.end method

.method public getTimeInGpsSignalQualityLevel()[J
    .registers 2

    iget-object v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mTimeInGpsSignalQualityLevel:[J

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mLoggingDurationMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mEnergyConsumedMaMs:J

    iget-object v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mTimeInGpsSignalQualityLevel:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    return-void
.end method

.method public setEnergyConsumedMaMs(J)V
    .registers 3

    iput-wide p1, p0, Landroid/os/connectivity/GpsBatteryStats;->mEnergyConsumedMaMs:J

    return-void
.end method

.method public setLoggingDurationMs(J)V
    .registers 3

    iput-wide p1, p0, Landroid/os/connectivity/GpsBatteryStats;->mLoggingDurationMs:J

    return-void
.end method

.method public setTimeInGpsSignalQualityLevel([J)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    iput-object v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mTimeInGpsSignalQualityLevel:[J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mLoggingDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mEnergyConsumedMaMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/os/connectivity/GpsBatteryStats;->mTimeInGpsSignalQualityLevel:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
