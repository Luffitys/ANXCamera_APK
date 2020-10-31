.class public Lcom/android/internal/os/KernelCpuThreadReader;
.super Ljava/lang/Object;
.source "KernelCpuThreadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelCpuThreadReader$Injector;,
        Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;,
        Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;,
        Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;
    }
.end annotation


# static fields
.field private static final CPU_STATISTICS_FILENAME:Ljava/lang/String; = "time_in_state"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_INITIAL_TIME_IN_STATE_PATH:Ljava/nio/file/Path;

.field private static final DEFAULT_PROCESS_NAME:Ljava/lang/String; = "unknown_process"

.field private static final DEFAULT_PROC_PATH:Ljava/nio/file/Path;

.field private static final DEFAULT_THREAD_NAME:Ljava/lang/String; = "unknown_thread"

.field private static final ID_ERROR:I = -0x1

.field private static final PROCESS_DIRECTORY_FILTER:Ljava/lang/String; = "[0-9]*"

.field private static final PROCESS_NAME_FILENAME:Ljava/lang/String; = "cmdline"

.field private static final TAG:Ljava/lang/String; = "KernelCpuThreadReader"

.field private static final THREAD_NAME_FILENAME:Ljava/lang/String; = "comm"


# instance fields
.field private mFrequenciesKhz:[I

.field private mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

.field private final mInjector:Lcom/android/internal/os/KernelCpuThreadReader$Injector;

.field private final mProcPath:Ljava/nio/file/Path;

.field private final mProcTimeInStateReader:Lcom/android/internal/os/ProcTimeInStateReader;

.field private mUidPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/proc"

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelCpuThreadReader;->DEFAULT_PROC_PATH:Ljava/nio/file/Path;

    nop

    const-string/jumbo v1, "self/time_in_state"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelCpuThreadReader;->DEFAULT_INITIAL_TIME_IN_STATE_PATH:Ljava/nio/file/Path;

    return-void
.end method

.method public constructor <init>(ILjava/util/function/Predicate;Ljava/nio/file/Path;Ljava/nio/file/Path;Lcom/android/internal/os/KernelCpuThreadReader$Injector;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lcom/android/internal/os/KernelCpuThreadReader$Injector;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mUidPredicate:Ljava/util/function/Predicate;

    iput-object p3, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcPath:Ljava/nio/file/Path;

    new-instance v0, Lcom/android/internal/os/ProcTimeInStateReader;

    invoke-direct {v0, p4}, Lcom/android/internal/os/ProcTimeInStateReader;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcTimeInStateReader:Lcom/android/internal/os/ProcTimeInStateReader;

    iput-object p5, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mInjector:Lcom/android/internal/os/KernelCpuThreadReader$Injector;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelCpuThreadReader;->setNumBuckets(I)V

    return-void
.end method

.method public static create(ILjava/util/function/Predicate;)Lcom/android/internal/os/KernelCpuThreadReader;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/internal/os/KernelCpuThreadReader;"
        }
    .end annotation

    :try_start_0
    new-instance v6, Lcom/android/internal/os/KernelCpuThreadReader;

    sget-object v3, Lcom/android/internal/os/KernelCpuThreadReader;->DEFAULT_PROC_PATH:Ljava/nio/file/Path;

    sget-object v4, Lcom/android/internal/os/KernelCpuThreadReader;->DEFAULT_INITIAL_TIME_IN_STATE_PATH:Ljava/nio/file/Path;

    new-instance v5, Lcom/android/internal/os/KernelCpuThreadReader$Injector;

    invoke-direct {v5}, Lcom/android/internal/os/KernelCpuThreadReader$Injector;-><init>()V

    move-object v0, v6

    move v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/KernelCpuThreadReader;-><init>(ILjava/util/function/Predicate;Ljava/nio/file/Path;Ljava/nio/file/Path;Lcom/android/internal/os/KernelCpuThreadReader$Injector;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v6

    :catch_12
    move-exception v0

    const-string v1, "KernelCpuThreadReader"

    const-string v2, "Failed to initialize KernelCpuThreadReader"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private getProcessCpuUsage(Ljava/nio/file/Path;II)Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    .registers 11

    const-string/jumbo v0, "task"

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_d
    invoke-static {v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v3
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_50
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_d .. :try_end_11} :catch_50

    :try_start_11
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    invoke-direct {p0, v5}, Lcom/android/internal/os/KernelCpuThreadReader;->getThreadCpuUsage(Ljava/nio/file/Path;)Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    move-result-object v6

    if-nez v6, :cond_28

    goto :goto_15

    :cond_28
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_44

    nop

    goto :goto_15

    :cond_2d
    if-eqz v3, :cond_32

    :try_start_2f
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_50
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_2f .. :try_end_32} :catch_50

    :cond_32
    nop

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3a

    return-object v2

    :cond_3a
    new-instance v2, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelCpuThreadReader;->getProcessName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3, p3, v1}, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;-><init>(ILjava/lang/String;ILjava/util/ArrayList;)V

    return-object v2

    :catchall_44
    move-exception v4

    if-eqz v3, :cond_4f

    :try_start_47
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception v5

    :try_start_4c
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4f
    :goto_4f
    throw v4
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_50} :catch_50
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_4c .. :try_end_50} :catch_50

    :catch_50
    move-exception v3

    return-object v2
.end method

.method private getProcessId(Ljava/nio/file/Path;)I
    .registers 6

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    :catch_d
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as process ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KernelCpuThreadReader"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x1

    return v2
.end method

.method private getProcessName(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 5

    const-string v0, "cmdline"

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/ProcStatsUtil;->readSingleLineProcFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    return-object v1

    :cond_11
    const-string/jumbo v2, "unknown_process"

    return-object v2
.end method

.method private getThreadCpuUsage(Ljava/nio/file/Path;)Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_d} :catch_2f

    move v1, v2

    nop

    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelCpuThreadReader;->getThreadName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "time_in_state"

    invoke-interface {p1, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcTimeInStateReader:Lcom/android/internal/os/ProcTimeInStateReader;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/ProcTimeInStateReader;->getUsageTimesMillis(Ljava/nio/file/Path;)[J

    move-result-object v4

    if-nez v4, :cond_23

    return-object v0

    :cond_23
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    invoke-virtual {v0, v4}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->bucketValues([J)[I

    move-result-object v0

    new-instance v5, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    invoke-direct {v5, v1, v2, v0}, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;-><init>(ILjava/lang/String;[I)V

    return-object v5

    :catch_2f
    move-exception v1

    const-string v2, "KernelCpuThreadReader"

    const-string v3, "Failed to parse thread ID when iterating over /proc/*/task"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private getThreadName(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 5

    const-string v0, "comm"

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/ProcStatsUtil;->readNullSeparatedFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    const-string/jumbo v2, "unknown_thread"

    return-object v2

    :cond_14
    return-object v1
.end method


# virtual methods
.method public getCpuFrequenciesKhz()[I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    return-object v0
.end method

.method public getProcessCpuUsage()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;",
            ">;"
        }
    .end annotation

    const-string v0, "KernelCpuThreadReader"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_8
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcPath:Ljava/nio/file/Path;

    const-string v4, "[0-9]*"

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;

    move-result-object v3
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_67

    :try_start_10
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    invoke-direct {p0, v5}, Lcom/android/internal/os/KernelCpuThreadReader;->getProcessId(Ljava/nio/file/Path;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mInjector:Lcom/android/internal/os/KernelCpuThreadReader$Injector;

    invoke-virtual {v7, v6}, Lcom/android/internal/os/KernelCpuThreadReader$Injector;->getUidForPid(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_14

    if-ne v6, v8, :cond_30

    goto :goto_14

    :cond_30
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mUidPredicate:Ljava/util/function/Predicate;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3d

    goto :goto_14

    :cond_3d
    nop

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/os/KernelCpuThreadReader;->getProcessCpuUsage(Ljava/nio/file/Path;II)Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    move-result-object v8

    if-eqz v8, :cond_47

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_10 .. :try_end_47} :catchall_5b

    :cond_47
    goto :goto_14

    :cond_48
    if-eqz v3, :cond_4d

    :try_start_4a
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_67

    :cond_4d
    nop

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5a

    const-string v3, "Didn\'t successfully get any process CPU information for UIDs specified"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_5a
    return-object v1

    :catchall_5b
    move-exception v4

    if-eqz v3, :cond_66

    :try_start_5e
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_66

    :catchall_62
    move-exception v5

    :try_start_63
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_66
    :goto_66
    throw v4
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_67} :catch_67

    :catch_67
    move-exception v3

    const-string v4, "Failed to iterate over process paths"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method setNumBuckets(I)V
    .registers 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number of buckets must be at least 1, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KernelCpuThreadReader"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    if-eqz v0, :cond_22

    array-length v0, v0

    if-ne v0, p1, :cond_22

    return-void

    :cond_22
    new-instance v0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    iget-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcTimeInStateReader:Lcom/android/internal/os/ProcTimeInStateReader;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcTimeInStateReader;->getFrequenciesKhz()[J

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;-><init>([JI)V

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    iget-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcTimeInStateReader:Lcom/android/internal/os/ProcTimeInStateReader;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcTimeInStateReader;->getFrequenciesKhz()[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->bucketFrequencies([J)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    return-void
.end method

.method setUidPredicate(Ljava/util/function/Predicate;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mUidPredicate:Ljava/util/function/Predicate;

    return-void
.end method
