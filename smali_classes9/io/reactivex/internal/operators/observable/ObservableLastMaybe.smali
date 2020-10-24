.class public final Lio/reactivex/internal/operators/observable/ObservableLastMaybe;
.super Lio/reactivex/Maybe;
.source ""


# instance fields
.field final source:Lio/reactivex/ObservableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe;->source:Lio/reactivex/ObservableSource;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 1

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe;->source:Lio/reactivex/ObservableSource;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;-><init>(Lio/reactivex/MaybeObserver;)V

    invoke-interface {p0, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
