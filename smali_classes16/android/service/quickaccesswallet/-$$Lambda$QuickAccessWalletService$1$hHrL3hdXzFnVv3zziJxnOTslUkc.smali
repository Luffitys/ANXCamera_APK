.class public final synthetic Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$hHrL3hdXzFnVv3zziJxnOTslUkc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

.field public final synthetic f$1:Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

.field public final synthetic f$2:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;


# direct methods
.method public synthetic constructor <init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$hHrL3hdXzFnVv3zziJxnOTslUkc;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

    iput-object p2, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$hHrL3hdXzFnVv3zziJxnOTslUkc;->f$1:Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    iput-object p3, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$hHrL3hdXzFnVv3zziJxnOTslUkc;->f$2:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$hHrL3hdXzFnVv3zziJxnOTslUkc;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

    iget-object v1, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$hHrL3hdXzFnVv3zziJxnOTslUkc;->f$1:Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    iget-object v2, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletService$1$hHrL3hdXzFnVv3zziJxnOTslUkc;->f$2:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    invoke-virtual {v0, v1, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->lambda$registerWalletServiceEventListener$2$QuickAccessWalletService$1(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method
