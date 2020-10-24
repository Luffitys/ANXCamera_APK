.class public final Lio/reactivex/internal/operators/completable/CompletableFromSingle;
.super Lio/reactivex/Completable;
.source ""


# instance fields
.field final single:Lio/reactivex/SingleSource;


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableFromSingle;->single:Lio/reactivex/SingleSource;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 1

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableFromSingle;->single:Lio/reactivex/SingleSource;

    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver;-><init>(Lio/reactivex/CompletableObserver;)V

    invoke-interface {p0, v0}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
