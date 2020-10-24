.class final Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBufferSupplier;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/internal/operators/observable/ObservableReplay$BufferSupplier;


# instance fields
.field private final bufferSize:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBufferSupplier;->bufferSize:I

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeBoundReplayBuffer;

    iget p0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBufferSupplier;->bufferSize:I

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeBoundReplayBuffer;-><init>(I)V

    return-object v0
.end method
