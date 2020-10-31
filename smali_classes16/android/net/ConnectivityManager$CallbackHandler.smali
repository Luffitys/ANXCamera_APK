.class Landroid/net/ConnectivityManager$CallbackHandler;
.super Landroid/os/Handler;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager.CallbackHandler"


# instance fields
.field final synthetic this$0:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V
    .registers 4

    const-string v0, "Handler cannot be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Looper;)V

    return-void
.end method

.method constructor <init>(Landroid/net/ConnectivityManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/net/ConnectivityManager$CallbackHandler;->this$0:Landroid/net/ConnectivityManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Message;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x80008

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Landroid/net/ConnectivityManager$CallbackHandler;->this$0:Landroid/net/ConnectivityManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkCapabilities;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/net/ConnectivityManager;->expireRequest(Landroid/net/NetworkCapabilities;I)V
    invoke-static {v0, v1, v2}, Landroid/net/ConnectivityManager;->access$700(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;I)V

    return-void

    :cond_13
    const-class v0, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v0}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    const-class v1, Landroid/net/Network;

    invoke-direct {p0, p1, v1}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    # getter for: Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/ConnectivityManager;->access$800()Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    :try_start_28
    # getter for: Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/ConnectivityManager;->access$800()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v3, :cond_57

    const-string v4, "ConnectivityManager.CallbackHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callback not found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v6}, Landroid/net/ConnectivityManager;->getCallbackName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " message"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_57
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x80005

    if-ne v4, v5, :cond_6c

    # getter for: Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/ConnectivityManager;->access$800()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Landroid/net/ConnectivityManager;->ALREADY_UNREGISTERED:Landroid/net/NetworkRequest;
    invoke-static {}, Landroid/net/ConnectivityManager;->access$1000()Landroid/net/NetworkRequest;

    move-result-object v4

    # setter for: Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;
    invoke-static {v3, v4}, Landroid/net/ConnectivityManager$NetworkCallback;->access$902(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;

    :cond_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_28 .. :try_end_6d} :catchall_cd

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_d0

    :pswitch_74
    goto :goto_cc

    :pswitch_75
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_7a

    goto :goto_7b

    :cond_7a
    move v4, v5

    :goto_7b
    move v2, v4

    invoke-virtual {v3, v1, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onBlockedStatusChanged(Landroid/net/Network;Z)V

    goto :goto_cc

    :pswitch_80
    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager$NetworkCallback;->onNetworkResumed(Landroid/net/Network;)V

    goto :goto_cc

    :pswitch_84
    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager$NetworkCallback;->onNetworkSuspended(Landroid/net/Network;)V

    goto :goto_cc

    :pswitch_88
    const-class v2, Landroid/net/LinkProperties;

    invoke-direct {p0, p1, v2}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    invoke-virtual {v3, v1, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    goto :goto_cc

    :pswitch_94
    const-class v2, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, v2}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v1, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    goto :goto_cc

    :pswitch_a0
    invoke-virtual {v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    goto :goto_cc

    :pswitch_a4
    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    goto :goto_cc

    :pswitch_a8
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v1, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    goto :goto_cc

    :pswitch_ae
    const-class v2, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, v2}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    const-class v6, Landroid/net/LinkProperties;

    invoke-direct {p0, p1, v6}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_c3

    goto :goto_c4

    :cond_c3
    move v4, v5

    :goto_c4
    invoke-virtual {v3, v1, v2, v6, v4}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Z)V

    goto :goto_cc

    :pswitch_c8
    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager$NetworkCallback;->onPreCheck(Landroid/net/Network;)V

    nop

    :goto_cc
    return-void

    :catchall_cd
    move-exception v3

    :try_start_ce
    monitor-exit v2
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw v3

    :pswitch_data_d0
    .packed-switch 0x80001
        :pswitch_c8
        :pswitch_ae
        :pswitch_a8
        :pswitch_a4
        :pswitch_a0
        :pswitch_94
        :pswitch_88
        :pswitch_74
        :pswitch_84
        :pswitch_80
        :pswitch_75
    .end packed-switch
.end method
