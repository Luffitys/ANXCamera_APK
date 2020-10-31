.class Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$7;
.super Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
.source "QuickAccessWalletClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->removeWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

.field final synthetic val$listener:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;


# direct methods
.method constructor <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
    .registers 4

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$7;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$7;->val$listener:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;-><init>(Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;)V

    return-void
.end method


# virtual methods
.method public performApiCall(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$7;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    # getter for: Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mEventListeners:Ljava/util/Map;
    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->access$200(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$7;->val$listener:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_11

    return-void

    :cond_11
    new-instance v1, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    invoke-direct {v1, v0}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->unregisterWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    return-void
.end method
