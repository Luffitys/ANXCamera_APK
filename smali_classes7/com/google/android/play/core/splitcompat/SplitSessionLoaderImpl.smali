.class final Lcom/google/android/play/core/splitcompat/SplitSessionLoaderImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/splitinstall/SplitSessionLoader;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/SplitSessionLoaderImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public load(Ljava/util/List;Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;)V
    .locals 1

    invoke-static {}, Lcom/google/android/play/core/splitcompat/SplitCompat;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/play/core/splitcompat/SplitSessionLoaderImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/play/core/splitcompat/SplitLoadSessionTask;

    invoke-direct {v0, p1, p2}, Lcom/google/android/play/core/splitcompat/SplitLoadSessionTask;-><init>(Ljava/util/List;Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Ingestion should only be called in SplitCompat mode."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
