.class final Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source ""

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# static fields
.field private static final serialVersionUID:J = -0x55bcb3aaa8a061f8L


# instance fields
.field final actual:Lio/reactivex/Observer;

.field volatile cancelled:Z

.field final comparer:Lio/reactivex/functions/BiPredicate;

.field final first:Lio/reactivex/ObservableSource;

.field final observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

.field final resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

.field final second:Lio/reactivex/ObservableSource;

.field v1:Ljava/lang/Object;

.field v2:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;ILio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/ObservableSource;

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/ObservableSource;

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->comparer:Lio/reactivex/functions/BiPredicate;

    const/4 p1, 0x2

    new-array p3, p1, [Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    new-instance p4, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5, p2}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;II)V

    aput-object p4, p3, p5

    new-instance p4, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    const/4 p5, 0x1

    invoke-direct {p4, p0, p5, p2}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;II)V

    aput-object p4, p3, p5

    new-instance p2, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-direct {p2, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;-><init>(I)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    return-void
.end method


# virtual methods
.method cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    invoke-virtual {p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    invoke-virtual {p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    iget-object v1, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    aget-object p0, p0, v0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    :cond_0
    return-void
.end method

.method drain()V
    .locals 13

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iget-object v4, v3, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    const/4 v5, 0x1

    aget-object v1, v1, v5

    iget-object v6, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    move v7, v5

    :cond_1
    iget-boolean v8, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    invoke-virtual {v6}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    return-void

    :cond_2
    iget-boolean v8, v3, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->done:Z

    if-eqz v8, :cond_3

    iget-object v9, v3, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->error:Ljava/lang/Throwable;

    if-eqz v9, :cond_3

    invoke-virtual {p0, v4, v6}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {p0, v9}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-boolean v9, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->done:Z

    if-eqz v9, :cond_4

    iget-object v10, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->error:Ljava/lang/Throwable;

    if-eqz v10, :cond_4

    invoke-virtual {p0, v4, v6}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {p0, v10}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    if-nez v10, :cond_5

    invoke-virtual {v4}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    :cond_5
    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    if-nez v10, :cond_6

    move v10, v5

    goto :goto_0

    :cond_6
    move v10, v2

    :goto_0
    iget-object v11, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    if-nez v11, :cond_7

    invoke-virtual {v6}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v11

    iput-object v11, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    :cond_7
    iget-object v11, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    if-nez v11, :cond_8

    move v11, v5

    goto :goto_1

    :cond_8
    move v11, v2

    :goto_1
    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    if-eqz v10, :cond_9

    if-eqz v11, :cond_9

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {p0}, Lio/reactivex/Observer;->onComplete()V

    return-void

    :cond_9
    if-eqz v8, :cond_a

    if-eqz v9, :cond_a

    if-eq v10, v11, :cond_a

    invoke-virtual {p0, v4, v6}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {p0}, Lio/reactivex/Observer;->onComplete()V

    return-void

    :cond_a
    if-nez v10, :cond_c

    if-nez v11, :cond_c

    :try_start_0
    iget-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->comparer:Lio/reactivex/functions/BiPredicate;

    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    iget-object v12, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    invoke-interface {v8, v9, v12}, Lio/reactivex/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_b

    invoke-virtual {p0, v4, v6}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {p0}, Lio/reactivex/Observer;->onComplete()V

    return-void

    :cond_b
    const/4 v8, 0x0

    iput-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    iput-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4, v6}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {p0, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_c
    :goto_2
    if-nez v10, :cond_d

    if-eqz v11, :cond_1

    :cond_d
    neg-int v7, v7

    invoke-virtual {p0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_1

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    return p0
.end method

.method setDisposable(Lio/reactivex/disposables/Disposable;I)Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {p0, p2, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->setResource(ILio/reactivex/disposables/Disposable;)Z

    move-result p0

    return p0
.end method

.method subscribe()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/ObservableSource;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/ObservableSource;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {p0, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
