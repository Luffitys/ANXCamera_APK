.class public final Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source ""


# instance fields
.field final comparer:Lio/reactivex/functions/BiPredicate;

.field final keySelector:Lio/reactivex/functions/Function;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiPredicate;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged;->keySelector:Lio/reactivex/functions/Function;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged;->comparer:Lio/reactivex/functions/BiPredicate;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged;->keySelector:Lio/reactivex/functions/Function;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged;->comparer:Lio/reactivex/functions/BiPredicate;

    invoke-direct {v1, p1, v2, p0}, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiPredicate;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
