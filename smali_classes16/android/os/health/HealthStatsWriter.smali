.class public Landroid/os/health/HealthStatsWriter;
.super Ljava/lang/Object;
.source "HealthStatsWriter.java"


# instance fields
.field private final mConstants:Landroid/os/health/HealthKeys$Constants;

.field private final mMeasurementFields:[Z

.field private final mMeasurementValues:[J

.field private final mMeasurementsValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatsValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStatsWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimerCounts:[I

.field private final mTimerFields:[Z

.field private final mTimerTimes:[J

.field private final mTimersValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/health/HealthKeys$Constants;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    move-result v0

    new-array v1, v0, [Z

    iput-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerCounts:[I

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerTimes:[J

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    move-result v1

    new-array v2, v1, [Z

    iput-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    new-array v2, v1, [J

    iput-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementValues:[J

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    move-result v2

    new-array v3, v2, [Landroid/util/ArrayMap;

    iput-object v3, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    move-result v3

    new-array v4, v3, [Landroid/util/ArrayMap;

    iput-object v4, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    move-result v4

    new-array v5, v4, [Landroid/util/ArrayMap;

    iput-object v5, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    return-void
.end method

.method private static countBooleanArray([Z)I
    .registers 5

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_e

    aget-boolean v3, p0, v2

    if-eqz v3, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v0
.end method

.method private static countObjectArray([Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_e

    aget-object v3, p0, v2

    if-eqz v3, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v0
.end method

.method private static writeHealthStatsWriterMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStatsWriter;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1f

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/health/HealthStatsWriter;

    invoke-virtual {v2, p0}, Landroid/os/health/HealthStatsWriter;->flattenToParcel(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1f
    return-void
.end method

.method private static writeLongsMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_23

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_23
    return-void
.end method

.method private static writeParcelableMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_20

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_20
    return-void
.end method


# virtual methods
.method public addMeasurement(IJ)V
    .registers 7

    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    move-result v0

    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    aput-boolean v1, v2, v0

    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementValues:[J

    aput-wide p2, v1, v0

    return-void
.end method

.method public addMeasurements(ILjava/lang/String;J)V
    .registers 10

    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    move-result v0

    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    aget-object v2, v1, v0

    if-nez v2, :cond_16

    new-instance v3, Landroid/util/ArrayMap;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    aput-object v3, v1, v0

    move-object v2, v3

    :cond_16
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V
    .registers 9

    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    move-result v0

    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    aget-object v2, v1, v0

    if-nez v2, :cond_16

    new-instance v3, Landroid/util/ArrayMap;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    aput-object v3, v1, v0

    move-object v2, v3

    :cond_16
    invoke-virtual {v2, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTimer(IIJ)V
    .registers 8

    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    move-result v0

    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerCounts:[I

    aput p2, v1, v0

    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerTimes:[J

    aput-wide p3, v1, v0

    return-void
.end method

.method public addTimers(ILjava/lang/String;Landroid/os/health/TimerStat;)V
    .registers 9

    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    move-result v0

    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    aget-object v2, v1, v0

    if-nez v2, :cond_16

    new-instance v3, Landroid/util/ArrayMap;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    aput-object v3, v1, v0

    move-object v2, v3

    :cond_16
    invoke-virtual {v2, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public flattenToParcel(Landroid/os/Parcel;)V
    .registers 6

    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    invoke-virtual {v0}, Landroid/os/health/HealthKeys$Constants;->getDataType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    invoke-static {v0}, Landroid/os/health/HealthStatsWriter;->countBooleanArray([Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_1a
    array-length v2, v0

    if-ge v1, v2, :cond_39

    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_36

    aget v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimerCounts:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimerTimes:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_39
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    invoke-static {v1}, Landroid/os/health/HealthStatsWriter;->countBooleanArray([Z)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_4a
    array-length v2, v0

    if-ge v1, v2, :cond_62

    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_5f

    aget v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementValues:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_62
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    invoke-static {v1}, Landroid/os/health/HealthStatsWriter;->countObjectArray([Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_73
    array-length v2, v0

    if-ge v1, v2, :cond_8b

    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    aget-object v2, v2, v1

    if-eqz v2, :cond_88

    aget v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Landroid/os/health/HealthStatsWriter;->writeHealthStatsWriterMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    :cond_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    :cond_8b
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    invoke-static {v1}, Landroid/os/health/HealthStatsWriter;->countObjectArray([Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_9c
    array-length v2, v0

    if-ge v1, v2, :cond_b4

    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    aget-object v2, v2, v1

    if-eqz v2, :cond_b1

    aget v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Landroid/os/health/HealthStatsWriter;->writeParcelableMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    :cond_b1
    add-int/lit8 v1, v1, 0x1

    goto :goto_9c

    :cond_b4
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    invoke-static {v1}, Landroid/os/health/HealthStatsWriter;->countObjectArray([Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_c5
    array-length v2, v0

    if-ge v1, v2, :cond_dd

    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    aget-object v2, v2, v1

    if-eqz v2, :cond_da

    aget v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Landroid/os/health/HealthStatsWriter;->writeLongsMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    :cond_da
    add-int/lit8 v1, v1, 0x1

    goto :goto_c5

    :cond_dd
    return-void
.end method
