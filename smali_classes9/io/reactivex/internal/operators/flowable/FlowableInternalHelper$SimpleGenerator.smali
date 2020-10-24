.class final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# instance fields
.field final consumer:Lio/reactivex/functions/Consumer;


# direct methods
.method constructor <init>(Lio/reactivex/functions/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleGenerator;->consumer:Lio/reactivex/functions/Consumer;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lio/reactivex/Emitter;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleGenerator;->consumer:Lio/reactivex/functions/Consumer;

    invoke-interface {p0, p2}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lio/reactivex/Emitter;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleGenerator;->apply(Ljava/lang/Object;Lio/reactivex/Emitter;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
