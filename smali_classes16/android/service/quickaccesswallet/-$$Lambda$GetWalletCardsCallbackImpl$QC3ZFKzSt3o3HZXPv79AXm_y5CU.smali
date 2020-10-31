.class public final synthetic Landroid/service/quickaccesswallet/-$$Lambda$GetWalletCardsCallbackImpl$QC3ZFKzSt3o3HZXPv79AXm_y5CU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;

.field public final synthetic f$1:Landroid/service/quickaccesswallet/GetWalletCardsResponse;


# direct methods
.method public synthetic constructor <init>(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/-$$Lambda$GetWalletCardsCallbackImpl$QC3ZFKzSt3o3HZXPv79AXm_y5CU;->f$0:Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;

    iput-object p2, p0, Landroid/service/quickaccesswallet/-$$Lambda$GetWalletCardsCallbackImpl$QC3ZFKzSt3o3HZXPv79AXm_y5CU;->f$1:Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/-$$Lambda$GetWalletCardsCallbackImpl$QC3ZFKzSt3o3HZXPv79AXm_y5CU;->f$0:Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;

    iget-object v1, p0, Landroid/service/quickaccesswallet/-$$Lambda$GetWalletCardsCallbackImpl$QC3ZFKzSt3o3HZXPv79AXm_y5CU;->f$1:Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->lambda$onSuccess$0$GetWalletCardsCallbackImpl(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    return-void
.end method
