.class Landroid/net/IpSecTransform$1;
.super Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
.source "IpSecTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/IpSecTransform;


# direct methods
.method constructor <init>(Landroid/net/IpSecTransform;)V
    .registers 2

    iput-object p1, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onError$2$IpSecTransform$1(I)V
    .registers 3

    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    # getter for: Landroid/net/IpSecTransform;->mUserKeepaliveCallback:Landroid/net/IpSecTransform$NattKeepaliveCallback;
    invoke-static {v0}, Landroid/net/IpSecTransform;->access$200(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform$NattKeepaliveCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/IpSecTransform$NattKeepaliveCallback;->onError(I)V

    return-void
.end method

.method public synthetic lambda$onStarted$0$IpSecTransform$1()V
    .registers 2

    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    # getter for: Landroid/net/IpSecTransform;->mUserKeepaliveCallback:Landroid/net/IpSecTransform$NattKeepaliveCallback;
    invoke-static {v0}, Landroid/net/IpSecTransform;->access$200(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform$NattKeepaliveCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpSecTransform$NattKeepaliveCallback;->onStarted()V

    return-void
.end method

.method public synthetic lambda$onStopped$1$IpSecTransform$1()V
    .registers 2

    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    # getter for: Landroid/net/IpSecTransform;->mUserKeepaliveCallback:Landroid/net/IpSecTransform$NattKeepaliveCallback;
    invoke-static {v0}, Landroid/net/IpSecTransform;->access$200(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform$NattKeepaliveCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpSecTransform$NattKeepaliveCallback;->onStopped()V

    return-void
.end method

.method public onError(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    const/4 v1, 0x0

    # setter for: Landroid/net/IpSecTransform;->mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;
    invoke-static {v0, v1}, Landroid/net/IpSecTransform;->access$102(Landroid/net/IpSecTransform;Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepalive;

    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    # getter for: Landroid/net/IpSecTransform;->mCallbackHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/IpSecTransform;->access$000(Landroid/net/IpSecTransform;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/-$$Lambda$IpSecTransform$1$_ae2VrMToKvertNlEIezU0bdvXE;

    invoke-direct {v1, p0, p1}, Landroid/net/-$$Lambda$IpSecTransform$1$_ae2VrMToKvertNlEIezU0bdvXE;-><init>(Landroid/net/IpSecTransform$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public onStarted()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    # getter for: Landroid/net/IpSecTransform;->mCallbackHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/IpSecTransform;->access$000(Landroid/net/IpSecTransform;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/-$$Lambda$IpSecTransform$1$zl9bpxiE2uj_QuCOkuJ091wPuwo;

    invoke-direct {v1, p0}, Landroid/net/-$$Lambda$IpSecTransform$1$zl9bpxiE2uj_QuCOkuJ091wPuwo;-><init>(Landroid/net/IpSecTransform$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public onStopped()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    const/4 v1, 0x0

    # setter for: Landroid/net/IpSecTransform;->mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;
    invoke-static {v0, v1}, Landroid/net/IpSecTransform;->access$102(Landroid/net/IpSecTransform;Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepalive;

    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    # getter for: Landroid/net/IpSecTransform;->mCallbackHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/IpSecTransform;->access$000(Landroid/net/IpSecTransform;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/-$$Lambda$IpSecTransform$1$Rc3lbWP51o1kJRHwkpVUEV1G_d8;

    invoke-direct {v1, p0}, Landroid/net/-$$Lambda$IpSecTransform$1$Rc3lbWP51o1kJRHwkpVUEV1G_d8;-><init>(Landroid/net/IpSecTransform$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method
