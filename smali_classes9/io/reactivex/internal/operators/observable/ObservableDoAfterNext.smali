.class public final Lio/reactivex/internal/operators/observable/ObservableDoAfterNext;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source ""


# annotations
.annotation build Lio/reactivex/annotations/Experimental;
.end annotation


# instance fields
.field final onAfterNext:Lio/reactivex/functions/Consumer;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableDoAfterNext;->onAfterNext:Lio/reactivex/functions/Consumer;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableDoAfterNext$DoAfterObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableDoAfterNext;->onAfterNext:Lio/reactivex/functions/Consumer;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/observable/ObservableDoAfterNext$DoAfterObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Consumer;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
