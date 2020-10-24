.class public final Lio/reactivex/internal/operators/single/SingleDoOnSuccess;
.super Lio/reactivex/Single;
.source ""


# instance fields
.field final onSuccess:Lio/reactivex/functions/Consumer;

.field final source:Lio/reactivex/SingleSource;


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Consumer;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDoOnSuccess;->source:Lio/reactivex/SingleSource;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDoOnSuccess;->onSuccess:Lio/reactivex/functions/Consumer;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnSuccess;->source:Lio/reactivex/SingleSource;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleDoOnSuccess$DoOnSuccess;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/single/SingleDoOnSuccess$DoOnSuccess;-><init>(Lio/reactivex/internal/operators/single/SingleDoOnSuccess;Lio/reactivex/SingleObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
