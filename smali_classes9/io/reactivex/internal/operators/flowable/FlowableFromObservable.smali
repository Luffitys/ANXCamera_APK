.class public final Lio/reactivex/internal/operators/flowable/FlowableFromObservable;
.super Lio/reactivex/Flowable;
.source ""


# instance fields
.field private final upstream:Lio/reactivex/Observable;


# direct methods
.method public constructor <init>(Lio/reactivex/Observable;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable;->upstream:Lio/reactivex/Observable;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 1

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable;->upstream:Lio/reactivex/Observable;

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;-><init>(Lorg/reactivestreams/Subscriber;)V

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
