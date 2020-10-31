.class Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
.super Ljava/lang/Object;
.source "GnssMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/gnssmetrics/GnssMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Statistics"
.end annotation


# instance fields
.field private mCount:I

.field private mLongSum:J

.field private mSum:D

.field private mSumSquare:D


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addItem(D)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mCount:I

    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mSum:D

    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mSumSquare:D

    mul-double v2, p1, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mSumSquare:D

    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mLongSum:J

    long-to-double v0, v0

    add-double/2addr v0, p1

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mLongSum:J
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLongSum()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mLongSum:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMean()D
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mSum:D

    iget v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mCount:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_9

    int-to-double v2, v2

    div-double/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardDeviation()D
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mSum:D

    iget v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    mul-double/2addr v0, v0

    iget-wide v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mSumSquare:D

    iget v4, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mCount:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1a

    sub-double v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1e

    monitor-exit p0

    return-wide v4

    :cond_1a
    const-wide/16 v4, 0x0

    monitor-exit p0

    return-wide v4

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mSum:D

    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mSumSquare:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->mLongSum:J
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
