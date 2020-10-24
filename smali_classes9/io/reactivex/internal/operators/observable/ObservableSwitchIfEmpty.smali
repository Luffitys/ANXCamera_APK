.class public final Lio/reactivex/internal/operators/observable/ObservableSwitchIfEmpty;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source ""


# instance fields
.field final other:Lio/reactivex/ObservableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchIfEmpty;->other:Lio/reactivex/ObservableSource;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 2

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableSwitchIfEmpty$SwitchIfEmptyObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchIfEmpty;->other:Lio/reactivex/ObservableSource;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/observable/ObservableSwitchIfEmpty$SwitchIfEmptyObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/ObservableSource;)V

    iget-object v1, v0, Lio/reactivex/internal/operators/observable/ObservableSwitchIfEmpty$SwitchIfEmptyObserver;->arbiter:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/ObservableSource;

    invoke-interface {p0, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
