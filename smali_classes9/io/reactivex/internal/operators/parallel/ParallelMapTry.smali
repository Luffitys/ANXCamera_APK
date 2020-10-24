.class public final Lio/reactivex/internal/operators/parallel/ParallelMapTry;
.super Lio/reactivex/parallel/ParallelFlowable;
.source ""


# instance fields
.field final errorHandler:Lio/reactivex/functions/BiFunction;

.field final mapper:Lio/reactivex/functions/Function;

.field final source:Lio/reactivex/parallel/ParallelFlowable;


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/parallel/ParallelFlowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->source:Lio/reactivex/parallel/ParallelFlowable;

    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->mapper:Lio/reactivex/functions/Function;

    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->errorHandler:Lio/reactivex/functions/BiFunction;

    return-void
.end method


# virtual methods
.method public parallelism()I
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->source:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {p0}, Lio/reactivex/parallel/ParallelFlowable;->parallelism()I

    move-result p0

    return p0
.end method

.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .locals 7

    invoke-virtual {p0, p1}, Lio/reactivex/parallel/ParallelFlowable;->validate([Lorg/reactivestreams/Subscriber;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Lorg/reactivestreams/Subscriber;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    instance-of v4, v3, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    if-eqz v4, :cond_1

    new-instance v4, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTryConditionalSubscriber;

    check-cast v3, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    iget-object v5, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->mapper:Lio/reactivex/functions/Function;

    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->errorHandler:Lio/reactivex/functions/BiFunction;

    invoke-direct {v4, v3, v5, v6}, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTryConditionalSubscriber;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)V

    aput-object v4, v1, v2

    goto :goto_1

    :cond_1
    new-instance v4, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;

    iget-object v5, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->mapper:Lio/reactivex/functions/Function;

    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->errorHandler:Lio/reactivex/functions/BiFunction;

    invoke-direct {v4, v3, v5, v6}, Lio/reactivex/internal/operators/parallel/ParallelMapTry$ParallelMapTrySubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)V

    aput-object v4, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lio/reactivex/internal/operators/parallel/ParallelMapTry;->source:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {p0, v1}, Lio/reactivex/parallel/ParallelFlowable;->subscribe([Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
