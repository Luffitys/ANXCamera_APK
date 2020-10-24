.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final bufferSize:I

.field private final parent:Lio/reactivex/Observable;


# direct methods
.method constructor <init>(Lio/reactivex/Observable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable;->parent:Lio/reactivex/Observable;

    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable;->bufferSize:I

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/observables/ConnectableObservable;
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable;->parent:Lio/reactivex/Observable;

    iget p0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable;->bufferSize:I

    invoke-virtual {v0, p0}, Lio/reactivex/Observable;->replay(I)Lio/reactivex/observables/ConnectableObservable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable;->call()Lio/reactivex/observables/ConnectableObservable;

    move-result-object p0

    return-object p0
.end method
