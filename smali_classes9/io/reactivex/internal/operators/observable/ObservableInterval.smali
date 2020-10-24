.class public final Lio/reactivex/internal/operators/observable/ObservableInterval;
.super Lio/reactivex/Observable;
.source ""


# instance fields
.field final initialDelay:J

.field final period:J

.field final scheduler:Lio/reactivex/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->initialDelay:J

    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->period:J

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->scheduler:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 8

    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableInterval$IntervalObserver;

    invoke-direct {v7, p1}, Lio/reactivex/internal/operators/observable/ObservableInterval$IntervalObserver;-><init>(Lio/reactivex/Observer;)V

    invoke-interface {p1, v7}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->scheduler:Lio/reactivex/Scheduler;

    instance-of p1, v0, Lio/reactivex/internal/schedulers/TrampolineScheduler;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v0

    invoke-virtual {v7, v0}, Lio/reactivex/internal/operators/observable/ObservableInterval$IntervalObserver;->setResource(Lio/reactivex/disposables/Disposable;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->initialDelay:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->period:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->initialDelay:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->period:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/Scheduler;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    invoke-virtual {v7, p0}, Lio/reactivex/internal/operators/observable/ObservableInterval$IntervalObserver;->setResource(Lio/reactivex/disposables/Disposable;)V

    :goto_0
    return-void
.end method
