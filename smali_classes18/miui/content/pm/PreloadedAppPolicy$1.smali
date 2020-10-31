.class Lmiui/content/pm/PreloadedAppPolicy$1;
.super Ljava/lang/Object;
.source "PreloadedAppPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/content/pm/PreloadedAppPolicy;->installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$flags:I

.field final synthetic val$observer:Landroid/content/pm/IPackageInstallObserver2;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/IPackageInstallObserver2;I)V
    .registers 5

    iput-object p1, p0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$packageName:Ljava/lang/String;

    iput-object p2, p0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$observer:Landroid/content/pm/IPackageInstallObserver2;

    iput p4, p0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    move-object v0, p0

    invoke-static {p2}, Lmiui/content/pm/IPreloadedAppManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/content/pm/IPreloadedAppManager;

    move-result-object v1

    :try_start_5
    iget-object v2, p0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$packageName:Ljava/lang/String;

    new-instance v3, Lmiui/content/pm/PreloadedAppPolicy$1$1;

    invoke-direct {v3, p0, v0}, Lmiui/content/pm/PreloadedAppPolicy$1$1;-><init>(Lmiui/content/pm/PreloadedAppPolicy$1;Landroid/content/ServiceConnection;)V

    iget v4, p0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$flags:I

    invoke-interface {v1, v2, v3, v4}, Lmiui/content/pm/IPreloadedAppManager;->reinstallPreloadedApp2(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_12

    goto :goto_25

    :catch_12
    move-exception v2

    const-class v3, Lmiui/content/pm/PreloadedAppPolicy;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lmiui/content/pm/PreloadedAppPolicy$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_25
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
