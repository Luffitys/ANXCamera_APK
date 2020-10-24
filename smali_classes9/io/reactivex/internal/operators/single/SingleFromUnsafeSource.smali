.class public final Lio/reactivex/internal/operators/single/SingleFromUnsafeSource;
.super Lio/reactivex/Single;
.source ""


# instance fields
.field final source:Lio/reactivex/SingleSource;


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleFromUnsafeSource;->source:Lio/reactivex/SingleSource;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleFromUnsafeSource;->source:Lio/reactivex/SingleSource;

    invoke-interface {p0, p1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
