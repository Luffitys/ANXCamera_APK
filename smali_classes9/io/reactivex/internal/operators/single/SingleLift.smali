.class public final Lio/reactivex/internal/operators/single/SingleLift;
.super Lio/reactivex/Single;
.source ""


# instance fields
.field final onLift:Lio/reactivex/SingleOperator;

.field final source:Lio/reactivex/SingleSource;


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;Lio/reactivex/SingleOperator;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleLift;->source:Lio/reactivex/SingleSource;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleLift;->onLift:Lio/reactivex/SingleOperator;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleLift;->onLift:Lio/reactivex/SingleOperator;

    invoke-interface {v0, p1}, Lio/reactivex/SingleOperator;->apply(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    move-result-object v0

    const-string v1, "The onLift returned a null SingleObserver"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleLift;->source:Lio/reactivex/SingleSource;

    invoke-interface {p0, v0}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    return-void
.end method
