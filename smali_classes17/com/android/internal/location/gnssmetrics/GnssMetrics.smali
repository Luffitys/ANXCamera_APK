.class public Lcom/android/internal/location/gnssmetrics/GnssMetrics;
.super Ljava/lang/Object;
.source "GnssMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;,
        Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;,
        Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_BETWEEN_FIXES_MILLISECS:I = 0x3e8

.field private static final GPS_SIGNAL_QUALITY_GOOD:I = 0x1

.field private static final GPS_SIGNAL_QUALITY_POOR:I = 0x0

.field private static final GPS_SIGNAL_QUALITY_UNKNOWN:I = -0x1

.field private static final HZ_PER_MHZ:D = 1000000.0

.field private static final L5_CARRIER_FREQ_RANGE_HIGH_HZ:D = 1.189E9

.field private static final L5_CARRIER_FREQ_RANGE_LOW_HZ:D = 1.164E9

.field public static final NUM_GPS_SIGNAL_QUALITY_LEVELS:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConstellationTypes:[Z

.field private mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

.field private mL5SvStatusReports:J

.field private mL5SvStatusReportsUsedInFix:J

.field private mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private mLocationFailureReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private mLocationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private mLogStartInElapsedRealTime:Ljava/lang/String;

.field private mNumL5SvStatus:I

.field private mNumL5SvStatusUsedInFix:I

.field private mNumSvStatus:I

.field private mNumSvStatusUsedInFix:I

.field private mPositionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private mPositionAccuracyMetersReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private mStatsManager:Landroid/app/StatsManager;

.field private mSvStatusReports:J

.field private mSvStatusReportsUsedInFix:J

.field private mTimeToFirstFixMilliSReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private mTimeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private mTopFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private mTopFourAverageCn0StatisticsL5:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLocationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {p0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->reset()V

    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    const-string/jumbo v0, "stats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mStatsManager:Landroid/app/StatsManager;

    invoke-direct {p0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->registerGnssStats()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mL5SvStatusReportsUsedInFix:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mL5SvStatusReports:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mSvStatusReportsUsedInFix:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mSvStatusReports:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    return-object v0
.end method

.method private static isL5Sv(F)Z
    .registers 5

    float-to-double v0, p0

    const-wide v2, 0x41d1584ec0000000L    # 1.164E9

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_16

    float-to-double v0, p0

    const-wide v2, 0x41d1b7acd0000000L    # 1.189E9

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private logCn0L5(I[F[F)V
    .registers 11

    if-eqz p1, :cond_81

    if-eqz p2, :cond_81

    array-length v0, p2

    if-eqz v0, :cond_81

    array-length v0, p2

    if-lt v0, p1, :cond_81

    if-eqz p3, :cond_81

    array-length v0, p3

    if-eqz v0, :cond_81

    array-length v0, p3

    if-ge v0, p1, :cond_13

    goto :goto_81

    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_19
    if-ge v1, p1, :cond_2f

    aget v2, p3, v1

    invoke-static {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->isL5Sv(F)Z

    move-result v2

    if-eqz v2, :cond_2c

    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_80

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_3d

    goto :goto_80

    :cond_3d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    add-int/lit8 v2, v1, -0x4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_7f

    const-wide/16 v2, 0x0

    add-int/lit8 v4, v1, -0x4

    :goto_5b
    if-ge v4, v1, :cond_6c

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_5b

    :cond_6c
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    iget-object v4, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    :cond_7f
    return-void

    :cond_80
    :goto_80
    return-void

    :cond_81
    :goto_81
    return-void
.end method

.method private registerGnssStats()V
    .registers 6

    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v4, 0x275a

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method private reset()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLogStartInElapsedRealTime:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLocationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    invoke-virtual {p0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->resetConstellationTypes()V

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumSvStatus:I

    iput v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumL5SvStatus:I

    iput v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumSvStatusUsedInFix:I

    iput v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    return-void
.end method


# virtual methods
.method public dumpGnssMetricsAsProtoString()Ljava/lang/String;
    .registers 6

    new-instance v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    invoke-direct {v0}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;-><init>()V

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLocationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_21

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLocationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numLocationReportProcessed:I

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    iget-object v3, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLocationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v3}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-int v1, v3

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->percentageLocationFailure:I

    :cond_21
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_43

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTimeToFirstFixProcessed:I

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTimeToFirstFixSecs:I

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTimeToFirstFixSecs:I

    :cond_43
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_65

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numPositionAccuracyProcessed:I

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanPositionAccuracyMeters:I

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationPositionAccuracyMeters:I

    :cond_65
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_85

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTopFourAverageCn0Processed:I

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTopFourAverageCn0DbHz:D

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTopFourAverageCn0DbHz:D

    :cond_85
    iget v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumSvStatus:I

    if-lez v1, :cond_8b

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numSvStatusProcessed:I

    :cond_8b
    iget v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumL5SvStatus:I

    if-lez v1, :cond_91

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5SvStatusProcessed:I

    :cond_91
    iget v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumSvStatusUsedInFix:I

    if-lez v1, :cond_97

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numSvStatusUsedInFix:I

    :cond_97
    iget v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    if-lez v1, :cond_9d

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5SvStatusUsedInFix:I

    :cond_9d
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_bd

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5TopFourAverageCn0Processed:I

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanL5TopFourAverageCn0DbHz:D

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationL5TopFourAverageCn0DbHz:D

    :cond_bd
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->buildProto()Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->powerMetrics:Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    const-string/jumbo v1, "ro.boot.revision"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->hardwareRevision:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->reset()V

    return-object v1
.end method

.method public dumpGnssMetricsAsText()Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GNSS_KPI_START"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "  KPI logging start time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLogStartInElapsedRealTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  KPI logging end time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Number of location reports: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLocationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLocationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    if-lez v2, :cond_5e

    const-string v2, "  Percentage location failure: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    iget-object v4, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLocationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v4}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v4

    mul-double/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    const-string v2, "  Number of TTFF reports: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    if-lez v2, :cond_99

    const-string v2, "  TTFF mean (sec): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  TTFF standard deviation (sec): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_99
    const-string v2, "  Number of position accuracy reports: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    if-lez v2, :cond_d4

    const-string v2, "  Position accuracy mean (m): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Position accuracy standard deviation (m): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d4
    const-string v2, "  Number of CN0 reports: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    if-lez v2, :cond_10f

    const-string v2, "  Top 4 Avg CN0 mean (dB-Hz): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Top 4 Avg CN0 standard deviation (dB-Hz): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10f
    const-string v2, "  Total number of sv status messages processed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumSvStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Total number of L5 sv status messages processed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumL5SvStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Total number of sv status messages processed, where sv is used in fix: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumSvStatusUsedInFix:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Total number of L5 sv status messages processed, where sv is used in fix: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Number of L5 CN0 reports: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    if-lez v2, :cond_17e

    const-string v2, "  L5 Top 4 Avg CN0 mean (dB-Hz): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  L5 Top 4 Avg CN0 standard deviation (dB-Hz): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17e
    const-string v2, "  Used-in-fix constellation types: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_184
    iget-object v3, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mConstellationTypes:[Z

    array-length v4, v3

    if-ge v2, v4, :cond_19c

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_199

    invoke-static {v2}, Landroid/location/GnssStatus;->constellationTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_199
    add-int/lit8 v2, v2, 0x1

    goto :goto_184

    :cond_19c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GNSS_KPI_END"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v2

    if-eqz v2, :cond_20d

    const-string v3, "Power Metrics"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Time on battery (min): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/connectivity/GpsBatteryStats;->getLoggingDurationMs()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/connectivity/GpsBatteryStats;->getTimeInGpsSignalQualityLevel()[J

    move-result-object v3

    if-eqz v3, :cond_1f7

    array-length v4, v3

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1f7

    const-string v4, "  Amount of time (while on battery) Top 4 Avg CN0 > 20.0 dB-Hz (min): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-wide v7, v3, v4

    long-to-double v7, v7

    div-double/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Amount of time (while on battery) Top 4 Avg CN0 <= 20.0 dB-Hz (min): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-wide v7, v3, v4

    long-to-double v7, v7

    div-double/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f7
    const-string v4, "  Energy consumed while on battery (mAh): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/connectivity/GpsBatteryStats;->getEnergyConsumedMaMs()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20d
    const-string v3, "Hardware Version: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ro.boot.revision"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public logCn0([FI[F)V
    .registers 10

    invoke-direct {p0, p2, p1, p3}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logCn0L5(I[F[F)V

    if-eqz p2, :cond_4a

    if-eqz p1, :cond_4a

    array-length v0, p1

    if-eqz v0, :cond_4a

    array-length v0, p1

    if-ge v0, p2, :cond_e

    goto :goto_4a

    :cond_e
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([F)V

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->reportSignalQuality([FI)V

    const/4 v1, 0x4

    if-ge p2, v1, :cond_1e

    return-void

    :cond_1e
    add-int/lit8 v1, p2, -0x4

    aget v1, v0, v1

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_49

    const-wide/16 v1, 0x0

    add-int/lit8 v3, p2, -0x4

    :goto_2d
    if-ge v3, p2, :cond_36

    aget v4, v0, v3

    float-to-double v4, v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_36
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    div-double/2addr v1, v3

    iget-object v3, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    iget-object v3, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    :cond_49
    return-void

    :cond_4a
    :goto_4a
    if-nez p2, :cond_53

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->reportSignalQuality([FI)V

    :cond_53
    return-void
.end method

.method public logConstellationType(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mConstellationTypes:[Z

    array-length v1, v0

    if-lt p1, v1, :cond_21

    sget-object v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constellation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method

.method public logMissedReports(II)V
    .registers 8

    const/16 v0, 0x3e8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int v0, p2, v0

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_1e

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1e

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLocationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1e
    return-void
.end method

.method public logPositionAccuracyMeters(F)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    return-void
.end method

.method public logReceivedLocationStatus(Z)V
    .registers 5

    if-nez p1, :cond_f

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLocationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLocationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    return-void
.end method

.method public logSvStatus(Landroid/location/GnssStatus;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v2

    if-ge v1, v2, :cond_51

    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->hasCarrierFrequencyHz(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumSvStatus:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumSvStatus:I

    iget-wide v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mSvStatusReports:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mSvStatusReports:J

    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    move-result v2

    invoke-static {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->isL5Sv(F)Z

    move-result v0

    if-eqz v0, :cond_30

    iget v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumL5SvStatus:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumL5SvStatus:I

    iget-wide v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mL5SvStatusReports:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mL5SvStatusReports:J

    :cond_30
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumSvStatusUsedInFix:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumSvStatusUsedInFix:I

    iget-wide v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mSvStatusReportsUsedInFix:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mSvStatusReportsUsedInFix:J

    if-eqz v0, :cond_4e

    iget v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    iget-wide v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mL5SvStatusReportsUsedInFix:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mL5SvStatusReportsUsedInFix:J

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_51
    return-void
.end method

.method public logTimeToFirstFixMilliSecs(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    div-int/lit16 v1, p1, 0x3e8

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    return-void
.end method

.method public resetConstellationTypes()V
    .registers 2

    const/16 v0, 0x8

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mConstellationTypes:[Z

    return-void
.end method
