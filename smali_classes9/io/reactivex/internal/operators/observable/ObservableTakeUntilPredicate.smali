.class public final Lio/reactivex/internal/operators/observable/ObservableTakeUntilPredicate;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source ""


# instance fields
.field final predicate:Lio/reactivex/functions/Predicate;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Predicate;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntilPredicate;->predicate:Lio/reactivex/functions/Predicate;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableTakeUntilPredicate$TakeUntilPredicateObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntilPredicate;->predicate:Lio/reactivex/functions/Predicate;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/observable/ObservableTakeUntilPredicate$TakeUntilPredicateObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Predicate;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
