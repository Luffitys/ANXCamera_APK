.class public abstract Landroid/net/netstats/provider/NetworkStatsProvider;
.super Ljava/lang/Object;
.source "NetworkStatsProvider.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final QUOTA_UNLIMITED:I = -0x1


# instance fields
.field private final mProviderBinder:Landroid/net/netstats/provider/INetworkStatsProvider;

.field private mProviderCbBinder:Landroid/net/netstats/provider/INetworkStatsProviderCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/netstats/provider/NetworkStatsProvider$1;

    invoke-direct {v0, p0}, Landroid/net/netstats/provider/NetworkStatsProvider$1;-><init>(Landroid/net/netstats/provider/NetworkStatsProvider;)V

    iput-object v0, p0, Landroid/net/netstats/provider/NetworkStatsProvider;->mProviderBinder:Landroid/net/netstats/provider/INetworkStatsProvider;

    return-void
.end method


# virtual methods
.method public getProviderBinder()Landroid/net/netstats/provider/INetworkStatsProvider;
    .registers 2

    iget-object v0, p0, Landroid/net/netstats/provider/NetworkStatsProvider;->mProviderBinder:Landroid/net/netstats/provider/INetworkStatsProvider;

    return-object v0
.end method

.method public getProviderCallbackBinder()Landroid/net/netstats/provider/INetworkStatsProviderCallback;
    .registers 2

    iget-object v0, p0, Landroid/net/netstats/provider/NetworkStatsProvider;->mProviderCbBinder:Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    return-object v0
.end method

.method public getProviderCallbackBinderOrThrow()Landroid/net/netstats/provider/INetworkStatsProviderCallback;
    .registers 3

    iget-object v0, p0, Landroid/net/netstats/provider/NetworkStatsProvider;->mProviderCbBinder:Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "the provider is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyAlertReached()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Landroid/net/netstats/provider/NetworkStatsProvider;->getProviderCallbackBinderOrThrow()Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/netstats/provider/INetworkStatsProviderCallback;->notifyAlertReached()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_c
    return-void
.end method

.method public notifyLimitReached()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Landroid/net/netstats/provider/NetworkStatsProvider;->getProviderCallbackBinderOrThrow()Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/netstats/provider/INetworkStatsProviderCallback;->notifyLimitReached()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_c
    return-void
.end method

.method public notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/net/netstats/provider/NetworkStatsProvider;->getProviderCallbackBinderOrThrow()Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/net/netstats/provider/INetworkStatsProviderCallback;->notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_c
    return-void
.end method

.method public abstract onRequestStatsUpdate(I)V
.end method

.method public abstract onSetAlert(J)V
.end method

.method public abstract onSetLimit(Ljava/lang/String;J)V
.end method

.method public setProviderCallbackBinder(Landroid/net/netstats/provider/INetworkStatsProviderCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/net/netstats/provider/NetworkStatsProvider;->mProviderCbBinder:Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    if-nez v0, :cond_7

    iput-object p1, p0, Landroid/net/netstats/provider/NetworkStatsProvider;->mProviderCbBinder:Landroid/net/netstats/provider/INetworkStatsProviderCallback;

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider is already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
