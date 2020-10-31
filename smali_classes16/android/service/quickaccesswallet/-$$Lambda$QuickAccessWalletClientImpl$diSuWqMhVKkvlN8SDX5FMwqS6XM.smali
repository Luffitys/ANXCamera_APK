.class public final synthetic Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$diSuWqMhVKkvlN8SDX5FMwqS6XM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

.field public final synthetic f$1:Landroid/service/quickaccesswallet/IQuickAccessWalletService;


# direct methods
.method public synthetic constructor <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$diSuWqMhVKkvlN8SDX5FMwqS6XM;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iput-object p2, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$diSuWqMhVKkvlN8SDX5FMwqS6XM;->f$1:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$diSuWqMhVKkvlN8SDX5FMwqS6XM;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    iget-object v1, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$diSuWqMhVKkvlN8SDX5FMwqS6XM;->f$1:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$onServiceConnected$5$QuickAccessWalletClientImpl(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    return-void
.end method
