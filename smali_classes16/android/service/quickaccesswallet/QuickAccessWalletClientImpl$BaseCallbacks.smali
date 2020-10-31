.class Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;
.super Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;
.source "QuickAccessWalletClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseCallbacks"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetWalletCardsFailure(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onGetWalletCardsSuccess(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
