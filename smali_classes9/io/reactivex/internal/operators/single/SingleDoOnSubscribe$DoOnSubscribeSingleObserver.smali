.class final Lio/reactivex/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleObserver;


# instance fields
.field final actual:Lio/reactivex/SingleObserver;

.field done:Z

.field final onSubscribe:Lio/reactivex/functions/Consumer;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->actual:Lio/reactivex/SingleObserver;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->onSubscribe:Lio/reactivex/functions/Consumer;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->done:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {p0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->onSubscribe:Lio/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {p0, p1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->done:Z

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-static {v0, p0}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {p0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
