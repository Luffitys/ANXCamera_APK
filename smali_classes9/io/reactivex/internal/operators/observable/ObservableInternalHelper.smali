.class public final Lio/reactivex/internal/operators/observable/ObservableInternalHelper;
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

.method private static convertSingleMapperToObservableMapper(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .locals 1

    const-string v0, "mapper is null"

    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObservableMapper;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObservableMapper;-><init>(Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static flatMapIntoIterable(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapIntoIterable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapIntoIterable;-><init>(Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static flatMapWithCombiner(Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)Lio/reactivex/functions/Function;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter;-><init>(Lio/reactivex/functions/BiFunction;Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static itemDelay(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ItemDelayFunction;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ItemDelayFunction;-><init>(Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static observerOnComplete(Lio/reactivex/Observer;)Lio/reactivex/functions/Action;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnComplete;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnComplete;-><init>(Lio/reactivex/Observer;)V

    return-object v0
.end method

.method public static observerOnError(Lio/reactivex/Observer;)Lio/reactivex/functions/Consumer;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnError;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnError;-><init>(Lio/reactivex/Observer;)V

    return-object v0
.end method

.method public static observerOnNext(Lio/reactivex/Observer;)Lio/reactivex/functions/Consumer;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnNext;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnNext;-><init>(Lio/reactivex/Observer;)V

    return-object v0
.end method

.method public static repeatWhenHandler(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$RepeatWhenOuterHandler;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$RepeatWhenOuterHandler;-><init>(Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static replayCallable(Lio/reactivex/Observable;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayCallable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayCallable;-><init>(Lio/reactivex/Observable;)V

    return-object v0
.end method

.method public static replayCallable(Lio/reactivex/Observable;I)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable;-><init>(Lio/reactivex/Observable;I)V

    return-object v0
.end method

.method public static replayCallable(Lio/reactivex/Observable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Ljava/util/concurrent/Callable;
    .locals 8

    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedTimedReplayCallable;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedTimedReplayCallable;-><init>(Lio/reactivex/Observable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    return-object v7
.end method

.method public static replayCallable(Lio/reactivex/Observable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Ljava/util/concurrent/Callable;
    .locals 7

    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable;-><init>(Lio/reactivex/Observable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    return-object v6
.end method

.method public static replayFunction(Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;)Lio/reactivex/functions/Function;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayFunction;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayFunction;-><init>(Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;)V

    return-object v0
.end method

.method public static retryWhenHandler(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$RetryWhenInner;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$RetryWhenInner;-><init>(Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static simpleBiGenerator(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/functions/BiFunction;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$SimpleBiGenerator;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$SimpleBiGenerator;-><init>(Lio/reactivex/functions/BiConsumer;)V

    return-object v0
.end method

.method public static simpleGenerator(Lio/reactivex/functions/Consumer;)Lio/reactivex/functions/BiFunction;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$SimpleGenerator;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$SimpleGenerator;-><init>(Lio/reactivex/functions/Consumer;)V

    return-object v0
.end method

.method public static switchMapSingle(Lio/reactivex/Observable;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;
    .locals 1

    invoke-static {p1}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper;->convertSingleMapperToObservableMapper(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/reactivex/Observable;->switchMap(Lio/reactivex/functions/Function;I)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static switchMapSingleDelayError(Lio/reactivex/Observable;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;
    .locals 1

    invoke-static {p1}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper;->convertSingleMapperToObservableMapper(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/reactivex/Observable;->switchMapDelayError(Lio/reactivex/functions/Function;I)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static zipIterable(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ZipIterableFunction;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ZipIterableFunction;-><init>(Lio/reactivex/functions/Function;)V

    return-object v0
.end method
