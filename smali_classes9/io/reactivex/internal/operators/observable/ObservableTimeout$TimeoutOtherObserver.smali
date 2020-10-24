.class final Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source ""

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/operators/observable/ObservableTimeout$OnTimeout;


# static fields
.field private static final serialVersionUID:J = -0x1b2b8cce8b3b5a72L


# instance fields
.field final actual:Lio/reactivex/Observer;

.field final arbiter:Lio/reactivex/internal/disposables/ObserverFullArbiter;

.field done:Z

.field final firstTimeoutIndicator:Lio/reactivex/ObservableSource;

.field volatile index:J

.field final itemTimeoutIndicator:Lio/reactivex/functions/Function;

.field final other:Lio/reactivex/ObservableSource;

.field s:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;Lio/reactivex/ObservableSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->actual:Lio/reactivex/Observer;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->firstTimeoutIndicator:Lio/reactivex/ObservableSource;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->other:Lio/reactivex/ObservableSource;

    new-instance p2, Lio/reactivex/internal/disposables/ObserverFullArbiter;

    const/16 p3, 0x8

    invoke-direct {p2, p1, p0, p3}, Lio/reactivex/internal/disposables/ObserverFullArbiter;-><init>(Lio/reactivex/Observer;Lio/reactivex/disposables/Disposable;I)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->arbiter:Lio/reactivex/internal/disposables/ObserverFullArbiter;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public innerError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {p0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->done:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->arbiter:Lio/reactivex/internal/disposables/ObserverFullArbiter;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/disposables/ObserverFullArbiter;->onComplete(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->done:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->done:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->arbiter:Lio/reactivex/internal/disposables/ObserverFullArbiter;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-virtual {v0, p1, p0}, Lio/reactivex/internal/disposables/ObserverFullArbiter;->onError(Ljava/lang/Throwable;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->index:J

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->arbiter:Lio/reactivex/internal/disposables/ObserverFullArbiter;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-virtual {v2, p1, v3}, Lio/reactivex/internal/disposables/ObserverFullArbiter;->onNext(Ljava/lang/Object;Lio/reactivex/disposables/Disposable;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/disposables/Disposable;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_2
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    invoke-interface {v3, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "The ObservableSource returned is null"

    invoke-static {p1, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/ObservableSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;

    invoke-direct {v3, p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableTimeout$OnTimeout;J)V

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {p1, v3}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {p0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->s:Lio/reactivex/disposables/Disposable;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->arbiter:Lio/reactivex/internal/disposables/ObserverFullArbiter;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/ObserverFullArbiter;->setDisposable(Lio/reactivex/disposables/Disposable;)Z

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->actual:Lio/reactivex/Observer;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->firstTimeoutIndicator:Lio/reactivex/ObservableSource;

    if-eqz v0, :cond_0

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p0, v2, v3}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutInnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableTimeout$OnTimeout;J)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->arbiter:Lio/reactivex/internal/disposables/ObserverFullArbiter;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->arbiter:Lio/reactivex/internal/disposables/ObserverFullArbiter;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public timeout(J)V
    .locals 2

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->index:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->dispose()V

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->other:Lio/reactivex/ObservableSource;

    new-instance p2, Lio/reactivex/internal/observers/FullArbiterObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->arbiter:Lio/reactivex/internal/disposables/ObserverFullArbiter;

    invoke-direct {p2, p0}, Lio/reactivex/internal/observers/FullArbiterObserver;-><init>(Lio/reactivex/internal/disposables/ObserverFullArbiter;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method
