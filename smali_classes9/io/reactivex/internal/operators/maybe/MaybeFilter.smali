.class public final Lio/reactivex/internal/operators/maybe/MaybeFilter;
.super Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;
.source ""


# instance fields
.field final predicate:Lio/reactivex/functions/Predicate;


# direct methods
.method public constructor <init>(Lio/reactivex/MaybeSource;Lio/reactivex/functions/Predicate;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;-><init>(Lio/reactivex/MaybeSource;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeFilter;->predicate:Lio/reactivex/functions/Predicate;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;->source:Lio/reactivex/MaybeSource;

    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeFilter$FilterMaybeObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilter;->predicate:Lio/reactivex/functions/Predicate;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/maybe/MaybeFilter$FilterMaybeObserver;-><init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Predicate;)V

    invoke-interface {v0, v1}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    return-void
.end method
