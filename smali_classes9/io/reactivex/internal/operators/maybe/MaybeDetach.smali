.class public final Lio/reactivex/internal/operators/maybe/MaybeDetach;
.super Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;
.source ""


# direct methods
.method public constructor <init>(Lio/reactivex/MaybeSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;-><init>(Lio/reactivex/MaybeSource;)V

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 1

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;->source:Lio/reactivex/MaybeSource;

    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;-><init>(Lio/reactivex/MaybeObserver;)V

    invoke-interface {p0, v0}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    return-void
.end method
