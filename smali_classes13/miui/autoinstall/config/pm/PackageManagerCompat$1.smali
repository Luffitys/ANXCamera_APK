.class Lmiui/autoinstall/config/pm/PackageManagerCompat$1;
.super Ljava/lang/Object;
.source "PackageManagerCompat.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/autoinstall/config/pm/PackageManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/autoinstall/config/pm/PackageManagerCompat;


# direct methods
.method constructor <init>(Lmiui/autoinstall/config/pm/PackageManagerCompat;)V
    .registers 2

    iput-object p1, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat$1;->this$0:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat$1;->this$0:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-static {p2}, Lcom/market/pm/IMarketInstallerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/market/pm/IMarketInstallerService;

    move-result-object v1

    # setter for: Lmiui/autoinstall/config/pm/PackageManagerCompat;->mService:Lcom/market/pm/IMarketInstallerService;
    invoke-static {v0, v1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->access$002(Lmiui/autoinstall/config/pm/PackageManagerCompat;Lcom/market/pm/IMarketInstallerService;)Lcom/market/pm/IMarketInstallerService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat$1;->this$0:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    const/4 v1, 0x0

    # setter for: Lmiui/autoinstall/config/pm/PackageManagerCompat;->mService:Lcom/market/pm/IMarketInstallerService;
    invoke-static {v0, v1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->access$002(Lmiui/autoinstall/config/pm/PackageManagerCompat;Lcom/market/pm/IMarketInstallerService;)Lcom/market/pm/IMarketInstallerService;

    return-void
.end method
