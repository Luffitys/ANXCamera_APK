.class public final Lio/reactivex/internal/operators/observable/ObservableMapNotification;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source ""


# instance fields
.field final onCompleteSupplier:Ljava/util/concurrent/Callable;

.field final onErrorMapper:Lio/reactivex/functions/Function;

.field final onNextMapper:Lio/reactivex/functions/Function;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification;->onNextMapper:Lio/reactivex/functions/Function;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification;->onErrorMapper:Lio/reactivex/functions/Function;

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification;->onCompleteSupplier:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification;->onNextMapper:Lio/reactivex/functions/Function;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification;->onErrorMapper:Lio/reactivex/functions/Function;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableMapNotification;->onCompleteSupplier:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, p0}, Lio/reactivex/internal/operators/observable/ObservableMapNotification$MapNotificationObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
