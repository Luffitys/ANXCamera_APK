.class Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->onMediaKey(Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

.field final synthetic val$event:Landroid/view/KeyEvent;

.field final synthetic val$result:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
    .registers 4

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->this$0:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$event:Landroid/view/KeyEvent;

    iput-object p3, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$result:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->this$0:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    # getter for: Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->mListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListener;
    invoke-static {v0}, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->access$1000(Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;)Landroid/media/session/MediaSessionManager$OnMediaKeyListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$event:Landroid/view/KeyEvent;

    invoke-interface {v0, v1}, Landroid/media/session/MediaSessionManager$OnMediaKeyListener;->onMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The media key listener is returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SessionManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$result:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_2b

    nop

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_2b
    return-void
.end method
