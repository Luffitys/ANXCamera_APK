.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final combiner:Lio/reactivex/functions/BiFunction;

.field private final mapper:Lio/reactivex/functions/Function;


# direct methods
.method constructor <init>(Lio/reactivex/functions/BiFunction;Lio/reactivex/functions/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter;->combiner:Lio/reactivex/functions/BiFunction;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter;->mapper:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null ObservableSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableMap;

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerInner;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter;->combiner:Lio/reactivex/functions/BiFunction;

    invoke-direct {v2, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerInner;-><init>(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;)V

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/ObservableMap;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;)V

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter;->apply(Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method
