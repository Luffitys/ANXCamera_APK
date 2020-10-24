.class final Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$Completion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final processor:Lio/reactivex/processors/UnicastProcessor;

.field final synthetic this$0:Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;Lio/reactivex/processors/UnicastProcessor;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$Completion;->this$0:Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$Completion;->processor:Lio/reactivex/processors/UnicastProcessor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$Completion;->this$0:Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$Completion;->processor:Lio/reactivex/processors/UnicastProcessor;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->complete(Lio/reactivex/processors/UnicastProcessor;)V

    return-void
.end method
