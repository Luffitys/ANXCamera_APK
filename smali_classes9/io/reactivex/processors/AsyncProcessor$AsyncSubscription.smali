.class final Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;
.super Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x4e215678802bc8d0L


# instance fields
.field final parent:Lio/reactivex/processors/AsyncProcessor;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/AsyncProcessor;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;-><init>(Lorg/reactivestreams/Subscriber;)V

    iput-object p2, p0, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->parent:Lio/reactivex/processors/AsyncProcessor;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    invoke-super {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->tryCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->parent:Lio/reactivex/processors/AsyncProcessor;

    invoke-virtual {v0, p0}, Lio/reactivex/processors/AsyncProcessor;->remove(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)V

    :cond_0
    return-void
.end method

.method onComplete()V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {p0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_0
    return-void
.end method

.method onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {p0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
