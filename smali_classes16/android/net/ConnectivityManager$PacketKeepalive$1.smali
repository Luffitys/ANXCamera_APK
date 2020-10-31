.class Landroid/net/ConnectivityManager$PacketKeepalive$1;
.super Landroid/net/ISocketKeepaliveCallback$Stub;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager$PacketKeepalive;-><init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

.field final synthetic val$callback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

.field final synthetic val$this$0:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager$PacketKeepalive;Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
    .registers 4

    iput-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    iput-object p2, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->val$this$0:Landroid/net/ConnectivityManager;

    iput-object p3, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->val$callback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    invoke-direct {p0}, Landroid/net/ISocketKeepaliveCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onError$4$ConnectivityManager$PacketKeepalive$1(Landroid/net/ConnectivityManager$PacketKeepaliveCallback;I)V
    .registers 5

    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    const/4 v1, 0x0

    # setter for: Landroid/net/ConnectivityManager$PacketKeepalive;->mSlot:Ljava/lang/Integer;
    invoke-static {v0, v1}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$302(Landroid/net/ConnectivityManager$PacketKeepalive;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onError(I)V

    return-void
.end method

.method public synthetic lambda$onError$5$ConnectivityManager$PacketKeepalive$1(Landroid/net/ConnectivityManager$PacketKeepaliveCallback;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    # getter for: Landroid/net/ConnectivityManager$PacketKeepalive;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$200(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$JWcQQZv8Qrs81cZ-BMAOZZ8MUeU;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$JWcQQZv8Qrs81cZ-BMAOZZ8MUeU;-><init>(Landroid/net/ConnectivityManager$PacketKeepalive$1;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onStarted$0$ConnectivityManager$PacketKeepalive$1(ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # setter for: Landroid/net/ConnectivityManager$PacketKeepalive;->mSlot:Ljava/lang/Integer;
    invoke-static {v0, v1}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$302(Landroid/net/ConnectivityManager$PacketKeepalive;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-virtual {p2}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onStarted()V

    return-void
.end method

.method public synthetic lambda$onStarted$1$ConnectivityManager$PacketKeepalive$1(ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    # getter for: Landroid/net/ConnectivityManager$PacketKeepalive;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$200(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$NfMgP6Nh6Ep6LcaiJ10o_zBccII;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$NfMgP6Nh6Ep6LcaiJ10o_zBccII;-><init>(Landroid/net/ConnectivityManager$PacketKeepalive$1;ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onStopped$2$ConnectivityManager$PacketKeepalive$1(Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    const/4 v1, 0x0

    # setter for: Landroid/net/ConnectivityManager$PacketKeepalive;->mSlot:Ljava/lang/Integer;
    invoke-static {v0, v1}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$302(Landroid/net/ConnectivityManager$PacketKeepalive;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;->onStopped()V

    return-void
.end method

.method public synthetic lambda$onStopped$3$ConnectivityManager$PacketKeepalive$1(Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    # getter for: Landroid/net/ConnectivityManager$PacketKeepalive;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$200(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$WmmtbYWlzqL-V8wWUDKe3CWjvy0;

    invoke-direct {v1, p0, p1}, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$WmmtbYWlzqL-V8wWUDKe3CWjvy0;-><init>(Landroid/net/ConnectivityManager$PacketKeepalive$1;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDataReceived()V
    .registers 1

    return-void
.end method

.method public onError(I)V
    .registers 4

    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->val$callback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    new-instance v1, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$nt5Pgsn85fhX6h9EJ0eAK_PXAjU;

    invoke-direct {v1, p0, v0, p1}, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$nt5Pgsn85fhX6h9EJ0eAK_PXAjU;-><init>(Landroid/net/ConnectivityManager$PacketKeepalive$1;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    # getter for: Landroid/net/ConnectivityManager$PacketKeepalive;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$200(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public onStarted(I)V
    .registers 4

    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->val$callback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    new-instance v1, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$iOtsqOYp69ztB6u3PYNu-iI_PGo;

    invoke-direct {v1, p0, p1, v0}, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$iOtsqOYp69ztB6u3PYNu-iI_PGo;-><init>(Landroid/net/ConnectivityManager$PacketKeepalive$1;ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onStopped()V
    .registers 3

    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->val$callback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    new-instance v1, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$-H5tzn67t3ydWL8tXpl9UyOmDcc;

    invoke-direct {v1, p0, v0}, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$1$-H5tzn67t3ydWL8tXpl9UyOmDcc;-><init>(Landroid/net/ConnectivityManager$PacketKeepalive$1;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive$1;->this$1:Landroid/net/ConnectivityManager$PacketKeepalive;

    # getter for: Landroid/net/ConnectivityManager$PacketKeepalive;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$200(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
