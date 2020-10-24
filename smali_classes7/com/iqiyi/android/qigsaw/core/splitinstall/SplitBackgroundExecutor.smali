.class final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitBackgroundExecutor;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final sExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitBackgroundThread;

    invoke-direct {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitBackgroundThread;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitBackgroundExecutor;->sExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitBackgroundExecutor;->sExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method
