.class final Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/reactivestreams/Subscription;


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;

.field once:Z

.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;->value:Ljava/lang/Object;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;->actual:Lorg/reactivestreams/Subscriber;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public request(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;->once:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;->once:Z

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;->actual:Lorg/reactivestreams/Subscriber;

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;->value:Ljava/lang/Object;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_0
    return-void
.end method
