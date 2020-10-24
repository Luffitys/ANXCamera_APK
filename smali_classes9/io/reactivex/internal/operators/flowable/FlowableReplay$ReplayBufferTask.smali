.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBufferTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final bufferSize:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBufferTask;->bufferSize:I

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeBoundReplayBuffer;

    iget p0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBufferTask;->bufferSize:I

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeBoundReplayBuffer;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBufferTask;->call()Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;

    move-result-object p0

    return-object p0
.end method
