.class public final Lio/reactivex/internal/operators/observable/ObservableTimeout;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source ""


# instance fields
.field final firstTimeoutIndicator:Lio/reactivex/ObservableSource;

.field final itemTimeoutIndicator:Lio/reactivex/functions/Function;

.field final other:Lio/reactivex/ObservableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;Lio/reactivex/ObservableSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->firstTimeoutIndicator:Lio/reactivex/ObservableSource;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->other:Lio/reactivex/ObservableSource;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->other:Lio/reactivex/ObservableSource;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;

    new-instance v2, Lio/reactivex/observers/SerializedObserver;

    invoke-direct {v2, p1}, Lio/reactivex/observers/SerializedObserver;-><init>(Lio/reactivex/Observer;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->firstTimeoutIndicator:Lio/reactivex/ObservableSource;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    invoke-direct {v1, v2, p1, p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->firstTimeoutIndicator:Lio/reactivex/ObservableSource;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->itemTimeoutIndicator:Lio/reactivex/functions/Function;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->other:Lio/reactivex/ObservableSource;

    invoke-direct {v1, p1, v2, v3, p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;Lio/reactivex/ObservableSource;)V

    :goto_0
    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
