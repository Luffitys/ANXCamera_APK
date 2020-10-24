.class public final Lio/reactivex/internal/operators/maybe/MaybeToFlowable;
.super Lio/reactivex/Flowable;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/HasUpstreamMaybeSource;


# instance fields
.field final source:Lio/reactivex/MaybeSource;


# direct methods
.method public constructor <init>(Lio/reactivex/MaybeSource;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeToFlowable;->source:Lio/reactivex/MaybeSource;

    return-void
.end method


# virtual methods
.method public source()Lio/reactivex/MaybeSource;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeToFlowable;->source:Lio/reactivex/MaybeSource;

    return-object p0
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 1

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeToFlowable;->source:Lio/reactivex/MaybeSource;

    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeToFlowable$MaybeToFlowableSubscriber;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/MaybeToFlowable$MaybeToFlowableSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    invoke-interface {p0, v0}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    return-void
.end method
