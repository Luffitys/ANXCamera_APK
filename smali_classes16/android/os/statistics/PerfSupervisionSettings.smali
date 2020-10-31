.class public Landroid/os/statistics/PerfSupervisionSettings;
.super Ljava/lang/Object;
.source "PerfSupervisionSettings.java"


# static fields
.field private static final DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

.field private static final DEFAULT_DIVISION_RATIO:I

.field private static final DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

.field private static final DEFAULT_LEVEL:I

.field private static final DEFAULT_SOFT_THRESHOLD_MS:I

.field public static final MAX_EVENT_THRESHOLD_MS:I = 0x10000

.field public static final MIN_HARD_THRESHOLD_MS:I = 0x1f4

.field public static final MIN_PEER_WAIT_TIME_RATIO_POWER:I = 0x5

.field public static final MIN_SOFT_THRESHOLD_MS:I = 0xa

.field public static final PERF_SUPERVISION_OFF:I = 0x0

.field public static final PERF_SUPERVISION_ON_HEAVY:I = 0x2

.field public static final PERF_SUPERVISION_ON_NORMAL:I = 0x1

.field public static final PERF_SUPERVISION_ON_TEST:I = 0x9

.field private static final TAG:Ljava/lang/String;

.field public static final sGlobalPerfEventQueueLength:I

.field public static final sIsAutoAnalysisOn:Z

.field private static sIsMiuiDaemon:Z

.field private static sIsSystemServer:Z

.field public static final sMinOverlappedDurationMillis:I

.field public static final sMinPerfEventDurationMillis:I

.field public static final sPerfSupervisionDivisionRatio:I

.field public static final sPerfSupervisionHardThreshold:I

.field private static final sPerfSupervisionLevel:I

.field public static final sPerfSupervisionSoftThreshold:I

.field private static sReadySupervision:Z


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const-class v0, Landroid/os/statistics/PerfSupervisionSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/statistics/PerfSupervisionSettings;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sIsSystemServer:Z

    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sIsMiuiDaemon:Z

    const/4 v1, 0x0

    :try_start_10
    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/misysinfofreader"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_1d

    move v1, v2

    goto :goto_1e

    :catch_1d
    move-exception v2

    :goto_1e
    sget-boolean v2, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    const/4 v3, 0x1

    if-nez v2, :cond_28

    if-nez v1, :cond_26

    goto :goto_28

    :cond_26
    move v2, v3

    goto :goto_29

    :cond_28
    :goto_28
    move v2, v0

    :goto_29
    sput v2, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    invoke-static {}, Lmiui/os/Environment;->getCpuCount()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    const/16 v8, 0x7d0

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-gt v2, v10, :cond_4c

    cmp-long v6, v4, v6

    if-gtz v6, :cond_4c

    const/16 v6, 0x190

    sput v6, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    sput v9, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    sput v8, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

    goto :goto_73

    :cond_4c
    if-gt v2, v9, :cond_55

    const/16 v6, 0xc8

    sput v6, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    sput v10, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    goto :goto_5b

    :cond_55
    const/16 v6, 0x64

    sput v6, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    :goto_5b
    const-wide/16 v6, 0x1388

    mul-long/2addr v6, v4

    const-wide/16 v11, 0x708

    div-long/2addr v6, v11

    long-to-int v6, v6

    const/16 v7, 0x2710

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    sput v6, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

    sget-boolean v6, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    xor-int/2addr v6, v3

    sput-boolean v6, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

    :goto_73
    const-string/jumbo v6, "persist.sys.perf_mistats_opt"

    const-string v7, ""

    invoke-static {v6, v7}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/16 v11, 0x3e8

    const/16 v12, 0xa

    if-eqz v8, :cond_9f

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    div-int/2addr v3, v7

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    shl-int/lit8 v3, v3, 0x5

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    goto/16 :goto_13d

    :cond_9f
    const-string v8, " "

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    if-lt v8, v3, :cond_c1

    aget-object v8, v7, v0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c1

    aget-object v8, v7, v0

    sget v13, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    invoke-static {v8, v13}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v8

    sput v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    goto :goto_c5

    :cond_c1
    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    sput v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    :goto_c5
    array-length v8, v7

    if-lt v8, v10, :cond_df

    aget-object v8, v7, v3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_df

    aget-object v8, v7, v3

    sget v13, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    invoke-static {v8, v13}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    sput v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    goto :goto_e3

    :cond_df
    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    sput v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    :goto_e3
    array-length v8, v7

    const/4 v13, 0x3

    if-lt v8, v13, :cond_105

    aget-object v8, v7, v10

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_105

    aget-object v8, v7, v10

    sget v10, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    invoke-static {v8, v10}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    div-int/2addr v8, v12

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    goto :goto_110

    :cond_105
    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    div-int/2addr v8, v12

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    :goto_110
    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    div-int/2addr v3, v8

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    shl-int/lit8 v3, v3, 0x5

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v8, 0x1f4

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    array-length v10, v7

    if-lt v10, v9, :cond_13b

    aget-object v10, v7, v13

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13b

    aget-object v10, v7, v13

    invoke-static {v10, v3}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    sput v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    goto :goto_13d

    :cond_13b
    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    :goto_13d
    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    mul-int/2addr v3, v9

    div-int/lit8 v3, v3, 0x5

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinOverlappedDurationMillis:I

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sGlobalPerfEventQueueLength:I

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    if-nez v3, :cond_151

    goto :goto_153

    :cond_151
    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

    :goto_153
    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sIsAutoAnalysisOn:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupervisionLevel()I
    .registers 1

    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    if-eqz v0, :cond_7

    sget v0, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static init()V
    .registers 4

    sget-object v0, Landroid/os/statistics/PerfSupervisionSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sGlobalPerfEventQueueLength:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Landroid/os/statistics/PerfSupervisionSettings;->sIsAutoAnalysisOn:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isAboveHardThreshold(J)Z
    .registers 4

    sget v0, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static isInHeavyMode()Z
    .registers 2

    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    if-eqz v0, :cond_b

    sget v0, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static isInTestMode()Z
    .registers 2

    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    if-eqz v0, :cond_c

    sget v0, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isPerfEventReportable()Z
    .registers 1

    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sIsMiuiDaemon:Z

    if-nez v0, :cond_c

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isSupervisionOn()Z
    .registers 2

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->getSupervisionLevel()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static isSystemServer()Z
    .registers 1

    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sIsSystemServer:Z

    return v0
.end method

.method public static notifySupervisionReady(ZZ)V
    .registers 3

    sput-boolean p0, Landroid/os/statistics/PerfSupervisionSettings;->sIsSystemServer:Z

    sput-boolean p1, Landroid/os/statistics/PerfSupervisionSettings;->sIsMiuiDaemon:Z

    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    return-void
.end method

.method static parseIntWithDefault(Ljava/lang/String;I)I
    .registers 4

    move v0, p1

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_7

    move v0, v1

    goto :goto_8

    :catch_7
    move-exception v1

    :goto_8
    return v0
.end method
