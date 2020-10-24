.class public final Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final initialValue:Ljava/lang/Object;

.field final source:Lio/reactivex/ObservableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent;->source:Lio/reactivex/ObservableSource;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent;->initialValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent;->initialValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent;->source:Lio/reactivex/ObservableSource;

    invoke-interface {p0, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver;->getIterable()Lio/reactivex/internal/operators/observable/BlockingObservableMostRecent$MostRecentObserver$Iterator;

    move-result-object p0

    return-object p0
.end method
