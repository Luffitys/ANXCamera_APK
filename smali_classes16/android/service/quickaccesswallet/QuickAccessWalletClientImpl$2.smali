.class Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$2;
.super Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
.source "QuickAccessWalletClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->getWalletCards(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

.field final synthetic val$request:Landroid/service/quickaccesswallet/GetWalletCardsRequest;

.field final synthetic val$serviceCallback:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;


# direct methods
.method constructor <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;)V
    .registers 5

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$2;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$2;->val$request:Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    iput-object p4, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$2;->val$serviceCallback:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;-><init>(Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;)V

    return-void
.end method


# virtual methods
.method public onApiError()V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$2;->val$serviceCallback:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;

    new-instance v1, Landroid/service/quickaccesswallet/GetWalletCardsError;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/service/quickaccesswallet/GetWalletCardsError;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;->onGetWalletCardsFailure(Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    return-void
.end method

.method public performApiCall(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$2;->val$request:Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$2;->val$serviceCallback:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;

    invoke-interface {p1, v0, v1}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method
