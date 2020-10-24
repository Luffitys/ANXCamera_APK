.class public final Lio/reactivex/internal/operators/observable/ObservableReduceMaybe;
.super Lio/reactivex/Maybe;
.source ""


# instance fields
.field final reducer:Lio/reactivex/functions/BiFunction;

.field final source:Lio/reactivex/ObservableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe;->source:Lio/reactivex/ObservableSource;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe;->reducer:Lio/reactivex/functions/BiFunction;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe;->reducer:Lio/reactivex/functions/BiFunction;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/observable/ObservableReduceMaybe$ReduceObserver;-><init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/BiFunction;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
