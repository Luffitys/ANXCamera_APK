.class Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;
.super Landroid/net/INetworkScoreCache$Stub;
.source "NetworkScoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkScoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkScoreCallbackProxy"
.end annotation


# instance fields
.field private final mCallback:Landroid/net/NetworkScoreManager$NetworkScoreCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Landroid/net/NetworkScoreManager;


# direct methods
.method constructor <init>(Landroid/net/NetworkScoreManager;Ljava/util/concurrent/Executor;Landroid/net/NetworkScoreManager$NetworkScoreCallback;)V
    .registers 4

    iput-object p1, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->this$0:Landroid/net/NetworkScoreManager;

    invoke-direct {p0}, Landroid/net/INetworkScoreCache$Stub;-><init>()V

    iput-object p2, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mCallback:Landroid/net/NetworkScoreManager$NetworkScoreCallback;

    return-void
.end method


# virtual methods
.method public clearScores()V
    .registers 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/-$$Lambda$NetworkScoreManager$NetworkScoreCallbackProxy$PGkg1UrNyisY0wAts4zoVuYRgkw;

    invoke-direct {v1, p0}, Landroid/net/-$$Lambda$NetworkScoreManager$NetworkScoreCallbackProxy$PGkg1UrNyisY0wAts4zoVuYRgkw;-><init>(Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$clearScores$1$NetworkScoreManager$NetworkScoreCallbackProxy()V
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mCallback:Landroid/net/NetworkScoreManager$NetworkScoreCallback;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager$NetworkScoreCallback;->onScoresInvalidated()V

    return-void
.end method

.method public synthetic lambda$updateScores$0$NetworkScoreManager$NetworkScoreCallbackProxy(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mCallback:Landroid/net/NetworkScoreManager$NetworkScoreCallback;

    invoke-virtual {v0, p1}, Landroid/net/NetworkScoreManager$NetworkScoreCallback;->onScoresUpdated(Ljava/util/Collection;)V

    return-void
.end method

.method public updateScores(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/-$$Lambda$NetworkScoreManager$NetworkScoreCallbackProxy$TEOhIiY2C9y8yDWwRR6zm_12TGY;

    invoke-direct {v1, p0, p1}, Landroid/net/-$$Lambda$NetworkScoreManager$NetworkScoreCallbackProxy$TEOhIiY2C9y8yDWwRR6zm_12TGY;-><init>(Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
