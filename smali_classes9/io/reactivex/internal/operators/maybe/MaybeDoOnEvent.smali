.class public final Lio/reactivex/internal/operators/maybe/MaybeDoOnEvent;
.super Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;
.source ""


# instance fields
.field final onEvent:Lio/reactivex/functions/BiConsumer;


# direct methods
.method public constructor <init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/BiConsumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;-><init>(Lio/reactivex/MaybeSource;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeDoOnEvent;->onEvent:Lio/reactivex/functions/BiConsumer;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;->source:Lio/reactivex/MaybeSource;

    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeDoOnEvent$DoOnEventMaybeObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeDoOnEvent;->onEvent:Lio/reactivex/functions/BiConsumer;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/maybe/MaybeDoOnEvent$DoOnEventMaybeObserver;-><init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/BiConsumer;)V

    invoke-interface {v0, v1}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    return-void
.end method
