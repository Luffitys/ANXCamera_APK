.class public final Lio/reactivex/internal/operators/flowable/BlockingFlowableNext;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final source:Lorg/reactivestreams/Publisher;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext;->source:Lorg/reactivestreams/Publisher;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;

    invoke-direct {v0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;-><init>()V

    new-instance v1, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext;->source:Lorg/reactivestreams/Publisher;

    invoke-direct {v1, p0, v0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextIterator;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/internal/operators/flowable/BlockingFlowableNext$NextSubscriber;)V

    return-object v1
.end method
