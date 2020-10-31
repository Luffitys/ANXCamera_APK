.class public interface abstract Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
.super Ljava/lang/Object;
.source "IQuickAccessWalletServiceCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;,
        Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Default;
    }
.end annotation


# virtual methods
.method public abstract onGetWalletCardsFailure(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onGetWalletCardsSuccess(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
