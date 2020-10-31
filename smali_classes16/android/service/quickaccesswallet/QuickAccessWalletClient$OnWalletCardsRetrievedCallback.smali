.class public interface abstract Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;
.super Ljava/lang/Object;
.source "QuickAccessWalletClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnWalletCardsRetrievedCallback"
.end annotation


# virtual methods
.method public abstract onWalletCardRetrievalError(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
.end method

.method public abstract onWalletCardsRetrieved(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
.end method
