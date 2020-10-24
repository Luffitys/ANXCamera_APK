.class final Lio/reactivex/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final observer:Lio/reactivex/MaybeObserver;

.field final source:Lio/reactivex/MaybeSource;


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/MaybeSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;->observer:Lio/reactivex/MaybeObserver;

    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;->source:Lio/reactivex/MaybeSource;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;->source:Lio/reactivex/MaybeSource;

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;->observer:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p0}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    return-void
.end method
