.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$RepeatWhenOuterHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final handler:Lio/reactivex/functions/Function;


# direct methods
.method constructor <init>(Lio/reactivex/functions/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$RepeatWhenOuterHandler;->handler:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$RepeatWhenOuterHandler;->handler:Lio/reactivex/functions/Function;

    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;->INSTANCE:Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/reactivex/Observable;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$RepeatWhenOuterHandler;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method
