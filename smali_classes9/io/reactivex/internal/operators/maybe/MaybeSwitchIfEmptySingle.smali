.class public final Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle;
.super Lio/reactivex/Single;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/HasUpstreamMaybeSource;


# instance fields
.field final other:Lio/reactivex/SingleSource;

.field final source:Lio/reactivex/MaybeSource;


# direct methods
.method public constructor <init>(Lio/reactivex/MaybeSource;Lio/reactivex/SingleSource;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle;->source:Lio/reactivex/MaybeSource;

    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle;->other:Lio/reactivex/SingleSource;

    return-void
.end method


# virtual methods
.method public source()Lio/reactivex/MaybeSource;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle;->source:Lio/reactivex/MaybeSource;

    return-object p0
.end method

.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle;->source:Lio/reactivex/MaybeSource;

    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle;->other:Lio/reactivex/SingleSource;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/maybe/MaybeSwitchIfEmptySingle$SwitchIfEmptyMaybeObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/SingleSource;)V

    invoke-interface {v0, v1}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    return-void
.end method
