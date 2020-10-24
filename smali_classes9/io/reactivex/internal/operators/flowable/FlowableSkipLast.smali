.class public final Lio/reactivex/internal/operators/flowable/FlowableSkipLast;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source ""


# instance fields
.field final skip:I


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLast;->skip:I

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/Flowable;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableSkipLast$SkipLastSubscriber;

    iget p0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipLast;->skip:I

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableSkipLast$SkipLastSubscriber;-><init>(Lorg/reactivestreams/Subscriber;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
