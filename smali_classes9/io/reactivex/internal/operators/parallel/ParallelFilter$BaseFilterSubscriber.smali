.class abstract Lio/reactivex/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/ConditionalSubscriber;
.implements Lorg/reactivestreams/Subscription;


# instance fields
.field done:Z

.field final predicate:Lio/reactivex/functions/Predicate;

.field s:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lio/reactivex/functions/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->predicate:Lio/reactivex/functions/Predicate;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {p0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p0, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->done:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->s:Lorg/reactivestreams/Subscription;

    const-wide/16 v0, 0x1

    invoke-interface {p0, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilter$BaseFilterSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {p0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
