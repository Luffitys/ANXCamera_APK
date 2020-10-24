.class public final Lio/reactivex/internal/operators/observable/ObservableFromArray;
.super Lio/reactivex/Observable;
.source ""


# instance fields
.field final array:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray;->array:[Ljava/lang/Object;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;-><init>(Lio/reactivex/Observer;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    iget-boolean p0, v0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->fusionMode:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->run()V

    return-void
.end method
