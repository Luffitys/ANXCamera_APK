.class public final Lio/reactivex/internal/operators/observable/ObservableAllSingle;
.super Lio/reactivex/Single;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/FuseToObservable;


# instance fields
.field final predicate:Lio/reactivex/functions/Predicate;

.field final source:Lio/reactivex/ObservableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Predicate;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle;->source:Lio/reactivex/ObservableSource;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle;->predicate:Lio/reactivex/functions/Predicate;

    return-void
.end method


# virtual methods
.method public fuseToObservable()Lio/reactivex/Observable;
    .locals 2

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableAll;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle;->source:Lio/reactivex/ObservableSource;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle;->predicate:Lio/reactivex/functions/Predicate;

    invoke-direct {v0, v1, p0}, Lio/reactivex/internal/operators/observable/ObservableAll;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Predicate;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle;->predicate:Lio/reactivex/functions/Predicate;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Predicate;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
