.class final Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteAccessibilityEmbeddedConnection"
.end annotation


# instance fields
.field private final mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

.field private final mLeashToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V
    .registers 4

    iput-object p1, p0, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    iput-object p3, p0, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;->mLeashToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;->unlinkToDeath()V

    iget-object v0, p0, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;->this$0:Landroid/view/SurfaceView;

    new-instance v1, Landroid/view/-$$Lambda$SurfaceView$RemoteAccessibilityEmbeddedConnection$MJCC8_qn1j4IJab7lJYkrpYVv74;

    invoke-direct {v1, p0}, Landroid/view/-$$Lambda$SurfaceView$RemoteAccessibilityEmbeddedConnection$MJCC8_qn1j4IJab7lJYkrpYVv74;-><init>(Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;)V

    # invokes: Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Landroid/view/SurfaceView;->access$500(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    return-void
.end method

.method getConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-object v0
.end method

.method getLeashToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;->mLeashToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public synthetic lambda$binderDied$0$SurfaceView$RemoteAccessibilityEmbeddedConnection()V
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;->this$0:Landroid/view/SurfaceView;

    # getter for: Landroid/view/SurfaceView;->mRemoteAccessibilityEmbeddedConnection:Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;
    invoke-static {v0}, Landroid/view/SurfaceView;->access$600(Landroid/view/SurfaceView;)Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;

    move-result-object v0

    if-ne v0, p0, :cond_e

    iget-object v0, p0, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;->this$0:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    # setter for: Landroid/view/SurfaceView;->mRemoteAccessibilityEmbeddedConnection:Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;
    invoke-static {v0, v1}, Landroid/view/SurfaceView;->access$602(Landroid/view/SurfaceView;Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;)Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;

    :cond_e
    return-void
.end method

.method linkToDeath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method unlinkToDeath()V
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceView$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
