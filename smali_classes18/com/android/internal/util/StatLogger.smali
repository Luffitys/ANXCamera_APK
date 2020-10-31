.class public Lcom/android/internal/util/StatLogger;
.super Ljava/lang/Object;
.source "StatLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatLogger"


# instance fields
.field private final SIZE:I

.field private final mCallsPerSecond:[I

.field private final mCountStats:[I

.field private final mDurationPerSecond:[J

.field private final mDurationStats:[J

.field private final mLabels:[Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mMaxCallsPerSecond:[I

.field private final mMaxDurationPerSecond:[J

.field private final mMaxDurationStats:[J

.field private mNextTickTime:J


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mLock:Ljava/lang/Object;

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/util/StatLogger;->mNextTickTime:J

    array-length v0, p1

    iput v0, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/util/StatLogger;->mCountStats:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/util/StatLogger;->mDurationStats:[J

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    iput-object p1, p0, Lcom/android/internal/util/StatLogger;->mLabels:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 14

    iget-object v0, p0, Lcom/android/internal/util/StatLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Stats:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v1, 0x0

    :goto_c
    iget v2, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    if-ge v1, v2, :cond_77

    iget-object v2, p0, Lcom/android/internal/util/StatLogger;->mCountStats:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mDurationStats:[J

    aget-wide v3, v3, v1

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    const-string v7, "%s: count=%d, total=%.1fms, avg=%.3fms, max calls/s=%d max dur/s=%.1fms max time=%.1fms"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/util/StatLogger;->mLabels:[Ljava/lang/String;

    aget-object v10, v10, v1

    aput-object v10, v8, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    if-nez v2, :cond_3f

    const-wide/16 v10, 0x0

    goto :goto_42

    :cond_3f
    int-to-double v10, v2

    div-double v10, v3, v10

    :goto_42
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget-object v10, p0, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    aget v10, v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget-object v10, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    aget-wide v10, v10, v1

    long-to-double v10, v10

    div-double/2addr v10, v5

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    iget-object v10, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    aget-wide v10, v10, v1

    long-to-double v10, v10

    div-double/2addr v10, v5

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_77
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v0

    return-void

    :catchall_7c
    move-exception v1

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_3 .. :try_end_7e} :catchall_7c

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StatLogger;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 14

    iget-object v0, p0, Lcom/android/internal/util/StatLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const/4 v3, 0x0

    :goto_8
    iget-object v4, p0, Lcom/android/internal/util/StatLogger;->mLabels:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_6c

    const-wide v4, 0x20b00000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10500000001L

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10900000002L

    iget-object v8, p0, Lcom/android/internal/util/StatLogger;->mLabels:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x10500000003L

    iget-object v8, p0, Lcom/android/internal/util/StatLogger;->mCountStats:[I

    aget v8, v8, v3

    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10300000004L

    iget-object v8, p0, Lcom/android/internal/util/StatLogger;->mDurationStats:[J

    aget-wide v8, v8, v3

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10500000005L

    iget-object v8, p0, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    aget v8, v8, v3

    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10300000006L

    iget-object v8, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    aget-wide v8, v8, v3

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10300000007L

    iget-object v8, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    aget-wide v8, v8, v3

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_6c
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    monitor-exit v0

    return-void

    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public getTime()J
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public logDurationStat(IJ)J
    .registers 13

    iget-object v0, p0, Lcom/android/internal/util/StatLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v1

    sub-long/2addr v1, p2

    if-ltz p1, :cond_7a

    iget v3, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    if-ge p1, v3, :cond_7a

    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mCountStats:[I

    aget v4, v3, p1

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, p1

    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mDurationStats:[J

    aget-wide v4, v3, p1

    add-long/2addr v4, v1

    aput-wide v4, v3, p1

    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    aget-wide v3, v3, p1

    cmp-long v3, v3, v1

    if-gez v3, :cond_29

    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    aput-wide v1, v3, p1

    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/util/StatLogger;->mNextTickTime:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_69

    iget-object v5, p0, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    aget v5, v5, p1

    iget-object v6, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    aget v6, v6, p1

    if-ge v5, v6, :cond_45

    iget-object v5, p0, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    iget-object v6, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    aget v6, v6, p1

    aput v6, v5, p1

    :cond_45
    iget-object v5, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    aget-wide v5, v5, p1

    iget-object v7, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    aget-wide v7, v7, p1

    cmp-long v5, v5, v7

    if-gez v5, :cond_59

    iget-object v5, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    iget-object v6, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    aget-wide v6, v6, p1

    aput-wide v6, v5, p1

    :cond_59
    iget-object v5, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    const/4 v6, 0x0

    aput v6, v5, p1

    iget-object v5, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    const-wide/16 v6, 0x0

    aput-wide v6, v5, p1

    const-wide/16 v5, 0x3e8

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/internal/util/StatLogger;->mNextTickTime:J

    :cond_69
    iget-object v5, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    aget v6, v5, p1

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, p1

    iget-object v5, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    aget-wide v6, v5, p1

    add-long/2addr v6, v1

    aput-wide v6, v5, p1

    monitor-exit v0

    return-wide v1

    :cond_7a
    const-string v3, "StatLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid event ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-wide v1

    :catchall_92
    move-exception v1

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_3 .. :try_end_94} :catchall_92

    throw v1
.end method
