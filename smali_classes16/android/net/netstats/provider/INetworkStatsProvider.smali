.class public interface abstract Landroid/net/netstats/provider/INetworkStatsProvider;
.super Ljava/lang/Object;
.source "INetworkStatsProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/netstats/provider/INetworkStatsProvider$Stub;,
        Landroid/net/netstats/provider/INetworkStatsProvider$Default;
    }
.end annotation


# virtual methods
.method public abstract onRequestStatsUpdate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSetAlert(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSetLimit(Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
