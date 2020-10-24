.class public Lcom/google/android/play/core/tasks/TaskExecutors;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final MAIN_THREAD:Ljava/util/concurrent/Executor;

.field static final sExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/tasks/TaskExecutors$MainThreadExecutor;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskExecutors$MainThreadExecutor;-><init>()V

    sput-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/play/core/tasks/TaskExecutor;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskExecutor;-><init>()V

    sput-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->sExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
