.class public final Lio/reactivex/internal/operators/observable/ObservableDetach;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source ""


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 1

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/ObservableSource;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableDetach$DetachObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableDetach$DetachObserver;-><init>(Lio/reactivex/Observer;)V

    invoke-interface {p0, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
