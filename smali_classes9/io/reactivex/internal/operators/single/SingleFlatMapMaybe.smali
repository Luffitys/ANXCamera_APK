.class public final Lio/reactivex/internal/operators/single/SingleFlatMapMaybe;
.super Lio/reactivex/Maybe;
.source ""


# instance fields
.field final mapper:Lio/reactivex/functions/Function;

.field final source:Lio/reactivex/SingleSource;


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Function;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe;->mapper:Lio/reactivex/functions/Function;

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe;->source:Lio/reactivex/SingleSource;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe;->source:Lio/reactivex/SingleSource;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe;->mapper:Lio/reactivex/functions/Function;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/single/SingleFlatMapMaybe$FlatMapSingleObserver;-><init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Function;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
