.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedTimedReplayCallable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final bufferSize:I

.field private final parent:Lio/reactivex/Observable;

.field private final scheduler:Lio/reactivex/Scheduler;

.field private final time:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lio/reactivex/Observable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedTimedReplayCallable;->parent:Lio/reactivex/Observable;

    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedTimedReplayCallable;->bufferSize:I

    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedTimedReplayCallable;->time:J

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedTimedReplayCallable;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedTimedReplayCallable;->scheduler:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/observables/ConnectableObservable;
    .locals 6

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedTimedReplayCallable;->parent:Lio/reactivex/Observable;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedTimedReplayCallable;->bufferSize:I

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedTimedReplayCallable;->time:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedTimedReplayCallable;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedTimedReplayCallable;->scheduler:Lio/reactivex/Scheduler;

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/Observable;->replay(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/observables/ConnectableObservable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedTimedReplayCallable;->call()Lio/reactivex/observables/ConnectableObservable;

    move-result-object p0

    return-object p0
.end method
