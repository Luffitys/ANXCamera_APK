.class public Lcom/google/android/play/core/splitcompat/SplitCompat;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final sSplitCompatReference:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/play/core/splitcompat/SplitCompat;->sSplitCompatReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hasInstance()Z
    .locals 1

    sget-object v0, Lcom/google/android/play/core/splitcompat/SplitCompat;->sSplitCompatReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static install(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/play/core/splitcompat/SplitCompat;->installInternal(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static installInternal(Landroid/content/Context;)Z
    .locals 2

    sget-object p0, Lcom/google/android/play/core/splitcompat/SplitCompat;->sSplitCompatReference:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/play/core/splitcompat/SplitCompat;

    invoke-direct {v0}, Lcom/google/android/play/core/splitcompat/SplitCompat;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/play/core/splitcompat/SplitCompat;->sSplitCompatReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/play/core/splitcompat/SplitCompat;

    new-instance v0, Lcom/google/android/play/core/splitcompat/SplitSessionLoaderImpl;

    sget-object v1, Lcom/google/android/play/core/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Lcom/google/android/play/core/splitcompat/SplitSessionLoaderImpl;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/SplitSessionLoaderSingleton;->set(Lcom/google/android/play/core/splitinstall/SplitSessionLoader;)V

    new-instance v0, Lcom/google/android/play/core/splitcompat/LoadedSplitFetcherImpl;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/splitcompat/LoadedSplitFetcherImpl;-><init>(Lcom/google/android/play/core/splitcompat/SplitCompat;)V

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/LoadedSplitFetcherSingleton;->set(Lcom/google/android/play/core/splitinstall/LoadedSplitFetcher;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method final getLoadedSplits()Ljava/util/Set;
    .locals 0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getLoadedSplitNames()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
