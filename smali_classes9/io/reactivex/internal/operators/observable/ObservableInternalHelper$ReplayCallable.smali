.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayCallable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final parent:Lio/reactivex/Observable;


# direct methods
.method constructor <init>(Lio/reactivex/Observable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayCallable;->parent:Lio/reactivex/Observable;

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/observables/ConnectableObservable;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayCallable;->parent:Lio/reactivex/Observable;

    invoke-virtual {p0}, Lio/reactivex/Observable;->replay()Lio/reactivex/observables/ConnectableObservable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayCallable;->call()Lio/reactivex/observables/ConnectableObservable;

    move-result-object p0

    return-object p0
.end method
