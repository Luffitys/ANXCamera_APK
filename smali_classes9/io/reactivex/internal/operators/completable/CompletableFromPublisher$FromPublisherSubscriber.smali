.class final Lio/reactivex/internal/operators/completable/CompletableFromPublisher$FromPublisherSubscriber;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# instance fields
.field final cs:Lio/reactivex/CompletableObserver;

.field s:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lio/reactivex/CompletableObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableFromPublisher$FromPublisherSubscriber;->cs:Lio/reactivex/CompletableObserver;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableFromPublisher$FromPublisherSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableFromPublisher$FromPublisherSubscriber;->s:Lorg/reactivestreams/Subscription;

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableFromPublisher$FromPublisherSubscriber;->s:Lorg/reactivestreams/Subscription;

    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onComplete()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableFromPublisher$FromPublisherSubscriber;->cs:Lio/reactivex/CompletableObserver;

    invoke-interface {p0}, Lio/reactivex/CompletableObserver;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableFromPublisher$FromPublisherSubscriber;->cs:Lio/reactivex/CompletableObserver;

    invoke-interface {p0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableFromPublisher$FromPublisherSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableFromPublisher$FromPublisherSubscriber;->s:Lorg/reactivestreams/Subscription;

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableFromPublisher$FromPublisherSubscriber;->cs:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method
