.class public final Lio/reactivex/internal/operators/observable/ObservableFromUnsafeSource;
.super Lio/reactivex/Observable;
.source ""


# instance fields
.field final source:Lio/reactivex/ObservableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFromUnsafeSource;->source:Lio/reactivex/ObservableSource;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableFromUnsafeSource;->source:Lio/reactivex/ObservableSource;

    invoke-interface {p0, p1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
