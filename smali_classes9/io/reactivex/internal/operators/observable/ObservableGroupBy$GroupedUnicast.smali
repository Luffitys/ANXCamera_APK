.class final Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;
.super Lio/reactivex/observables/GroupedObservable;
.source ""


# instance fields
.field final state:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/observables/GroupedObservable;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;->state:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    return-void
.end method

.method public static createWith(Ljava/lang/Object;ILio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;Z)Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    invoke-direct {v0, p1, p2, p0, p3}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;-><init>(ILio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;Ljava/lang/Object;Z)V

    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;

    invoke-direct {p1, p0, v0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;-><init>(Ljava/lang/Object;Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;)V

    return-object p1
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;->state:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;->state:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;->state:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;->state:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
