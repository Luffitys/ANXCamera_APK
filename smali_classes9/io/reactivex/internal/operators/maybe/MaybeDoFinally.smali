.class public final Lio/reactivex/internal/operators/maybe/MaybeDoFinally;
.super Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;
.source ""


# annotations
.annotation build Lio/reactivex/annotations/Experimental;
.end annotation


# instance fields
.field final onFinally:Lio/reactivex/functions/Action;


# direct methods
.method public constructor <init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Action;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;-><init>(Lio/reactivex/MaybeSource;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeDoFinally;->onFinally:Lio/reactivex/functions/Action;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;->source:Lio/reactivex/MaybeSource;

    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeDoFinally$DoFinallyObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeDoFinally;->onFinally:Lio/reactivex/functions/Action;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/maybe/MaybeDoFinally$DoFinallyObserver;-><init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Action;)V

    invoke-interface {v0, v1}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    return-void
.end method
