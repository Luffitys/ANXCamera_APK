.class public final Lio/reactivex/internal/operators/flowable/FlowableIgnoreElementsCompletable;
.super Lio/reactivex/Completable;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/FuseToFlowable;


# instance fields
.field final source:Lio/reactivex/Flowable;


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableIgnoreElementsCompletable;->source:Lio/reactivex/Flowable;

    return-void
.end method


# virtual methods
.method public fuseToFlowable()Lio/reactivex/Flowable;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements;

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableIgnoreElementsCompletable;->source:Lio/reactivex/Flowable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableIgnoreElements;-><init>(Lio/reactivex/Flowable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method

.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 1

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableIgnoreElementsCompletable;->source:Lio/reactivex/Flowable;

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableIgnoreElementsCompletable$IgnoreElementsSubscriber;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableIgnoreElementsCompletable$IgnoreElementsSubscriber;-><init>(Lio/reactivex/CompletableObserver;)V

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
