.class abstract Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;
.super Lio/reactivex/Maybe;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/HasUpstreamMaybeSource;


# instance fields
.field protected final source:Lio/reactivex/MaybeSource;


# direct methods
.method constructor <init>(Lio/reactivex/MaybeSource;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;->source:Lio/reactivex/MaybeSource;

    return-void
.end method


# virtual methods
.method public final source()Lio/reactivex/MaybeSource;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;->source:Lio/reactivex/MaybeSource;

    return-object p0
.end method
