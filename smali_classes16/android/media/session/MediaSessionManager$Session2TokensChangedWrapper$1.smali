.class Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;
.super Landroid/media/session/ISession2TokensListener$Stub;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;)V
    .registers 2

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;

    invoke-direct {p0}, Landroid/media/session/ISession2TokensListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSession2TokensChanged$0$MediaSessionManager$Session2TokensChangedWrapper$1(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;

    # getter for: Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;
    invoke-static {v0}, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;->access$800(Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;)Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;->onSession2TokensChanged(Ljava/util/List;)V

    return-void
.end method

.method public onSession2TokensChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/Session2Token;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;

    # getter for: Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;->access$700(Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/session/-$$Lambda$MediaSessionManager$Session2TokensChangedWrapper$1$4_TH2zkLY97pxK-e1EPxtPhZwdk;

    invoke-direct {v1, p0, p1}, Landroid/media/session/-$$Lambda$MediaSessionManager$Session2TokensChangedWrapper$1$4_TH2zkLY97pxK-e1EPxtPhZwdk;-><init>(Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
