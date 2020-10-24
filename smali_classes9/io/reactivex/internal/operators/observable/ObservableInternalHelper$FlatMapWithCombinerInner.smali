.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerInner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final combiner:Lio/reactivex/functions/BiFunction;

.field private final t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerInner;->combiner:Lio/reactivex/functions/BiFunction;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerInner;->t:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerInner;->combiner:Lio/reactivex/functions/BiFunction;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerInner;->t:Ljava/lang/Object;

    invoke-interface {v0, p0, p1}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
