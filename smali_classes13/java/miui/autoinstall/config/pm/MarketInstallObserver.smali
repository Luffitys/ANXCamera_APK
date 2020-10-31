.class public Ljava/miui/autoinstall/config/pm/MarketInstallObserver;
.super Landroid/os/ResultReceiver;
.source "MarketInstallObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/miui/autoinstall/config/pm/MarketInstallObserver$Proxy;
    }
.end annotation


# static fields
.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final KEY_RETURN_CODE:Ljava/lang/String; = "returnCode"

.field private static final RESULT_CODE_INSTALLED:I = 0x0

.field private static final RESULT_CODE_REFUSE:I = 0x1

.field private static final RESULT_CODE_SERVICE_DEAD:I = 0x2


# instance fields
.field private final mListener:Ljava/miui/autoinstall/config/pm/MarketInstallerListener;


# direct methods
.method public constructor <init>(Ljava/miui/autoinstall/config/pm/MarketInstallerListener;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Ljava/miui/autoinstall/config/pm/MarketInstallObserver;->mListener:Ljava/miui/autoinstall/config/pm/MarketInstallerListener;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 3

    invoke-static {p0, p1}, Ljava/miui/autoinstall/config/pm/MarketInstallObserver;->obtainBundle(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static getCode(Landroid/os/Bundle;)I
    .registers 2

    const-string v0, "returnCode"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getPackageName(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    const-string v0, "packageName"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static obtainBundle(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "returnCode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    iget-object v0, p0, Ljava/miui/autoinstall/config/pm/MarketInstallObserver;->mListener:Ljava/miui/autoinstall/config/pm/MarketInstallerListener;

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_20

    const/4 v1, 0x1

    if-eq p1, v1, :cond_14

    const/4 v1, 0x2

    if-eq p1, v1, :cond_10

    goto :goto_2b

    :cond_10
    invoke-interface {v0}, Ljava/miui/autoinstall/config/pm/MarketInstallerListener;->onServiceDead()V

    goto :goto_2b

    :cond_14
    invoke-static {p2}, Ljava/miui/autoinstall/config/pm/MarketInstallObserver;->getPackageName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/miui/autoinstall/config/pm/MarketInstallObserver;->getCode(Landroid/os/Bundle;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/miui/autoinstall/config/pm/MarketInstallerListener;->onRefuseInstall(Ljava/lang/String;I)V

    goto :goto_2b

    :cond_20
    invoke-static {p2}, Ljava/miui/autoinstall/config/pm/MarketInstallObserver;->getPackageName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/miui/autoinstall/config/pm/MarketInstallObserver;->getCode(Landroid/os/Bundle;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/miui/autoinstall/config/pm/MarketInstallerListener;->packageInstalled(Ljava/lang/String;I)V

    :cond_2b
    :goto_2b
    return-void
.end method
