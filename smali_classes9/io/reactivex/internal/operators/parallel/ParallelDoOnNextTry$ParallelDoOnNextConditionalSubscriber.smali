.class final Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/ConditionalSubscriber;
.implements Lorg/reactivestreams/Subscription;


# instance fields
.field final actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

.field done:Z

.field final errorHandler:Lio/reactivex/functions/BiFunction;

.field final onNext:Lio/reactivex/functions/Consumer;

.field s:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->onNext:Lio/reactivex/functions/Consumer;

    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->errorHandler:Lio/reactivex/functions/BiFunction;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {p0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->done:Z

    iget-object p0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {p0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->done:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->done:Z

    iget-object p0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {p0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->done:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    const-wide/16 v0, 0x1

    invoke-interface {p0, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {p1, p0}, Lio/reactivex/FlowableSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {p0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .locals 9

    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->onNext:Lio/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {p0, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    :try_start_1
    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->errorHandler:Lio/reactivex/functions/BiFunction;

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The errorHandler returned a null item"

    invoke-static {v6, v7}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/parallel/ParallelFailureHandling;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v7, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$1;->$SwitchMap$io$reactivex$parallel$ParallelFailureHandling:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    if-eq v6, v4, :cond_1

    if-eq v6, v5, :cond_3

    const/4 p1, 0x3

    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->cancel()V

    if-eq v6, p1, :cond_2

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->onComplete()V

    :cond_3
    return v1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->cancel()V

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    new-array v3, v5, [Ljava/lang/Throwable;

    aput-object v0, v3, v1

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    return v1
.end method
