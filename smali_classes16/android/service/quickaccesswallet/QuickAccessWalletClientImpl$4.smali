.class Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$4;
.super Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
.source "QuickAccessWalletClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->notifyWalletDismissed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;


# direct methods
.method constructor <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$4;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;-><init>(Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;)V

    return-void
.end method


# virtual methods
.method public performApiCall(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->onWalletDismissed()V

    return-void
.end method
