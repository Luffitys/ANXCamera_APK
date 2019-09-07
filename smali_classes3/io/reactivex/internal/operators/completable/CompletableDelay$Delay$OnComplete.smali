.class final Lio/reactivex/internal/operators/completable/CompletableDelay$Delay$OnComplete;
.super Ljava/lang/Object;
.source "CompletableDelay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnComplete"
.end annotation


# instance fields
.field final synthetic this$1:Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay$OnComplete;->this$1:Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay$OnComplete;->this$1:Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$Delay;->s:Lio/reactivex/CompletableObserver;

    invoke-interface {p0}, Lio/reactivex/CompletableObserver;->onComplete()V

    return-void
.end method
