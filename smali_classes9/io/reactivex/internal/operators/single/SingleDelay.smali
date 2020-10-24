.class public final Lio/reactivex/internal/operators/single/SingleDelay;
.super Lio/reactivex/Single;
.source ""


# instance fields
.field final delayError:Z

.field final scheduler:Lio/reactivex/Scheduler;

.field final source:Lio/reactivex/SingleSource;

.field final time:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Z)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDelay;->source:Lio/reactivex/SingleSource;

    iput-wide p2, p0, Lio/reactivex/internal/operators/single/SingleDelay;->time:J

    iput-object p4, p0, Lio/reactivex/internal/operators/single/SingleDelay;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/internal/operators/single/SingleDelay;->scheduler:Lio/reactivex/Scheduler;

    iput-boolean p6, p0, Lio/reactivex/internal/operators/single/SingleDelay;->delayError:Z

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 3

    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    invoke-interface {p1, v0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleDelay;->source:Lio/reactivex/SingleSource;

    new-instance v2, Lio/reactivex/internal/operators/single/SingleDelay$Delay;

    invoke-direct {v2, p0, v0, p1}, Lio/reactivex/internal/operators/single/SingleDelay$Delay;-><init>(Lio/reactivex/internal/operators/single/SingleDelay;Lio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/SingleObserver;)V

    invoke-interface {v1, v2}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
