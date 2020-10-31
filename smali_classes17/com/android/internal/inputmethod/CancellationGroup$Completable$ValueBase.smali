.class public Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;
.super Ljava/lang/Object;
.source "CancellationGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/CancellationGroup$Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ValueBase"
.end annotation


# instance fields
.field protected mHasValue:Z

.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mParentGroup:Lcom/android/internal/inputmethod/CancellationGroup;

.field protected final mValueLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/android/internal/inputmethod/CancellationGroup;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->mValueLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->mHasValue:Z

    iput-object p1, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->mParentGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    return-void
.end method


# virtual methods
.method public await(ILjava/util/concurrent/TimeUnit;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->mParentGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    # invokes: Lcom/android/internal/inputmethod/CancellationGroup;->registerLatch(Ljava/util/concurrent/CountDownLatch;)Z
    invoke-static {v0, v1}, Lcom/android/internal/inputmethod/CancellationGroup;->access$000(Lcom/android/internal/inputmethod/CancellationGroup;Ljava/util/concurrent/CountDownLatch;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_13} :catch_24
    .catchall {:try_start_c .. :try_end_13} :catchall_1b

    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->mParentGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    iget-object v2, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    # invokes: Lcom/android/internal/inputmethod/CancellationGroup;->unregisterLatch(Ljava/util/concurrent/CountDownLatch;)V
    invoke-static {v1, v2}, Lcom/android/internal/inputmethod/CancellationGroup;->access$100(Lcom/android/internal/inputmethod/CancellationGroup;Ljava/util/concurrent/CountDownLatch;)V

    return v0

    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->mParentGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    iget-object v2, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    # invokes: Lcom/android/internal/inputmethod/CancellationGroup;->unregisterLatch(Ljava/util/concurrent/CountDownLatch;)V
    invoke-static {v1, v2}, Lcom/android/internal/inputmethod/CancellationGroup;->access$100(Lcom/android/internal/inputmethod/CancellationGroup;Ljava/util/concurrent/CountDownLatch;)V

    throw v0

    :catch_24
    move-exception v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->mParentGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    iget-object v3, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    # invokes: Lcom/android/internal/inputmethod/CancellationGroup;->unregisterLatch(Ljava/util/concurrent/CountDownLatch;)V
    invoke-static {v2, v3}, Lcom/android/internal/inputmethod/CancellationGroup;->access$100(Lcom/android/internal/inputmethod/CancellationGroup;Ljava/util/concurrent/CountDownLatch;)V

    return v1
.end method

.method public hasValue()Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->mValueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->mHasValue:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected onComplete()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup$Completable$ValueBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
