.class public final Lio/reactivex/internal/operators/flowable/FlowableJust;
.super Lio/reactivex/Flowable;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/ScalarCallable;


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableJust;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableJust;->value:Ljava/lang/Object;

    return-object p0
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 1

    new-instance v0, Lio/reactivex/internal/subscriptions/ScalarSubscription;

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableJust;->value:Ljava/lang/Object;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/subscriptions/ScalarSubscription;-><init>(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    return-void
.end method
