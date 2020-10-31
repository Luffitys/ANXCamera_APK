.class public final synthetic Landroid/service/quickaccesswallet/-$$Lambda$GetWalletCardsCallbackImpl$7xNzWesJhU8w8EsyP1THfKUBQJI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/-$$Lambda$GetWalletCardsCallbackImpl$7xNzWesJhU8w8EsyP1THfKUBQJI;->f$0:Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/-$$Lambda$GetWalletCardsCallbackImpl$7xNzWesJhU8w8EsyP1THfKUBQJI;->f$0:Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;

    invoke-virtual {v0}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->lambda$onSuccess$1$GetWalletCardsCallbackImpl()V

    return-void
.end method
