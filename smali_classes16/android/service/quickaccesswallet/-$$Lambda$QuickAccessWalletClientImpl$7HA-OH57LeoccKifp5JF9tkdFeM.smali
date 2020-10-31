.class public final synthetic Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$7HA-OH57LeoccKifp5JF9tkdFeM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$7HA-OH57LeoccKifp5JF9tkdFeM;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/-$$Lambda$QuickAccessWalletClientImpl$7HA-OH57LeoccKifp5JF9tkdFeM;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    invoke-virtual {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$disconnectInternal$3$QuickAccessWalletClientImpl()V

    return-void
.end method
