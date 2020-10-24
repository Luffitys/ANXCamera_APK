.class final Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source ""

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# static fields
.field private static final serialVersionUID:J = -0xf44f24fda471418L


# instance fields
.field final child:Lio/reactivex/Observer;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;->child:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->remove(Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method setParent(Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->remove(Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;)V

    :cond_0
    return-void
.end method
