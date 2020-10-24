.class final Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final idx:J

.field final parent:Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutSupport;


# direct methods
.method constructor <init>(JLio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutSupport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTask;->idx:J

    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTask;->parent:Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutSupport;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTask;->parent:Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutSupport;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutTask;->idx:J

    invoke-interface {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutSupport;->onTimeout(J)V

    return-void
.end method
