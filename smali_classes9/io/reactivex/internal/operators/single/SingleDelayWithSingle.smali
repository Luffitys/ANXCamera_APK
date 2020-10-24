.class public final Lio/reactivex/internal/operators/single/SingleDelayWithSingle;
.super Lio/reactivex/Single;
.source ""


# instance fields
.field final other:Lio/reactivex/SingleSource;

.field final source:Lio/reactivex/SingleSource;


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDelayWithSingle;->source:Lio/reactivex/SingleSource;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDelayWithSingle;->other:Lio/reactivex/SingleSource;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDelayWithSingle;->other:Lio/reactivex/SingleSource;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleDelayWithSingle$OtherObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleDelayWithSingle;->source:Lio/reactivex/SingleSource;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/single/SingleDelayWithSingle$OtherObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/SingleSource;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
