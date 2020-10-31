.class public final synthetic Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$1$MBeBTZz_a_iX-AmzHkW8HLdzxZc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

.field public final synthetic f$1:Landroid/service/quickaccesswallet/GetWalletCardsResponse;


# direct methods
.method public synthetic constructor <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$1$MBeBTZz_a_iX-AmzHkW8HLdzxZc;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    iput-object p2, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$1$MBeBTZz_a_iX-AmzHkW8HLdzxZc;->f$1:Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$1$MBeBTZz_a_iX-AmzHkW8HLdzxZc;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    iget-object v1, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$1$MBeBTZz_a_iX-AmzHkW8HLdzxZc;->f$1:Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    invoke-static {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;->lambda$onGetWalletCardsSuccess$0(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    return-void
.end method
