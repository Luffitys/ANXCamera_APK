.class final Lio/reactivex/internal/operators/single/SingleContains$Single;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleObserver;


# instance fields
.field private final s:Lio/reactivex/SingleObserver;

.field final synthetic this$0:Lio/reactivex/internal/operators/single/SingleContains;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleContains;Lio/reactivex/SingleObserver;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleContains$Single;->this$0:Lio/reactivex/internal/operators/single/SingleContains;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleContains$Single;->s:Lio/reactivex/SingleObserver;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleContains$Single;->s:Lio/reactivex/SingleObserver;

    invoke-interface {p0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleContains$Single;->s:Lio/reactivex/SingleObserver;

    invoke-interface {p0, p1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleContains$Single;->this$0:Lio/reactivex/internal/operators/single/SingleContains;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleContains;->comparer:Lio/reactivex/functions/BiPredicate;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleContains$Single;->this$0:Lio/reactivex/internal/operators/single/SingleContains;

    iget-object v1, v1, Lio/reactivex/internal/operators/single/SingleContains;->value:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lio/reactivex/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleContains$Single;->s:Lio/reactivex/SingleObserver;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleContains$Single;->s:Lio/reactivex/SingleObserver;

    invoke-interface {p0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
