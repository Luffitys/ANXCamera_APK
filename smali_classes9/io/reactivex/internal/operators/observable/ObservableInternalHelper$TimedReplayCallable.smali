.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final parent:Lio/reactivex/Observable;

.field private final scheduler:Lio/reactivex/Scheduler;

.field private final time:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lio/reactivex/Observable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->parent:Lio/reactivex/Observable;

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->time:J

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->scheduler:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/observables/ConnectableObservable;
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->parent:Lio/reactivex/Observable;

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->time:J

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->scheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v1, v2, v3, p0}, Lio/reactivex/Observable;->replay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/observables/ConnectableObservable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;->call()Lio/reactivex/observables/ConnectableObservable;

    move-result-object p0

    return-object p0
.end method
