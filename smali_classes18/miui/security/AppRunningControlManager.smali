.class public Lmiui/security/AppRunningControlManager;
.super Ljava/lang/Object;
.source "AppRunningControlManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppRunningControlManager"

.field private static sInstance:Lmiui/security/AppRunningControlManager;


# instance fields
.field private mService:Lmiui/security/IAppRunningControlManager;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lmiui/security/IAppRunningControlManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/IAppRunningControlManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    return-void
.end method

.method public static getBlockActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;
    .registers 13

    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_14

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/security/AppRunningControlManager;->getBlockActivityIntentInner(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_14

    return-object v7

    :cond_14
    return-object v7
.end method

.method private getBlockActivityIntentInner(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;
    .registers 9

    :try_start_0
    iget-object v0, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    invoke-interface {v0, p2, p3, p4, p5}, Lmiui/security/IAppRunningControlManager;->getBlockActivityIntent(Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "AppRunningControlManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance()Lmiui/security/AppRunningControlManager;
    .registers 4

    sget-object v0, Lmiui/security/AppRunningControlManager;->sInstance:Lmiui/security/AppRunningControlManager;

    if-nez v0, :cond_2e

    :try_start_4
    const-string v0, "security"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/security/ISecurityManager;->getAppRunningControlIBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1d

    const-string v2, "AppRunningControlManager"

    const-string v3, "AppRunningControlIBinder is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_1d
    new-instance v2, Lmiui/security/AppRunningControlManager;

    invoke-direct {v2, v1}, Lmiui/security/AppRunningControlManager;-><init>(Landroid/os/IBinder;)V

    sput-object v2, Lmiui/security/AppRunningControlManager;->sInstance:Lmiui/security/AppRunningControlManager;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_25

    goto :goto_2e

    :catch_25
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2e
    :goto_2e
    sget-object v0, Lmiui/security/AppRunningControlManager;->sInstance:Lmiui/security/AppRunningControlManager;

    return-object v0
.end method

.method public static matchRule(Ljava/lang/String;I)Z
    .registers 4

    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-direct {v0, p0, p1}, Lmiui/security/AppRunningControlManager;->matchRuleInner(Ljava/lang/String;I)Z

    move-result v1

    return v1

    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method private matchRuleInner(Ljava/lang/String;I)Z
    .registers 6

    :try_start_0
    iget-object v0, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/IAppRunningControlManager;->matchRule(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, "AppRunningControlManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getNotDisallowList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    invoke-interface {v0}, Lmiui/security/IAppRunningControlManager;->getNotDisallowList()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "AppRunningControlManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public setBlackListEnable(Z)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    invoke-interface {v0, p1}, Lmiui/security/IAppRunningControlManager;->setBlackListEnable(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "AppRunningControlManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setDisallowRunningList(Ljava/util/List;Landroid/content/Intent;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/IAppRunningControlManager;->setDisallowRunningList(Ljava/util/List;Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    const-string v1, "AppRunningControlManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
