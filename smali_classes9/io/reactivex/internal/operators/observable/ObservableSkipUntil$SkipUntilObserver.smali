.class final Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/Observer;


# instance fields
.field final actual:Lio/reactivex/Observer;

.field final frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

.field volatile notSkipping:Z

.field notSkippingLocal:Z

.field s:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/internal/disposables/ArrayCompositeDisposable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;->actual:Lio/reactivex/Observer;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;->frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;->frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {p0}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;->frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {p0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;->notSkippingLocal:Z

    if-eqz v0, :cond_0

    :goto_0
    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {p0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;->notSkipping:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;->notSkippingLocal:Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;->s:Lio/reactivex/disposables/Disposable;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;->frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->setResource(ILio/reactivex/disposables/Disposable;)Z

    :cond_0
    return-void
.end method
