.class public final Lio/reactivex/internal/operators/completable/CompletablePeek;
.super Lio/reactivex/Completable;
.source ""


# instance fields
.field final onAfterTerminate:Lio/reactivex/functions/Action;

.field final onComplete:Lio/reactivex/functions/Action;

.field final onDispose:Lio/reactivex/functions/Action;

.field final onError:Lio/reactivex/functions/Consumer;

.field final onSubscribe:Lio/reactivex/functions/Consumer;

.field final onTerminate:Lio/reactivex/functions/Action;

.field final source:Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableSource;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek;->source:Lio/reactivex/CompletableSource;

    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletablePeek;->onSubscribe:Lio/reactivex/functions/Consumer;

    iput-object p3, p0, Lio/reactivex/internal/operators/completable/CompletablePeek;->onError:Lio/reactivex/functions/Consumer;

    iput-object p4, p0, Lio/reactivex/internal/operators/completable/CompletablePeek;->onComplete:Lio/reactivex/functions/Action;

    iput-object p5, p0, Lio/reactivex/internal/operators/completable/CompletablePeek;->onTerminate:Lio/reactivex/functions/Action;

    iput-object p6, p0, Lio/reactivex/internal/operators/completable/CompletablePeek;->onAfterTerminate:Lio/reactivex/functions/Action;

    iput-object p7, p0, Lio/reactivex/internal/operators/completable/CompletablePeek;->onDispose:Lio/reactivex/functions/Action;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletablePeek;->source:Lio/reactivex/CompletableSource;

    new-instance v1, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;-><init>(Lio/reactivex/internal/operators/completable/CompletablePeek;Lio/reactivex/CompletableObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
