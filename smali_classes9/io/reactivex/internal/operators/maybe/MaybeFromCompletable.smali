.class public final Lio/reactivex/internal/operators/maybe/MaybeFromCompletable;
.super Lio/reactivex/Maybe;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/HasUpstreamCompletableSource;


# instance fields
.field final source:Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableSource;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFromCompletable;->source:Lio/reactivex/CompletableSource;

    return-void
.end method


# virtual methods
.method public source()Lio/reactivex/CompletableSource;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromCompletable;->source:Lio/reactivex/CompletableSource;

    return-object p0
.end method

.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 1

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromCompletable;->source:Lio/reactivex/CompletableSource;

    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFromCompletable$FromCompletableObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/MaybeFromCompletable$FromCompletableObserver;-><init>(Lio/reactivex/MaybeObserver;)V

    invoke-interface {p0, v0}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
