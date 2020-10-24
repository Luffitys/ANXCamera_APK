.class final Lio/reactivex/internal/schedulers/SchedulerWhen$CreateWorkerFunction;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field final actualWorker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lio/reactivex/Scheduler$Worker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$CreateWorkerFunction;->actualWorker:Lio/reactivex/Scheduler$Worker;

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;)Lio/reactivex/Completable;
    .locals 1

    new-instance v0, Lio/reactivex/internal/schedulers/SchedulerWhen$CreateWorkerFunction$WorkerCompletable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/schedulers/SchedulerWhen$CreateWorkerFunction$WorkerCompletable;-><init>(Lio/reactivex/internal/schedulers/SchedulerWhen$CreateWorkerFunction;Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/schedulers/SchedulerWhen$CreateWorkerFunction;->apply(Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;)Lio/reactivex/Completable;

    move-result-object p0

    return-object p0
.end method
