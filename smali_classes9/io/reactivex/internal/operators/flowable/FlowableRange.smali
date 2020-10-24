.class public final Lio/reactivex/internal/operators/flowable/FlowableRange;
.super Lio/reactivex/Flowable;
.source ""


# instance fields
.field final end:I

.field final start:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange;->start:I

    add-int/2addr p1, p2

    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange;->end:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 3

    instance-of v0, p1, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    if-eqz v0, :cond_0

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;

    move-object v1, p1

    check-cast v1, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRange;->start:I

    iget p0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange;->end:I

    invoke-direct {v0, v1, v2, p0}, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange;->start:I

    iget p0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange;->end:I

    invoke-direct {v0, p1, v1, p0}, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;-><init>(Lorg/reactivestreams/Subscriber;II)V

    :goto_0
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    return-void
.end method
