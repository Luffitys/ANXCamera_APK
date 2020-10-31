.class public final Lcom/android/internal/inputmethod/CancellationGroup;
.super Ljava/lang/Object;
.source "CancellationGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/CancellationGroup$Completable;
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field private mLatchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLatchList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mCanceled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/inputmethod/CancellationGroup;Ljava/util/concurrent/CountDownLatch;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/CancellationGroup;->registerLatch(Ljava/util/concurrent/CountDownLatch;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/inputmethod/CancellationGroup;Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterLatch(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private registerLatch(Ljava/util/concurrent/CountDownLatch;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mCanceled:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_a
    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLatchList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-nez v1, :cond_16

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLatchList:Ljava/util/ArrayList;

    :cond_16
    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLatchList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return v2

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private unregisterLatch(Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLatchList:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLatchList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method


# virtual methods
.method public cancelAll()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mCanceled:Z

    if-nez v1, :cond_1d

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mCanceled:Z

    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLatchList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLatchList:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/inputmethod/-$$Lambda$wMDtnoultRQpGB37stq5CwJoQnU;->INSTANCE:Lcom/android/internal/inputmethod/-$$Lambda$wMDtnoultRQpGB37stq5CwJoQnU;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLatchList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLatchList:Ljava/util/ArrayList;

    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public createCompletableCharSequence()Lcom/android/internal/inputmethod/CancellationGroup$Completable$CharSequence;
    .registers 3

    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$CharSequence;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/inputmethod/CancellationGroup$Completable$CharSequence;-><init>(Lcom/android/internal/inputmethod/CancellationGroup;Lcom/android/internal/inputmethod/CancellationGroup$1;)V

    return-object v0
.end method

.method public createCompletableExtractedText()Lcom/android/internal/inputmethod/CancellationGroup$Completable$ExtractedText;
    .registers 3

    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ExtractedText;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ExtractedText;-><init>(Lcom/android/internal/inputmethod/CancellationGroup;Lcom/android/internal/inputmethod/CancellationGroup$1;)V

    return-object v0
.end method

.method public createCompletableInt()Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;
    .registers 3

    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/inputmethod/CancellationGroup$Completable$Int;-><init>(Lcom/android/internal/inputmethod/CancellationGroup;Lcom/android/internal/inputmethod/CancellationGroup$1;)V

    return-object v0
.end method

.method public isCanceled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mCanceled:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
