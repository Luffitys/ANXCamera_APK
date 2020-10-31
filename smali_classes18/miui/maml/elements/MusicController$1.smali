.class Lmiui/maml/elements/MusicController$1;
.super Ljava/lang/Object;
.source "MusicController.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/MusicController;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicController;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/MusicController$1;->this$0:Lmiui/maml/elements/MusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/MusicController$1;->this$0:Lmiui/maml/elements/MusicController;

    # invokes: Lmiui/maml/elements/MusicController;->resetMediaController(Ljava/util/List;)V
    invoke-static {v0, p1}, Lmiui/maml/elements/MusicController;->access$000(Lmiui/maml/elements/MusicController;Ljava/util/List;)V

    const-string v0, "MAML_MusicController"

    const-string v1, "onActiveSessionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
