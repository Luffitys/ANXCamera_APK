.class final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final combiner:Lio/reactivex/functions/BiFunction;

.field private final mapper:Lio/reactivex/functions/Function;


# direct methods
.method constructor <init>(Lio/reactivex/functions/BiFunction;Lio/reactivex/functions/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;->combiner:Lio/reactivex/functions/BiFunction;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;->mapper:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;->apply(Ljava/lang/Object;)Lorg/reactivestreams/Publisher;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Lorg/reactivestreams/Publisher;
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableMapPublisher;

    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerInner;

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;->combiner:Lio/reactivex/functions/BiFunction;

    invoke-direct {v2, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerInner;-><init>(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;)V

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/FlowableMapPublisher;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;)V

    return-object v1
.end method
