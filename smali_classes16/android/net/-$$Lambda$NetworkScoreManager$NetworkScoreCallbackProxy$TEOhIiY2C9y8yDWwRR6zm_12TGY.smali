.class public final synthetic Landroid/net/-$$Lambda$NetworkScoreManager$NetworkScoreCallbackProxy$TEOhIiY2C9y8yDWwRR6zm_12TGY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$NetworkScoreManager$NetworkScoreCallbackProxy$TEOhIiY2C9y8yDWwRR6zm_12TGY;->f$0:Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;

    iput-object p2, p0, Landroid/net/-$$Lambda$NetworkScoreManager$NetworkScoreCallbackProxy$TEOhIiY2C9y8yDWwRR6zm_12TGY;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/net/-$$Lambda$NetworkScoreManager$NetworkScoreCallbackProxy$TEOhIiY2C9y8yDWwRR6zm_12TGY;->f$0:Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;

    iget-object v1, p0, Landroid/net/-$$Lambda$NetworkScoreManager$NetworkScoreCallbackProxy$TEOhIiY2C9y8yDWwRR6zm_12TGY;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->lambda$updateScores$0$NetworkScoreManager$NetworkScoreCallbackProxy(Ljava/util/List;)V

    return-void
.end method
