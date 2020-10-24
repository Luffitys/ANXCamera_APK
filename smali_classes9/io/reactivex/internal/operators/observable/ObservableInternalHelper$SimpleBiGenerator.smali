.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$SimpleBiGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# instance fields
.field final consumer:Lio/reactivex/functions/BiConsumer;


# direct methods
.method constructor <init>(Lio/reactivex/functions/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$SimpleBiGenerator;->consumer:Lio/reactivex/functions/BiConsumer;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lio/reactivex/Emitter;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$SimpleBiGenerator;->consumer:Lio/reactivex/functions/BiConsumer;

    invoke-interface {p0, p1, p2}, Lio/reactivex/functions/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lio/reactivex/Emitter;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$SimpleBiGenerator;->apply(Ljava/lang/Object;Lio/reactivex/Emitter;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
