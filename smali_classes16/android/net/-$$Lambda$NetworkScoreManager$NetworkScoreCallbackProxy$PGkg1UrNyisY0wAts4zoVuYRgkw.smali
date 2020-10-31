.class public final synthetic Landroid/net/-$$Lambda$NetworkScoreManager$NetworkScoreCallbackProxy$PGkg1UrNyisY0wAts4zoVuYRgkw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;


# direct methods
.method public synthetic constructor <init>(Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$NetworkScoreManager$NetworkScoreCallbackProxy$PGkg1UrNyisY0wAts4zoVuYRgkw;->f$0:Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/net/-$$Lambda$NetworkScoreManager$NetworkScoreCallbackProxy$PGkg1UrNyisY0wAts4zoVuYRgkw;->f$0:Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->lambda$clearScores$1$NetworkScoreManager$NetworkScoreCallbackProxy()V

    return-void
.end method
