.class public Ljava/miui/autoinstall/config/pm/MarketInstallObserver$Proxy;
.super Ljava/lang/Object;
.source "MarketInstallObserver.java"

# interfaces
.implements Ljava/miui/autoinstall/config/pm/MarketInstallerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/miui/autoinstall/config/pm/MarketInstallObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field private final mRemote:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Landroid/os/ResultReceiver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/miui/autoinstall/config/pm/MarketInstallObserver$Proxy;->mRemote:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public onRefuseInstall(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Ljava/miui/autoinstall/config/pm/MarketInstallObserver$Proxy;->mRemote:Landroid/os/ResultReceiver;

    # invokes: Ljava/miui/autoinstall/config/pm/MarketInstallObserver;->obtainBundle(Ljava/lang/String;I)Landroid/os/Bundle;
    invoke-static {p1, p2}, Ljava/miui/autoinstall/config/pm/MarketInstallObserver;->access$000(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onServiceDead()V
    .registers 4

    iget-object v0, p0, Ljava/miui/autoinstall/config/pm/MarketInstallObserver$Proxy;->mRemote:Landroid/os/ResultReceiver;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Ljava/miui/autoinstall/config/pm/MarketInstallObserver$Proxy;->mRemote:Landroid/os/ResultReceiver;

    # invokes: Ljava/miui/autoinstall/config/pm/MarketInstallObserver;->obtainBundle(Ljava/lang/String;I)Landroid/os/Bundle;
    invoke-static {p1, p2}, Ljava/miui/autoinstall/config/pm/MarketInstallObserver;->access$000(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
