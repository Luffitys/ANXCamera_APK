.class Landroid/service/quickaccesswallet/QuickAccessWalletService$1;
.super Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;
.source "QuickAccessWalletService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;


# direct methods
.method constructor <init>(Landroid/service/quickaccesswallet/QuickAccessWalletService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-direct {p0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onWalletCardSelected$1$QuickAccessWalletService$1(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-virtual {v0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    return-void
.end method

.method public synthetic lambda$onWalletCardsRequested$0$QuickAccessWalletService$1(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    # invokes: Landroid/service/quickaccesswallet/QuickAccessWalletService;->onWalletCardsRequestedInternal(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    invoke-static {v0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->access$300(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method public synthetic lambda$registerWalletServiceEventListener$2$QuickAccessWalletService$1(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    # invokes: Landroid/service/quickaccesswallet/QuickAccessWalletService;->registerDismissWalletListenerInternal(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    invoke-static {v0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->access$200(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method public synthetic lambda$unregisterWalletServiceEventListener$3$QuickAccessWalletService$1(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    # invokes: Landroid/service/quickaccesswallet/QuickAccessWalletService;->unregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    invoke-static {v0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->access$100(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    return-void
.end method

.method public onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    # getter for: Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->access$000(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$_Ou2Jo5kX_LbkKynHLFSKjfhSxo;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$_Ou2Jo5kX_LbkKynHLFSKjfhSxo;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 5

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    # getter for: Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->access$000(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$pmX5cKFPyabzJ2dOCU_LsDg_-vE;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$pmX5cKFPyabzJ2dOCU_LsDg_-vE;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWalletDismissed()V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    # getter for: Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->access$000(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    new-instance v2, Landroid/service/quickaccesswallet/-$$Lambda$eoUVVqlBTHEQjCFtLSXrcheCzY8;

    invoke-direct {v2, v1}, Landroid/service/quickaccesswallet/-$$Lambda$eoUVVqlBTHEQjCFtLSXrcheCzY8;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 5

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    # getter for: Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->access$000(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$hHrL3hdXzFnVv3zziJxnOTslUkc;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$hHrL3hdXzFnVv3zziJxnOTslUkc;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    # getter for: Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->access$000(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$J4aE-vYSKeNpd1aOKr4Jss7Yyes;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$J4aE-vYSKeNpd1aOKr4Jss7Yyes;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
