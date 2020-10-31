.class public Landroid/net/NetworkWatchlistManager;
.super Ljava/lang/Object;
.source "NetworkWatchlistManager.java"


# static fields
.field private static final SHARED_MEMORY_TAG:Ljava/lang/String; = "NETWORK_WATCHLIST_SHARED_MEMORY"

.field private static final TAG:Ljava/lang/String; = "NetworkWatchlistManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "missing context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/net/NetworkWatchlistManager;->mContext:Landroid/content/Context;

    nop

    const-string/jumbo v0, "network_watchlist"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/INetworkWatchlistManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/net/INetworkWatchlistManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkWatchlistManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    return-void
.end method


# virtual methods
.method public getWatchlistConfigHash()[B
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    invoke-interface {v0}, Lcom/android/internal/net/INetworkWatchlistManager;->getWatchlistConfigHash()[B

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "NetworkWatchlistManager"

    const-string v2, "Unable to get watchlist config hash"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reloadWatchlist()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    invoke-interface {v0}, Lcom/android/internal/net/INetworkWatchlistManager;->reloadWatchlist()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_11

    :catch_6
    move-exception v0

    const-string v1, "NetworkWatchlistManager"

    const-string v2, "Unable to reload watchlist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_11
    return-void
.end method

.method public reportWatchlistIfNecessary()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkWatchlistManager;->mNetworkWatchlistManager:Lcom/android/internal/net/INetworkWatchlistManager;

    invoke-interface {v0}, Lcom/android/internal/net/INetworkWatchlistManager;->reportWatchlistIfNecessary()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_11

    :catch_6
    move-exception v0

    const-string v1, "NetworkWatchlistManager"

    const-string v2, "Cannot report records"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_11
    return-void
.end method
