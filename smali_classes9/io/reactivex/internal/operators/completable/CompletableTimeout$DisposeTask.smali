.class final Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final s:Lio/reactivex/CompletableObserver;

.field final set:Lio/reactivex/disposables/CompositeDisposable;

.field final synthetic this$0:Lio/reactivex/internal/operators/completable/CompletableTimeout;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletableTimeout;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/CompletableObserver;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;->this$0:Lio/reactivex/internal/operators/completable/CompletableTimeout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;->set:Lio/reactivex/disposables/CompositeDisposable;

    iput-object p4, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;->s:Lio/reactivex/CompletableObserver;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;->this$0:Lio/reactivex/internal/operators/completable/CompletableTimeout;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableTimeout;->other:Lio/reactivex/CompletableSource;

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;->s:Lio/reactivex/CompletableObserver;

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-interface {p0, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask$DisposeObserver;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask$DisposeObserver;-><init>(Lio/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask;)V

    invoke-interface {v0, v1}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    :cond_1
    :goto_0
    return-void
.end method
