.class public final Lio/reactivex/internal/operators/observable/ObservableFromIterable;
.super Lio/reactivex/Observable;
.source ""


# instance fields
.field final source:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable;->source:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableFromIterable;->source:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/Observer;)V

    return-void

    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;-><init>(Lio/reactivex/Observer;Ljava/util/Iterator;)V

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    iget-boolean p0, v0, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->fusionMode:Z

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->run()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    return-void
.end method
