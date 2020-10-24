.class public final Lio/reactivex/internal/operators/flowable/FlowableSingleSingle;
.super Lio/reactivex/Single;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/FuseToFlowable;


# instance fields
.field final defaultValue:Ljava/lang/Object;

.field final source:Lio/reactivex/Flowable;


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleSingle;->source:Lio/reactivex/Flowable;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleSingle;->defaultValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public fuseToFlowable()Lio/reactivex/Flowable;
    .locals 2

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSingle;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleSingle;->source:Lio/reactivex/Flowable;

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleSingle;->defaultValue:Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Lio/reactivex/internal/operators/flowable/FlowableSingle;-><init>(Lio/reactivex/Flowable;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleSingle;->source:Lio/reactivex/Flowable;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableSingleSingle$SingleElementSubscriber;

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableSingleSingle;->defaultValue:Ljava/lang/Object;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableSingleSingle$SingleElementSubscriber;-><init>(Lio/reactivex/SingleObserver;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
