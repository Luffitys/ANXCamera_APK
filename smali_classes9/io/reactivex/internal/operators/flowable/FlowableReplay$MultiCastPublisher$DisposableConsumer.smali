.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher$DisposableConsumer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final srw:Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;

.field final synthetic this$0:Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher;Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher$DisposableConsumer;->this$0:Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher$DisposableConsumer;->srw:Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;

    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher$DisposableConsumer;->srw:Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->setResource(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$MultiCastPublisher$DisposableConsumer;->accept(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
