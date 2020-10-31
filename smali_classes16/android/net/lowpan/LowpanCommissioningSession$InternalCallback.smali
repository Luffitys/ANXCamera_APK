.class Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;
.super Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
.source "LowpanCommissioningSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanCommissioningSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/lowpan/LowpanCommissioningSession;


# direct methods
.method private constructor <init>(Landroid/net/lowpan/LowpanCommissioningSession;)V
    .registers 2

    iput-object p1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/lowpan/LowpanCommissioningSession;Landroid/net/lowpan/LowpanCommissioningSession$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;-><init>(Landroid/net/lowpan/LowpanCommissioningSession;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceiveFromCommissioner$0$LowpanCommissioningSession$InternalCallback([B)V
    .registers 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    # getter for: Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z
    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->access$100(Landroid/net/lowpan/LowpanCommissioningSession;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    # getter for: Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;
    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->access$400(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    # getter for: Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;
    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->access$400(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/lowpan/LowpanCommissioningSession$Callback;->onReceiveFromCommissioner([B)V

    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public onConnectedChanged(Z)V
    .registers 2

    return-void
.end method

.method public onEnabledChanged(Z)V
    .registers 2

    return-void
.end method

.method public onLinkAddressAdded(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onLinkAddressRemoved(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onLinkNetworkAdded(Landroid/net/IpPrefix;)V
    .registers 2

    return-void
.end method

.method public onLinkNetworkRemoved(Landroid/net/IpPrefix;)V
    .registers 2

    return-void
.end method

.method public onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V
    .registers 2

    return-void
.end method

.method public onReceiveFromCommissioner([B)V
    .registers 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    # getter for: Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->access$300(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/lowpan/-$$Lambda$LowpanCommissioningSession$InternalCallback$TrrmDykqIWeXNdgrXO7t2-rqCTo;

    invoke-direct {v1, p0, p1}, Landroid/net/lowpan/-$$Lambda$LowpanCommissioningSession$InternalCallback$TrrmDykqIWeXNdgrXO7t2-rqCTo;-><init>(Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoleChanged(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStateChanged(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    # getter for: Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z
    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->access$100(Landroid/net/lowpan/LowpanCommissioningSession;)Z

    move-result v0

    if-nez v0, :cond_3f

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5c4df21d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_23

    const v2, 0x5cb3a22

    if-eq v1, v2, :cond_19

    :cond_18
    goto :goto_2d

    :cond_19
    const-string v1, "fault"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v0, v3

    goto :goto_2d

    :cond_23
    const-string/jumbo v1, "offline"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x0

    :goto_2d
    if-eqz v0, :cond_32

    if-eq v0, v3, :cond_32

    goto :goto_3f

    :cond_32
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    monitor-enter v0

    :try_start_35
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    # invokes: Landroid/net/lowpan/LowpanCommissioningSession;->lockedCleanup()V
    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->access$200(Landroid/net/lowpan/LowpanCommissioningSession;)V

    monitor-exit v0

    goto :goto_3f

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_3c

    throw v1

    :cond_3f
    :goto_3f
    return-void
.end method

.method public onUpChanged(Z)V
    .registers 2

    return-void
.end method
