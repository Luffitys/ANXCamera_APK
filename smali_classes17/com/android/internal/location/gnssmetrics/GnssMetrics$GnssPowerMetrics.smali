.class Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;
.super Ljava/lang/Object;
.source "GnssMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/gnssmetrics/GnssMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssPowerMetrics"
.end annotation


# static fields
.field public static final POOR_TOP_FOUR_AVG_CN0_THRESHOLD_DB_HZ:D = 20.0

.field private static final REPORTING_THRESHOLD_DB_HZ:D = 1.0


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mLastAverageCn0:D

.field private mLastSignalLevel:I

.field final synthetic this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;


# direct methods
.method private constructor <init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/app/IBatteryStats;)V
    .registers 5

    iput-object p1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-wide/high16 v0, -0x3fa7000000000000L    # -100.0

    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->mLastAverageCn0:D

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->mLastSignalLevel:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/app/IBatteryStats;)V

    return-void
.end method

.method private getSignalLevel(D)I
    .registers 5

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public buildProto()Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;
    .registers 8

    new-instance v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    invoke-direct {v0}, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;-><init>()V

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    # getter for: Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;
    invoke-static {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$200(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Landroid/os/connectivity/GpsBatteryStats;->getLoggingDurationMs()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->loggingDurationMs:J

    nop

    invoke-virtual {v1}, Landroid/os/connectivity/GpsBatteryStats;->getEnergyConsumedMaMs()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->energyConsumedMah:D

    invoke-virtual {v1}, Landroid/os/connectivity/GpsBatteryStats;->getTimeInGpsSignalQualityLevel()[J

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [J

    iput-object v3, v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    const/4 v3, 0x0

    :goto_2f
    array-length v4, v2

    if-ge v3, v4, :cond_3b

    iget-object v4, v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    aget-wide v5, v2, v3

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_3b
    return-object v0
.end method

.method public getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    # getter for: Lcom/android/internal/location/gnssmetrics/GnssMetrics;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public reportSignalQuality([FI)V
    .registers 9

    const-wide/16 v0, 0x0

    if-lez p2, :cond_1b

    const/4 v2, 0x0

    add-int/lit8 v3, p2, -0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_b
    if-ge v2, p2, :cond_14

    aget v3, p1, v2

    float-to-double v3, v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_14
    const/4 v2, 0x4

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    :cond_1b
    iget-wide v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->mLastAverageCn0:D

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2a

    return-void

    :cond_2a
    invoke-direct {p0, v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->getSignalLevel(D)I

    move-result v2

    iget v3, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->mLastSignalLevel:I

    if-eq v2, v3, :cond_39

    const/16 v3, 0x45

    invoke-static {v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    iput v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->mLastSignalLevel:I

    :cond_39
    :try_start_39
    iget-object v3, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, v2}, Lcom/android/internal/app/IBatteryStats;->noteGpsSignalQuality(I)V

    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->mLastAverageCn0:D
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_40} :catch_41

    goto :goto_4b

    :catch_41
    move-exception v3

    # getter for: Lcom/android/internal/location/gnssmetrics/GnssMetrics;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4b
    return-void
.end method
