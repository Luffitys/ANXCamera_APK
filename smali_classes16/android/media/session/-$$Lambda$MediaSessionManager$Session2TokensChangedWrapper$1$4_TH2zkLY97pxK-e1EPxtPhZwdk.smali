.class public final synthetic Landroid/media/session/-$$Lambda$MediaSessionManager$Session2TokensChangedWrapper$1$4_TH2zkLY97pxK-e1EPxtPhZwdk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/session/-$$Lambda$MediaSessionManager$Session2TokensChangedWrapper$1$4_TH2zkLY97pxK-e1EPxtPhZwdk;->f$0:Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;

    iput-object p2, p0, Landroid/media/session/-$$Lambda$MediaSessionManager$Session2TokensChangedWrapper$1$4_TH2zkLY97pxK-e1EPxtPhZwdk;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/session/-$$Lambda$MediaSessionManager$Session2TokensChangedWrapper$1$4_TH2zkLY97pxK-e1EPxtPhZwdk;->f$0:Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;

    iget-object v1, p0, Landroid/media/session/-$$Lambda$MediaSessionManager$Session2TokensChangedWrapper$1$4_TH2zkLY97pxK-e1EPxtPhZwdk;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;->lambda$onSession2TokensChanged$0$MediaSessionManager$Session2TokensChangedWrapper$1(Ljava/util/List;)V

    return-void
.end method
