.class final Lio/reactivex/internal/operators/observable/ObservableReplay$ReplaySource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableSource;


# instance fields
.field private final bufferFactory:Lio/reactivex/internal/operators/observable/ObservableReplay$BufferSupplier;

.field private final curr:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/internal/operators/observable/ObservableReplay$BufferSupplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplaySource;->curr:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplaySource;->bufferFactory:Lio/reactivex/internal/operators/observable/ObservableReplay$BufferSupplier;

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/Observer;)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplaySource;->curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplaySource;->bufferFactory:Lio/reactivex/internal/operators/observable/ObservableReplay$BufferSupplier;

    invoke-interface {v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BufferSupplier;->call()Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;

    move-result-object v0

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplaySource;->curr:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    new-instance p0, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;

    invoke-direct {p0, v0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;-><init>(Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;Lio/reactivex/Observer;)V

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->add(Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->remove(Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;)V

    return-void

    :cond_2
    iget-object p1, v0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->buffer:Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;

    invoke-interface {p1, p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;->replay(Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;)V

    return-void
.end method
