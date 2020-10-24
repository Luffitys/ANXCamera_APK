.class final Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$WindowOperation;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final open:Ljava/lang/Object;

.field final w:Lio/reactivex/processors/UnicastProcessor;


# direct methods
.method constructor <init>(Lio/reactivex/processors/UnicastProcessor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$WindowOperation;->w:Lio/reactivex/processors/UnicastProcessor;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySelector$WindowOperation;->open:Ljava/lang/Object;

    return-void
.end method
