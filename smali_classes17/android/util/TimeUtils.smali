.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field public static final NANOS_PER_MS:J = 0xf4240L

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field public static final sDumpDateFormat:Ljava/text/SimpleDateFormat;

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;

.field private static sLoggingFormat:Ljava/text/SimpleDateFormat;

.field private static sTmpFormatStr:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/TimeUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    const/16 v0, 0x1d

    new-array v1, v0, [C

    sput-object v1, Landroid/util/TimeUtils;->sFormatStr:[C

    new-array v0, v0, [C

    sput-object v0, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .registers 6

    const/16 v0, 0x3e7

    if-le p0, v0, :cond_f

    const/4 v0, 0x0

    :goto_5
    if-eqz p0, :cond_c

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 p0, p0, 0xa

    goto :goto_5

    :cond_c
    add-int v1, v0, p1

    return v1

    :cond_f
    const/16 v0, 0x63

    if-gt p0, v0, :cond_30

    if-eqz p2, :cond_19

    const/4 v0, 0x3

    if-lt p3, v0, :cond_19

    goto :goto_30

    :cond_19
    const/16 v0, 0x9

    if-gt p0, v0, :cond_2d

    if-eqz p2, :cond_23

    const/4 v0, 0x2

    if-lt p3, v0, :cond_23

    goto :goto_2d

    :cond_23
    if-nez p2, :cond_2a

    if-lez p0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v0, 0x0

    return v0

    :cond_2a
    :goto_2a
    add-int/lit8 v0, p1, 0x1

    return v0

    :cond_2d
    :goto_2d
    add-int/lit8 v0, p1, 0x2

    return v0

    :cond_30
    :goto_30
    add-int/lit8 v0, p1, 0x3

    return v0
.end method

.method public static dumpTime(Ljava/io/PrintWriter;J)V
    .registers 5

    sget-object v0, Landroid/util/TimeUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V
    .registers 7

    sget-object v0, Landroid/util/TimeUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    cmp-long v0, p1, p3

    if-nez v0, :cond_18

    const-string v0, " (now)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_25

    :cond_18
    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4, p0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_25
    return-void
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .registers 7

    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    invoke-direct {v3, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0

    return-object v3

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_c

    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_c
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .registers 9

    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v1

    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .registers 7

    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v2

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    invoke-virtual {p2, v3, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    nop

    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;I)V
    .registers 8

    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v1

    sget-object v2, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    nop

    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .registers 30

    move-wide/from16 v0, p0

    move/from16 v2, p2

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    array-length v3, v3

    if-ge v3, v2, :cond_d

    new-array v3, v2, [C

    sput-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    :cond_d
    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const/16 v7, 0x20

    if-nez v6, :cond_29

    const/4 v4, 0x0

    add-int/lit8 v2, v2, -0x1

    :goto_1a
    if-ge v4, v2, :cond_22

    add-int/lit8 v5, v4, 0x1

    aput-char v7, v3, v4

    move v4, v5

    goto :goto_1a

    :cond_22
    const/16 v5, 0x30

    aput-char v5, v3, v4

    add-int/lit8 v5, v4, 0x1

    return v5

    :cond_29
    cmp-long v4, v0, v4

    if-lez v4, :cond_31

    const/16 v4, 0x2b

    move v10, v4

    goto :goto_35

    :cond_31
    const/16 v4, 0x2d

    neg-long v0, v0

    move v10, v4

    :goto_35
    const-wide/16 v4, 0x3e8

    rem-long v8, v0, v4

    long-to-int v11, v8

    div-long v4, v0, v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v9, 0x15180

    if-lt v4, v9, :cond_50

    div-int v5, v4, v9

    mul-int/2addr v9, v5

    sub-int/2addr v4, v9

    move v12, v5

    goto :goto_51

    :cond_50
    move v12, v5

    :goto_51
    const/16 v5, 0xe10

    if-lt v4, v5, :cond_5c

    div-int/lit16 v6, v4, 0xe10

    mul-int/lit16 v5, v6, 0xe10

    sub-int/2addr v4, v5

    move v13, v6

    goto :goto_5d

    :cond_5c
    move v13, v6

    :goto_5d
    const/16 v5, 0x3c

    if-lt v4, v5, :cond_69

    div-int/lit8 v8, v4, 0x3c

    mul-int/lit8 v5, v8, 0x3c

    sub-int/2addr v4, v5

    move v14, v4

    move v15, v8

    goto :goto_6b

    :cond_69
    move v14, v4

    move v15, v8

    :goto_6b
    const/4 v4, 0x0

    const/16 v16, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_a8

    invoke-static {v12, v6, v8, v8}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v5

    if-lez v5, :cond_7a

    move v8, v6

    :cond_7a
    invoke-static {v13, v6, v8, v9}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v5, v8

    if-lez v5, :cond_83

    move v8, v6

    goto :goto_84

    :cond_83
    const/4 v8, 0x0

    :goto_84
    invoke-static {v15, v6, v8, v9}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v5, v8

    if-lez v5, :cond_8d

    move v8, v6

    goto :goto_8e

    :cond_8d
    const/4 v8, 0x0

    :goto_8e
    invoke-static {v14, v6, v8, v9}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v5, v8

    if-lez v5, :cond_98

    move/from16 v8, v16

    goto :goto_99

    :cond_98
    const/4 v8, 0x0

    :goto_99
    invoke-static {v11, v9, v6, v8}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v8, v6

    add-int/2addr v5, v8

    :goto_9f
    if-ge v5, v2, :cond_a8

    aput-char v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_9f

    :cond_a8
    aput-char v10, v3, v4

    add-int/lit8 v17, v4, 0x1

    move/from16 v8, v17

    if-eqz v2, :cond_b2

    move v4, v6

    goto :goto_b3

    :cond_b2
    const/4 v4, 0x0

    :goto_b3
    move/from16 v18, v4

    const/16 v7, 0x64

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v4, v3

    move v5, v12

    move/from16 v21, v6

    move v6, v7

    move/from16 v7, v17

    move/from16 v22, v8

    const/16 v23, 0x0

    move/from16 v8, v19

    move/from16 v19, v9

    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v9

    const/16 v6, 0x68

    move/from16 v8, v22

    if-eq v9, v8, :cond_d9

    move/from16 v17, v21

    goto :goto_db

    :cond_d9
    move/from16 v17, v23

    :goto_db
    if-eqz v18, :cond_e0

    move/from16 v20, v19

    goto :goto_e2

    :cond_e0
    move/from16 v20, v23

    :goto_e2
    move-object v4, v3

    move v5, v13

    move v7, v9

    move/from16 v24, v8

    move/from16 v8, v17

    move/from16 v17, v9

    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v9

    const/16 v6, 0x6d

    move/from16 v8, v24

    if-eq v9, v8, :cond_fa

    move/from16 v17, v21

    goto :goto_fc

    :cond_fa
    move/from16 v17, v23

    :goto_fc
    if-eqz v18, :cond_101

    move/from16 v20, v19

    goto :goto_103

    :cond_101
    move/from16 v20, v23

    :goto_103
    move-object v4, v3

    move v5, v15

    move v7, v9

    move/from16 v25, v8

    move/from16 v8, v17

    move/from16 v17, v9

    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v9

    const/16 v6, 0x73

    move/from16 v8, v25

    if-eq v9, v8, :cond_119

    goto :goto_11b

    :cond_119
    move/from16 v21, v23

    :goto_11b
    if-eqz v18, :cond_11e

    goto :goto_120

    :cond_11e
    move/from16 v19, v23

    :goto_120
    move-object v4, v3

    move v5, v14

    move v7, v9

    move/from16 v26, v8

    move/from16 v8, v21

    move/from16 v17, v9

    move/from16 v9, v19

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v9

    const/16 v6, 0x6d

    const/4 v8, 0x1

    if-eqz v18, :cond_139

    move/from16 v7, v26

    if-eq v9, v7, :cond_13b

    goto :goto_13d

    :cond_139
    move/from16 v7, v26

    :cond_13b
    move/from16 v16, v23

    :goto_13d
    move-object v4, v3

    move v5, v11

    move/from16 v17, v7

    move v7, v9

    move/from16 v19, v9

    move/from16 v9, v16

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v4

    const/16 v5, 0x73

    aput-char v5, v3, v4

    add-int/lit8 v5, v4, 0x1

    return v5
.end method

.method public static formatForLogging(J)Ljava/lang/String;
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_a

    const-string/jumbo v0, "unknown"

    return-object v0

    :cond_a
    sget-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatRealtime(J)Ljava/lang/String;
    .registers 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroid/util/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTime(JJ)Ljava/lang/String;
    .registers 9

    sub-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_22
    cmp-long v2, v0, v2

    if-gez v2, :cond_41

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms ago)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (now)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatUptime(J)Ljava/lang/String;
    .registers 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroid/util/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;
    .registers 14

    const/4 v0, 0x0

    if-nez p4, :cond_4

    return-object v0

    :cond_4
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v7

    invoke-static {}, Llibcore/timezone/TimeZoneFinder;->getInstance()Llibcore/timezone/TimeZoneFinder;

    move-result-object v1

    invoke-virtual {v1, p4}, Llibcore/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Llibcore/timezone/CountryTimeZones;

    move-result-object v8

    if-nez v8, :cond_13

    return-object v0

    :cond_13
    move-object v1, v8

    move-wide v2, p2

    move-object v4, v7

    move v5, p0

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Llibcore/timezone/CountryTimeZones;->lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;IZ)Llibcore/timezone/CountryTimeZones$OffsetResult;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Llibcore/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    :cond_22
    return-object v0
.end method

.method public static getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .registers 7

    invoke-static {p0, p1, p2, p3, p4}, Landroid/util/TimeUtils;->getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method public static getTimeZoneDatabaseVersion()Ljava/lang/String;
    .registers 1

    invoke-static {}, Llibcore/timezone/ZoneInfoDb;->getInstance()Llibcore/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/timezone/ZoneInfoDb;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZoneIdsForCountryCode(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3f

    invoke-static {}, Llibcore/timezone/TimeZoneFinder;->getInstance()Llibcore/timezone/TimeZoneFinder;

    move-result-object v0

    nop

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Llibcore/timezone/CountryTimeZones;

    move-result-object v1

    if-nez v1, :cond_13

    const/4 v2, 0x0

    return-object v2

    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Llibcore/timezone/CountryTimeZones;->getTimeZoneMappings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {v4}, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;->isShownInPicker()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-virtual {v4}, Llibcore/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    goto :goto_20

    :cond_3a
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_3f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "countryCode == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isTimeBetween(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)Z
    .registers 4

    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p2}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v0

    if-nez v0, :cond_30

    :cond_c
    invoke-virtual {p0, p2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1, p2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-nez v0, :cond_30

    :cond_1e
    invoke-virtual {p0, p2}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p1, p2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_30
    const/4 v0, 0x0

    return v0

    :cond_32
    const/4 v0, 0x1

    return v0
.end method

.method public static logTimeOfDay(J)Ljava/lang/String;
    .registers 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-ltz v1, :cond_29

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const-string v2, "%tm-%td %tH:%tM:%tS.%tL"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_29
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static printFieldLocked([CICIZI)I
    .registers 11

    if-nez p4, :cond_4

    if-lez p1, :cond_64

    :cond_4
    move v0, p3

    const/16 v1, 0x3e7

    if-le p1, v1, :cond_2d

    const/4 v1, 0x0

    :goto_a
    if-eqz p1, :cond_1d

    sget-object v2, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    array-length v3, v2

    if-ge v1, v3, :cond_1d

    rem-int/lit8 v3, p1, 0xa

    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    aput-char v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 p1, p1, 0xa

    goto :goto_a

    :cond_1d
    add-int/lit8 v1, v1, -0x1

    :goto_1f
    if-ltz v1, :cond_2c

    sget-object v2, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    aget-char v2, v2, v1

    aput-char v2, p0, p3

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    :cond_2c
    goto :goto_60

    :cond_2d
    if-eqz p4, :cond_32

    const/4 v1, 0x3

    if-ge p5, v1, :cond_36

    :cond_32
    const/16 v1, 0x63

    if-le p1, v1, :cond_42

    :cond_36
    div-int/lit8 v1, p1, 0x64

    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    add-int/lit8 p3, p3, 0x1

    mul-int/lit8 v2, v1, 0x64

    sub-int/2addr p1, v2

    :cond_42
    if-eqz p4, :cond_47

    const/4 v1, 0x2

    if-ge p5, v1, :cond_4d

    :cond_47
    const/16 v1, 0x9

    if-gt p1, v1, :cond_4d

    if-eq v0, p3, :cond_59

    :cond_4d
    div-int/lit8 v1, p1, 0xa

    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    add-int/lit8 p3, p3, 0x1

    mul-int/lit8 v2, v1, 0xa

    sub-int/2addr p1, v2

    :cond_59
    add-int/lit8 v1, p1, 0x30

    int-to-char v1, v1

    aput-char v1, p0, p3

    add-int/lit8 p3, p3, 0x1

    :goto_60
    aput-char p2, p0, p3

    add-int/lit8 p3, p3, 0x1

    :cond_64
    return p3
.end method
