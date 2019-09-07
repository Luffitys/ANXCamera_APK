.class final Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNext$OnErrorObserver;
.super Ljava/lang/Object;
.source "CompletableResumeNext.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnErrorObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNext;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNext;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNext$OnErrorObserver;->this$1:Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNext$OnErrorObserver;->this$1:Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNext;

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNext;->s:Lio/reactivex/CompletableObserver;

    invoke-interface {p0}, Lio/reactivex/CompletableObserver;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNext$OnErrorObserver;->this$1:Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNext;

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNext;->s:Lio/reactivex/CompletableObserver;

    invoke-interface {p0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNext$OnErrorObserver;->this$1:Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNext;

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNext;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->update(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
