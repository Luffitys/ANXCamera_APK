.class final Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final index:J

.field final parent:Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;


# direct methods
.method constructor <init>(JLio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder;->index:J

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder;->parent:Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder;->parent:Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;

    invoke-static {v0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->access$000(Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->access$100(Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;)Lio/reactivex/internal/fuseable/SimplePlainQueue;

    move-result-object v1

    invoke-interface {v1, p0}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    iput-boolean p0, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->terminated:Z

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->disposeTimer()V

    :goto_0
    invoke-virtual {v0}, Lio/reactivex/internal/observers/QueueDrainObserver;->enter()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->drainLoop()V

    :cond_1
    return-void
.end method
