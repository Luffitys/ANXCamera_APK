.class public final Lio/reactivex/internal/operators/flowable/FlowableTimeInterval;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source ""


# instance fields
.field final scheduler:Lio/reactivex/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;Ljava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeInterval;->scheduler:Lio/reactivex/Scheduler;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeInterval;->unit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/Flowable;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableTimeInterval$TimeIntervalSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeInterval;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeInterval;->scheduler:Lio/reactivex/Scheduler;

    invoke-direct {v1, p1, v2, p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeInterval$TimeIntervalSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Ljava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
