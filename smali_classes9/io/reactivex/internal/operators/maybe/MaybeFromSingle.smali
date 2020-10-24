.class public final Lio/reactivex/internal/operators/maybe/MaybeFromSingle;
.super Lio/reactivex/Maybe;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/HasUpstreamSingleSource;


# instance fields
.field final source:Lio/reactivex/SingleSource;


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle;->source:Lio/reactivex/SingleSource;

    return-void
.end method


# virtual methods
.method public source()Lio/reactivex/SingleSource;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle;->source:Lio/reactivex/SingleSource;

    return-object p0
.end method

.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 1

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle;->source:Lio/reactivex/SingleSource;

    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;-><init>(Lio/reactivex/MaybeObserver;)V

    invoke-interface {p0, v0}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
