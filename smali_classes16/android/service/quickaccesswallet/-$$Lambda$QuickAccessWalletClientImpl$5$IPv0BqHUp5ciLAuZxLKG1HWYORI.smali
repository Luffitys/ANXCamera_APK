.class public final synthetic Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$5$IPv0BqHUp5ciLAuZxLKG1HWYORI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

.field public final synthetic f$1:Landroid/service/quickaccesswallet/WalletServiceEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$5$IPv0BqHUp5ciLAuZxLKG1HWYORI;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    iput-object p2, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$5$IPv0BqHUp5ciLAuZxLKG1HWYORI;->f$1:Landroid/service/quickaccesswallet/WalletServiceEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$5$IPv0BqHUp5ciLAuZxLKG1HWYORI;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    iget-object v1, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$5$IPv0BqHUp5ciLAuZxLKG1HWYORI;->f$1:Landroid/service/quickaccesswallet/WalletServiceEvent;

    invoke-static {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$5;->lambda$onWalletServiceEvent$0(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;Landroid/service/quickaccesswallet/WalletServiceEvent;)V

    return-void
.end method
