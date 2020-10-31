.class public Landroid/net/TestNetworkManager;
.super Ljava/lang/Object;
.source "TestNetworkManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TEST_TAP_PREFIX:Ljava/lang/String; = "testtap"

.field public static final TEST_TUN_PREFIX:Ljava/lang/String; = "testtun"


# instance fields
.field private final mService:Landroid/net/ITestNetworkManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/net/TestNetworkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/TestNetworkManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/ITestNetworkManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "missing ITestNetworkManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ITestNetworkManager;

    iput-object v0, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/ITestNetworkManager;

    return-void
.end method

.method private setupTestNetwork(Ljava/lang/String;Landroid/net/LinkProperties;Z[ILandroid/os/IBinder;)V
    .registers 12

    :try_start_0
    iget-object v0, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/ITestNetworkManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/net/ITestNetworkManager;->setupTestNetwork(Ljava/lang/String;Landroid/net/LinkProperties;Z[ILandroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    nop

    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public createTapInterface()Landroid/net/TestNetworkInterface;
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/ITestNetworkManager;

    invoke-interface {v0}, Landroid/net/ITestNetworkManager;->createTapInterface()Landroid/net/TestNetworkInterface;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createTunInterface([Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/ITestNetworkManager;

    invoke-interface {v0, p1}, Landroid/net/ITestNetworkManager;->createTunInterface([Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setupTestNetwork(Landroid/net/LinkProperties;ZLandroid/os/IBinder;)V
    .registers 11

    const-string v0, "Invalid LinkProperties"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    new-array v5, v0, [I

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/net/TestNetworkManager;->setupTestNetwork(Ljava/lang/String;Landroid/net/LinkProperties;Z[ILandroid/os/IBinder;)V

    return-void
.end method

.method public setupTestNetwork(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 10

    const/4 v0, 0x0

    new-array v5, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/net/TestNetworkManager;->setupTestNetwork(Ljava/lang/String;Landroid/net/LinkProperties;Z[ILandroid/os/IBinder;)V

    return-void
.end method

.method public setupTestNetwork(Ljava/lang/String;[ILandroid/os/IBinder;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/net/TestNetworkManager;->setupTestNetwork(Ljava/lang/String;Landroid/net/LinkProperties;Z[ILandroid/os/IBinder;)V

    return-void
.end method

.method public teardownTestNetwork(Landroid/net/Network;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/ITestNetworkManager;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-interface {v0, v1}, Landroid/net/ITestNetworkManager;->teardownTestNetwork(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
