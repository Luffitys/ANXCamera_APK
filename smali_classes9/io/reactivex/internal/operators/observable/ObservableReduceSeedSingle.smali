.class public final Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle;
.super Lio/reactivex/Single;
.source ""


# instance fields
.field final reducer:Lio/reactivex/functions/BiFunction;

.field final seed:Ljava/lang/Object;

.field final source:Lio/reactivex/ObservableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Ljava/lang/Object;Lio/reactivex/functions/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle;->source:Lio/reactivex/ObservableSource;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle;->seed:Ljava/lang/Object;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle;->reducer:Lio/reactivex/functions/BiFunction;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle;->reducer:Lio/reactivex/functions/BiFunction;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle;->seed:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, p0}, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/BiFunction;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
