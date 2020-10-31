.class public Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;
.super Landroid/database/ContentObserver;
.source "KernelCpuThreadReaderSettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;
    }
.end annotation


# static fields
.field private static final COLLECTED_UIDS_DEFAULT:Ljava/lang/String; = "0-0;1000-1000"

.field private static final COLLECTED_UIDS_SETTINGS_KEY:Ljava/lang/String; = "collected_uids"

.field private static final MINIMUM_TOTAL_CPU_USAGE_MILLIS_DEFAULT:I = 0x2710

.field private static final MINIMUM_TOTAL_CPU_USAGE_MILLIS_SETTINGS_KEY:Ljava/lang/String; = "minimum_total_cpu_usage_millis"

.field private static final NUM_BUCKETS_DEFAULT:I = 0x8

.field private static final NUM_BUCKETS_SETTINGS_KEY:Ljava/lang/String; = "num_buckets"

.field private static final TAG:Ljava/lang/String; = "KernelCpuThreadReaderSettingsObserver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReader;

.field private final mKernelCpuThreadReaderDiff:Lcom/android/internal/os/KernelCpuThreadReaderDiff;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mContext:Landroid/content/Context;

    nop

    const-string v0, "0-0;1000-1000"

    invoke-static {v0}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;->fromString(Ljava/lang/String;)Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Lcom/android/internal/os/KernelCpuThreadReader;->create(ILjava/util/function/Predicate;)Lcom/android/internal/os/KernelCpuThreadReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReader;

    nop

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    goto :goto_25

    :cond_1d
    new-instance v1, Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    const/16 v2, 0x2710

    invoke-direct {v1, v0, v2}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;-><init>(Lcom/android/internal/os/KernelCpuThreadReader;I)V

    move-object v0, v1

    :goto_25
    iput-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mKernelCpuThreadReaderDiff:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    return-void
.end method

.method public static getSettingsModifiedReader(Landroid/content/Context;)Lcom/android/internal/os/KernelCpuThreadReaderDiff;
    .registers 5

    new-instance v0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;-><init>(Landroid/content/Context;)V

    const-string v1, "kernel_cpu_thread_reader"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, v0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mKernelCpuThreadReaderDiff:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    return-object v2
.end method

.method private updateReader()V
    .registers 6

    const-string v0, "KernelCpuThreadReaderSettingsObserver"

    iget-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReader;

    if-nez v1, :cond_7

    return-void

    :cond_7
    new-instance v1, Landroid/util/KeyValueListParser;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/util/KeyValueListParser;-><init>(C)V

    :try_start_e
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kernel_cpu_thread_reader"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_1d} :catch_54

    nop

    :try_start_1e
    const-string v2, "collected_uids"

    const-string v3, "0-0;1000-1000"

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;->fromString(Ljava/lang/String;)Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;

    move-result-object v0
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_2a} :catch_4d

    nop

    iget-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReader;

    const/16 v3, 0x8

    const-string/jumbo v4, "num_buckets"

    invoke-virtual {v1, v4, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/KernelCpuThreadReader;->setNumBuckets(I)V

    iget-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReader;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/KernelCpuThreadReader;->setUidPredicate(Ljava/util/function/Predicate;)V

    iget-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mKernelCpuThreadReaderDiff:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    const/16 v3, 0x2710

    const-string/jumbo v4, "minimum_total_cpu_usage_millis"

    invoke-virtual {v1, v4, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->setMinimumTotalCpuUsageMillis(I)V

    return-void

    :catch_4d
    move-exception v2

    const-string v3, "Failed to get UID predicate"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_54
    move-exception v2

    const-string v3, "Bad settings"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public onChange(ZLjava/util/Collection;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->updateReader()V

    return-void
.end method
