.class public final Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle;
.super Lio/reactivex/Single;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/HasUpstreamMaybeSource;
.implements Lio/reactivex/internal/fuseable/FuseToMaybe;


# instance fields
.field final source:Lio/reactivex/MaybeSource;


# direct methods
.method public constructor <init>(Lio/reactivex/MaybeSource;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle;->source:Lio/reactivex/MaybeSource;

    return-void
.end method


# virtual methods
.method public fuseToMaybe()Lio/reactivex/Maybe;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeIsEmpty;

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle;->source:Lio/reactivex/MaybeSource;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeIsEmpty;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public source()Lio/reactivex/MaybeSource;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle;->source:Lio/reactivex/MaybeSource;

    return-object p0
.end method

.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 1

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle;->source:Lio/reactivex/MaybeSource;

    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;-><init>(Lio/reactivex/SingleObserver;)V

    invoke-interface {p0, v0}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    return-void
.end method
