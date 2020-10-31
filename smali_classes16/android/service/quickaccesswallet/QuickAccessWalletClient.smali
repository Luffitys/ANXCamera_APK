.class public interface abstract Landroid/service/quickaccesswallet/QuickAccessWalletClient;
.super Ljava/lang/Object;
.source "QuickAccessWalletClient.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;,
        Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;
    }
.end annotation


# direct methods
.method public static create(Landroid/content/Context;)Landroid/service/quickaccesswallet/QuickAccessWalletClient;
    .registers 2

    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    invoke-direct {v0, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract addWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
.end method

.method public abstract addWalletServiceEventListener(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
.end method

.method public abstract createWalletIntent()Landroid/content/Intent;
.end method

.method public abstract createWalletSettingsIntent()Landroid/content/Intent;
.end method

.method public abstract disconnect()V
.end method

.method public abstract getLogo()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getServiceLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getShortcutLongLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getShortcutShortLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getWalletCards(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
.end method

.method public abstract getWalletCards(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
.end method

.method public abstract isWalletFeatureAvailable()Z
.end method

.method public abstract isWalletFeatureAvailableWhenDeviceLocked()Z
.end method

.method public abstract isWalletServiceAvailable()Z
.end method

.method public abstract notifyWalletDismissed()V
.end method

.method public abstract removeWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
.end method

.method public abstract selectWalletCard(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
.end method
