.class public final synthetic Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$pmX5cKFPyabzJ2dOCU_LsDg_-vE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

.field public final synthetic f$1:Landroid/service/quickaccesswallet/GetWalletCardsRequest;

.field public final synthetic f$2:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;


# direct methods
.method public synthetic constructor <init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$pmX5cKFPyabzJ2dOCU_LsDg_-vE;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

    iput-object p2, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$pmX5cKFPyabzJ2dOCU_LsDg_-vE;->f$1:Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    iput-object p3, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$pmX5cKFPyabzJ2dOCU_LsDg_-vE;->f$2:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$pmX5cKFPyabzJ2dOCU_LsDg_-vE;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

    iget-object v1, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$pmX5cKFPyabzJ2dOCU_LsDg_-vE;->f$1:Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    iget-object v2, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$pmX5cKFPyabzJ2dOCU_LsDg_-vE;->f$2:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    invoke-virtual {v0, v1, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->lambda$onWalletCardsRequested$0$QuickAccessWalletService$1(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method
