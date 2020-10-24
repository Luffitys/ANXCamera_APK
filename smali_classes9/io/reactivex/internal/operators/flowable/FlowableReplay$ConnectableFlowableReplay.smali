.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$ConnectableFlowableReplay;
.super Lio/reactivex/flowables/ConnectableFlowable;
.source ""


# instance fields
.field private final co:Lio/reactivex/flowables/ConnectableFlowable;

.field private final observable:Lio/reactivex/Flowable;


# direct methods
.method constructor <init>(Lio/reactivex/flowables/ConnectableFlowable;Lio/reactivex/Flowable;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/flowables/ConnectableFlowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ConnectableFlowableReplay;->co:Lio/reactivex/flowables/ConnectableFlowable;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ConnectableFlowableReplay;->observable:Lio/reactivex/Flowable;

    return-void
.end method


# virtual methods
.method public connect(Lio/reactivex/functions/Consumer;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ConnectableFlowableReplay;->co:Lio/reactivex/flowables/ConnectableFlowable;

    invoke-virtual {p0, p1}, Lio/reactivex/flowables/ConnectableFlowable;->connect(Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ConnectableFlowableReplay;->observable:Lio/reactivex/Flowable;

    invoke-virtual {p0, p1}, Lio/reactivex/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
