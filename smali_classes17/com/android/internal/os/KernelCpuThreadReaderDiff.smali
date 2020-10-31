.class public Lcom/android/internal/os/KernelCpuThreadReaderDiff;
.super Ljava/lang/Object;
.source "KernelCpuThreadReaderDiff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;
    }
.end annotation


# static fields
.field private static final OTHER_THREADS_ID:I = -0x1

.field private static final OTHER_THREADS_NAME:Ljava/lang/String; = "__OTHER_THREADS"

.field private static final TAG:Ljava/lang/String; = "KernelCpuThreadReaderDiff"


# instance fields
.field private mMinimumTotalCpuUsageMillis:I

.field private mPreviousCpuUsage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;",
            "[I>;"
        }
    .end annotation
.end field

.field private final mReader:Lcom/android/internal/os/KernelCpuThreadReader;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/KernelCpuThreadReader;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/KernelCpuThreadReader;

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mReader:Lcom/android/internal/os/KernelCpuThreadReader;

    iput p2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mMinimumTotalCpuUsageMillis:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    return-void
.end method

.method private static addToCpuUsage([I[I)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method private applyThresholding(Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;)V
    .registers 8

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_7
    iget-object v3, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    iget-object v3, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    iget v4, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mMinimumTotalCpuUsageMillis:I

    iget-object v5, v3, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    invoke-static {v5}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->totalCpuUsage([I)I

    move-result v5

    if-le v4, v5, :cond_2e

    if-nez v0, :cond_28

    iget-object v4, v3, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v4, v4

    new-array v0, v4, [I

    :cond_28
    iget-object v4, v3, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    invoke-static {v0, v4}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->addToCpuUsage([I[I)V

    goto :goto_31

    :cond_2e
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_34
    if-eqz v0, :cond_41

    new-instance v2, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    const/4 v3, -0x1

    const-string v4, "__OTHER_THREADS"

    invoke-direct {v2, v3, v4, v0}, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;-><init>(ILjava/lang/String;[I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    iput-object v1, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    return-void
.end method

.method private static changeToDiffs(Ljava/util/Map;Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;",
            "[I>;",
            "Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    iget-object v1, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    new-instance v2, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;

    iget v3, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    iget v4, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    iget-object v5, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    if-nez v3, :cond_2b

    iget-object v4, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v4, v4

    new-array v3, v4, [I

    :cond_2b
    iget-object v4, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    invoke-static {v4, v3}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->cpuTimeDiff([I[I)[I

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_36
    return-void
.end method

.method private static cpuTimeDiff([I[I)[I
    .registers 6

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_11

    aget v2, p0, v1

    aget v3, p1, v1

    sub-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    return-object v0
.end method

.method private static createCpuUsageMap(Ljava/util/List;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;",
            "[I>;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    const/4 v3, 0x0

    :goto_13
    iget-object v4, v2, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_38

    iget-object v4, v2, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    new-instance v5, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;

    iget v6, v2, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    iget v7, v4, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    iget-object v8, v2, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    iget-object v9, v4, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3b
    return-object v0
.end method

.method private static totalCpuUsage([I)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_b

    aget v2, p0, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    return v0
.end method


# virtual methods
.method public getCpuFrequenciesKhz()[I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mReader:Lcom/android/internal/os/KernelCpuThreadReader;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuThreadReader;->getCpuFrequenciesKhz()[I

    move-result-object v0

    return-object v0
.end method

.method public getProcessCpuUsageDiffed()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mReader:Lcom/android/internal/os/KernelCpuThreadReader;

    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuThreadReader;->getProcessCpuUsage()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->createCpuUsageMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    move-object v0, v2

    iget-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_30

    if-nez v2, :cond_14

    const/4 v2, 0x0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    return-object v2

    :cond_14
    const/4 v2, 0x0

    :goto_15
    :try_start_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    invoke-static {v4, v3}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->changeToDiffs(Ljava/util/Map;Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;)V

    invoke-direct {p0, v3}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->applyThresholding(Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;)V
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_30

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2c
    nop

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    return-object v1

    :catchall_30
    move-exception v1

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    throw v1
.end method

.method setMinimumTotalCpuUsageMillis(I)V
    .registers 4

    if-gez p1, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative minimumTotalCpuUsageMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KernelCpuThreadReaderDiff"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    iput p1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mMinimumTotalCpuUsageMillis:I

    return-void
.end method
