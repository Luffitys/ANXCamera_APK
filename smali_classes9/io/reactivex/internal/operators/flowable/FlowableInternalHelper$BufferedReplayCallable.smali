.class final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final bufferSize:I

.field private final parent:Lio/reactivex/Flowable;


# direct methods
.method constructor <init>(Lio/reactivex/Flowable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;->parent:Lio/reactivex/Flowable;

    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;->bufferSize:I

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/flowables/ConnectableFlowable;
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;->parent:Lio/reactivex/Flowable;

    iget p0, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;->bufferSize:I

    invoke-virtual {v0, p0}, Lio/reactivex/Flowable;->replay(I)Lio/reactivex/flowables/ConnectableFlowable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable;->call()Lio/reactivex/flowables/ConnectableFlowable;

    move-result-object p0

    return-object p0
.end method
