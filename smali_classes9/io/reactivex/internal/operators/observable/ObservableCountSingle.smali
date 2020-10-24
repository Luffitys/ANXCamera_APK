.class public final Lio/reactivex/internal/operators/observable/ObservableCountSingle;
.super Lio/reactivex/Single;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/FuseToObservable;


# instance fields
.field final source:Lio/reactivex/ObservableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCountSingle;->source:Lio/reactivex/ObservableSource;

    return-void
.end method


# virtual methods
.method public fuseToObservable()Lio/reactivex/Observable;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableCount;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableCountSingle;->source:Lio/reactivex/ObservableSource;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableCount;-><init>(Lio/reactivex/ObservableSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 1

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableCountSingle;->source:Lio/reactivex/ObservableSource;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableCountSingle$CountObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableCountSingle$CountObserver;-><init>(Lio/reactivex/SingleObserver;)V

    invoke-interface {p0, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
