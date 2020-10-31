.class public Lcom/android/internal/util/ProviderAccessStats;
.super Ljava/lang/Object;
.source "ProviderAccessStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ProviderAccessStats$PerThreadData;
    }
.end annotation


# instance fields
.field private final mAllCallingUids:Landroid/util/SparseBooleanArray;

.field private final mBatchStats:Landroid/util/SparseLongArray;

.field private final mDeleteInBatchStats:Landroid/util/SparseLongArray;

.field private final mDeleteStats:Landroid/util/SparseLongArray;

.field private final mInsertInBatchStats:Landroid/util/SparseLongArray;

.field private final mInsertStats:Landroid/util/SparseLongArray;

.field private final mLock:Ljava/lang/Object;

.field private final mOperationDurationMillis:Landroid/util/SparseLongArray;

.field private final mQueryStats:Landroid/util/SparseLongArray;

.field private final mStartUptime:J

.field private final mThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/internal/util/ProviderAccessStats$PerThreadData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateInBatchStats:Landroid/util/SparseLongArray;

.field private final mUpdateStats:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mStartUptime:J

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseLongArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mQueryStats:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mBatchStats:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertStats:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateStats:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteStats:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertInBatchStats:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateInBatchStats:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v2}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteInBatchStats:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mOperationDurationMillis:Landroid/util/SparseLongArray;

    sget-object v0, Lcom/android/internal/util/-$$Lambda$ProviderAccessStats$9AhC6lKURctNKuYjVd-wu7jn6_c;->INSTANCE:Lcom/android/internal/util/-$$Lambda$ProviderAccessStats$9AhC6lKURctNKuYjVd-wu7jn6_c;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private incrementStats(ILandroid/util/SparseLongArray;)V
    .registers 8

    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p2, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v1, p0, Lcom/android/internal/util/ProviderAccessStats;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2c

    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;

    iget v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    iget v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    if-ne v1, v2, :cond_2b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->startUptimeMillis:J

    :cond_2b
    return-void

    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private incrementStats(IZLandroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V
    .registers 6

    if-eqz p2, :cond_4

    move-object v0, p4

    goto :goto_5

    :cond_4
    move-object v0, p3

    :goto_5
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(ILandroid/util/SparseLongArray;)V

    return-void
.end method

.method static synthetic lambda$new$0()Lcom/android/internal/util/ProviderAccessStats$PerThreadData;
    .registers 2

    new-instance v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;-><init>(Lcom/android/internal/util/ProviderAccessStats$1;)V

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 13

    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "  Process uptime: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/util/ProviderAccessStats;->mStartUptime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " minutes"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Client activities:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  UID        Query  Insert Update Delete   Batch Insert Update Delete          Sec"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2f
    iget-object v2, p0, Lcom/android/internal/util/ProviderAccessStats;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_d6

    iget-object v2, p0, Lcom/android/internal/util/ProviderAccessStats;->mAllCallingUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  %-9d %6d  %6d %6d %6d  %6d %6d %6d %6d %12.3f"

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/android/internal/util/ProviderAccessStats;->mQueryStats:Landroid/util/SparseLongArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/internal/util/ProviderAccessStats;->mBatchStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertInBatchStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateInBatchStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteInBatchStats:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/internal/util/ProviderAccessStats;->mOperationDurationMillis:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2f

    :cond_d6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    monitor-exit v0

    return-void

    :catchall_db
    move-exception v1

    monitor-exit v0
    :try_end_dd
    .catchall {:try_start_3 .. :try_end_dd} :catchall_db

    throw v1
.end method

.method public finishOperation(I)V
    .registers 9

    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;

    iget v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    iget v1, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->nestCount:I

    if-nez v1, :cond_33

    const-wide/16 v1, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;->startUptimeMillis:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/internal/util/ProviderAccessStats;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_22
    iget-object v4, p0, Lcom/android/internal/util/ProviderAccessStats;->mOperationDurationMillis:Landroid/util/SparseLongArray;

    iget-object v5, p0, Lcom/android/internal/util/ProviderAccessStats;->mOperationDurationMillis:Landroid/util/SparseLongArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    add-long/2addr v5, v1

    invoke-virtual {v4, p1, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    monitor-exit v3

    goto :goto_33

    :catchall_30
    move-exception v4

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_30

    throw v4

    :cond_33
    :goto_33
    return-void
.end method

.method public final incrementBatchStats(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mBatchStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(ILandroid/util/SparseLongArray;)V

    return-void
.end method

.method public final incrementDeleteStats(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteStats:Landroid/util/SparseLongArray;

    iget-object v1, p0, Lcom/android/internal/util/ProviderAccessStats;->mDeleteInBatchStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(IZLandroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V

    return-void
.end method

.method public final incrementInsertStats(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertStats:Landroid/util/SparseLongArray;

    iget-object v1, p0, Lcom/android/internal/util/ProviderAccessStats;->mInsertInBatchStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(IZLandroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V

    return-void
.end method

.method public final incrementQueryStats(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mQueryStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(ILandroid/util/SparseLongArray;)V

    return-void
.end method

.method public final incrementUpdateStats(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateStats:Landroid/util/SparseLongArray;

    iget-object v1, p0, Lcom/android/internal/util/ProviderAccessStats;->mUpdateInBatchStats:Landroid/util/SparseLongArray;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/util/ProviderAccessStats;->incrementStats(IZLandroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V

    return-void
.end method
