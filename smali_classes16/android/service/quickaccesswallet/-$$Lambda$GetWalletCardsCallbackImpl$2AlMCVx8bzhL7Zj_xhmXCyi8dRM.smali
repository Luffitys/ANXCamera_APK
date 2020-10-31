.class public final synthetic Landroid/service/quickaccesswallet/-$$Lambda$GetWalletCardsCallbackImpl$2AlMCVx8bzhL7Zj_xhmXCyi8dRM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;

.field public final synthetic f$1:Landroid/service/quickaccesswallet/GetWalletCardsError;


# direct methods
.method public synthetic constructor <init>(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/-$$Lambda$GetWalletCardsCallbackImpl$2AlMCVx8bzhL7Zj_xhmXCyi8dRM;->f$0:Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;

    iput-object p2, p0, Landroid/service/quickaccesswallet/-$$Lambda$GetWalletCardsCallbackImpl$2AlMCVx8bzhL7Zj_xhmXCyi8dRM;->f$1:Landroid/service/quickaccesswallet/GetWalletCardsError;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/-$$Lambda$GetWalletCardsCallbackImpl$2AlMCVx8bzhL7Zj_xhmXCyi8dRM;->f$0:Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;

    iget-object v1, p0, Landroid/service/quickaccesswallet/-$$Lambda$GetWalletCardsCallbackImpl$2AlMCVx8bzhL7Zj_xhmXCyi8dRM;->f$1:Landroid/service/quickaccesswallet/GetWalletCardsError;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->lambda$onFailure$2$GetWalletCardsCallbackImpl(Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    return-void
.end method
