.class public abstract Landroid/telephony/NetworkService$NetworkServiceProvider;
.super Ljava/lang/Object;
.source "NetworkService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/NetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "NetworkServiceProvider"
.end annotation


# instance fields
.field private final mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/INetworkServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlotIndex:I

.field final synthetic this$0:Landroid/telephony/NetworkService;


# direct methods
.method public constructor <init>(Landroid/telephony/NetworkService;I)V
    .registers 4

    iput-object p1, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->this$0:Landroid/telephony/NetworkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    iput p2, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mSlotIndex:I

    return-void
.end method

.method static synthetic access$300(Landroid/telephony/NetworkService$NetworkServiceProvider;Landroid/telephony/INetworkServiceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->registerForInfoChanged(Landroid/telephony/INetworkServiceCallback;)V

    return-void
.end method

.method static synthetic access$400(Landroid/telephony/NetworkService$NetworkServiceProvider;Landroid/telephony/INetworkServiceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->unregisterForInfoChanged(Landroid/telephony/INetworkServiceCallback;)V

    return-void
.end method

.method static synthetic access$500(Landroid/telephony/NetworkService$NetworkServiceProvider;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/NetworkService$NetworkServiceProvider;->notifyInfoChangedToCallbacks()V

    return-void
.end method

.method private notifyInfoChangedToCallbacks()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/INetworkServiceCallback;

    :try_start_12
    invoke-interface {v1}, Landroid/telephony/INetworkServiceCallback;->onNetworkStateChanged()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v2

    :goto_17
    goto :goto_6

    :cond_18
    return-void
.end method

.method private registerForInfoChanged(Landroid/telephony/INetworkServiceCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private unregisterForInfoChanged(Landroid/telephony/INetworkServiceCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method


# virtual methods
.method public abstract close()V
.end method

.method public final getSlotIndex()I
    .registers 2

    iget v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mSlotIndex:I

    return v0
.end method

.method public final notifyNetworkRegistrationInfoChanged()V
    .registers 6

    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->this$0:Landroid/telephony/NetworkService;

    # getter for: Landroid/telephony/NetworkService;->mHandler:Landroid/telephony/NetworkService$NetworkServiceHandler;
    invoke-static {v0}, Landroid/telephony/NetworkService;->access$100(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mSlotIndex:I

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestNetworkRegistrationInfo(ILandroid/telephony/NetworkServiceCallback;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/telephony/NetworkServiceCallback;->onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V

    return-void
.end method
