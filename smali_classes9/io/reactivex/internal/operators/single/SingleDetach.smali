.class public final Lio/reactivex/internal/operators/single/SingleDetach;
.super Lio/reactivex/Single;
.source ""


# annotations
.annotation build Lio/reactivex/annotations/Experimental;
.end annotation


# instance fields
.field final source:Lio/reactivex/SingleSource;


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDetach;->source:Lio/reactivex/SingleSource;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 1

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleDetach;->source:Lio/reactivex/SingleSource;

    new-instance v0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;-><init>(Lio/reactivex/SingleObserver;)V

    invoke-interface {p0, v0}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
