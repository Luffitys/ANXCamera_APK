.class final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ReplayCallable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final parent:Lio/reactivex/Flowable;


# direct methods
.method constructor <init>(Lio/reactivex/Flowable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ReplayCallable;->parent:Lio/reactivex/Flowable;

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/flowables/ConnectableFlowable;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ReplayCallable;->parent:Lio/reactivex/Flowable;

    invoke-virtual {p0}, Lio/reactivex/Flowable;->replay()Lio/reactivex/flowables/ConnectableFlowable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ReplayCallable;->call()Lio/reactivex/flowables/ConnectableFlowable;

    move-result-object p0

    return-object p0
.end method
