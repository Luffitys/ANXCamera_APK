.class final Lio/reactivex/internal/operators/observable/ObservableReplay$UnBoundedFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/internal/operators/observable/ObservableReplay$BufferSupplier;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;
    .locals 1

    new-instance p0, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;-><init>(I)V

    return-object p0
.end method
