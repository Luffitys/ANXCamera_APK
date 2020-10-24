.class public final Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe;
.super Lio/reactivex/Maybe;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/HasUpstreamPublisher;
.implements Lio/reactivex/internal/fuseable/FuseToFlowable;


# instance fields
.field final reducer:Lio/reactivex/functions/BiFunction;

.field final source:Lio/reactivex/Flowable;


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;Lio/reactivex/functions/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe;->source:Lio/reactivex/Flowable;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe;->reducer:Lio/reactivex/functions/BiFunction;

    return-void
.end method


# virtual methods
.method public fuseToFlowable()Lio/reactivex/Flowable;
    .locals 2

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableReduce;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe;->source:Lio/reactivex/Flowable;

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe;->reducer:Lio/reactivex/functions/BiFunction;

    invoke-direct {v0, v1, p0}, Lio/reactivex/internal/operators/flowable/FlowableReduce;-><init>(Lio/reactivex/Flowable;Lio/reactivex/functions/BiFunction;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method public source()Lorg/reactivestreams/Publisher;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe;->source:Lio/reactivex/Flowable;

    return-object p0
.end method

.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe;->source:Lio/reactivex/Flowable;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe;->reducer:Lio/reactivex/functions/BiFunction;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableReduceMaybe$ReduceSubscriber;-><init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/BiFunction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
