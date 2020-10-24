.class public final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No instances!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static flatMapIntoIterable(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapIntoIterable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapIntoIterable;-><init>(Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static flatMapWithCombiner(Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)Lio/reactivex/functions/Function;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;-><init>(Lio/reactivex/functions/BiFunction;Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static itemDelay(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ItemDelayFunction;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ItemDelayFunction;-><init>(Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static replayCallable(Lio/reactivex/Flowable;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ReplayCallable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ReplayCallable;-><init>(Lio/reactivex/Flowable;)V

    return-object v0
.end method

.method public static replayCallable(Lio/reactivex/Flowable;I)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;-><init>(Lio/reactivex/Flowable;I)V

    return-object v0
.end method

.method public static replayCallable(Lio/reactivex/Flowable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Ljava/util/concurrent/Callable;
    .locals 8

    new-instance v7, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedTimedReplay;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedTimedReplay;-><init>(Lio/reactivex/Flowable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    return-object v7
.end method

.method public static replayCallable(Lio/reactivex/Flowable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Ljava/util/concurrent/Callable;
    .locals 7

    new-instance v6, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$TimedReplay;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$TimedReplay;-><init>(Lio/reactivex/Flowable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    return-object v6
.end method

.method public static replayFunction(Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;)Lio/reactivex/functions/Function;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ReplayFunction;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ReplayFunction;-><init>(Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;)V

    return-object v0
.end method

.method public static simpleBiGenerator(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/functions/BiFunction;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator;-><init>(Lio/reactivex/functions/BiConsumer;)V

    return-object v0
.end method

.method public static simpleGenerator(Lio/reactivex/functions/Consumer;)Lio/reactivex/functions/BiFunction;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleGenerator;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleGenerator;-><init>(Lio/reactivex/functions/Consumer;)V

    return-object v0
.end method

.method public static subscriberOnComplete(Lorg/reactivestreams/Subscriber;)Lio/reactivex/functions/Action;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnComplete;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnComplete;-><init>(Lorg/reactivestreams/Subscriber;)V

    return-object v0
.end method

.method public static subscriberOnError(Lorg/reactivestreams/Subscriber;)Lio/reactivex/functions/Consumer;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnError;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnError;-><init>(Lorg/reactivestreams/Subscriber;)V

    return-object v0
.end method

.method public static subscriberOnNext(Lorg/reactivestreams/Subscriber;)Lio/reactivex/functions/Consumer;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnNext;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnNext;-><init>(Lorg/reactivestreams/Subscriber;)V

    return-object v0
.end method

.method public static zipIterable(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ZipIterableFunction;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ZipIterableFunction;-><init>(Lio/reactivex/functions/Function;)V

    return-object v0
.end method
