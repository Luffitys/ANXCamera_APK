.class public Landroid/net/ConnectivityManager$PacketKeepalive;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PacketKeepalive"
.end annotation


# static fields
.field public static final BINDER_DIED:I = -0xa

.field public static final ERROR_HARDWARE_ERROR:I = -0x1f

.field public static final ERROR_HARDWARE_UNSUPPORTED:I = -0x1e

.field public static final ERROR_INVALID_INTERVAL:I = -0x18

.field public static final ERROR_INVALID_IP_ADDRESS:I = -0x15

.field public static final ERROR_INVALID_LENGTH:I = -0x17

.field public static final ERROR_INVALID_NETWORK:I = -0x14

.field public static final ERROR_INVALID_PORT:I = -0x16

.field public static final MIN_INTERVAL:I = 0xa

.field public static final NATT_PORT:I = 0x1194

.field public static final NO_KEEPALIVE:I = -0x1

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PacketKeepalive"


# instance fields
.field private final mCallback:Landroid/net/ISocketKeepaliveCallback;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mNetwork:Landroid/net/Network;

.field private volatile mSlot:Ljava/lang/Integer;

.field final synthetic this$0:Landroid/net/ConnectivityManager;


# direct methods
.method private constructor <init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V
    .registers 5

    iput-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->this$0:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "network cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mNetwork:Landroid/net/Network;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/net/ConnectivityManager$PacketKeepalive$1;

    invoke-direct {v0, p0, p1, p3}, Landroid/net/ConnectivityManager$PacketKeepalive$1;-><init>(Landroid/net/ConnectivityManager$PacketKeepalive;Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V

    iput-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mCallback:Landroid/net/ISocketKeepaliveCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;Landroid/net/ConnectivityManager$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/ConnectivityManager$PacketKeepalive;-><init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/ConnectivityManager$PacketKeepalive;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/ConnectivityManager$PacketKeepalive;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    iput-object p1, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mSlot:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$600(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ISocketKeepaliveCallback;
    .registers 2

    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mCallback:Landroid/net/ISocketKeepaliveCallback;

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$stop$0$ConnectivityManager$PacketKeepalive()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mSlot:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->this$0:Landroid/net/ConnectivityManager;

    # getter for: Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;
    invoke-static {v0}, Landroid/net/ConnectivityManager;->access$400(Landroid/net/ConnectivityManager;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mNetwork:Landroid/net/Network;

    iget-object v2, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mSlot:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->stopKeepalive(Landroid/net/Network;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    :cond_15
    nop

    return-void

    :catch_17
    move-exception v0

    const-string v1, "PacketKeepalive"

    const-string v2, "Error stopping packet keepalive: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stop()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager$PacketKeepalive;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$--8nwufwzyblnuYRFEYIKx7L4Vg;

    invoke-direct {v1, p0}, Landroid/net/-$$Lambda$ConnectivityManager$PacketKeepalive$--8nwufwzyblnuYRFEYIKx7L4Vg;-><init>(Landroid/net/ConnectivityManager$PacketKeepalive;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-exception v0

    :goto_c
    return-void
.end method
