.class public Lcom/miui/whetstone/WhetstoneSysInfoManager;
.super Ljava/lang/Object;
.source "WhetstoneSysInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneSysInfoManager$Holder;
    }
.end annotation


# static fields
.field private static final FAIL:J = -0x1L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/whetstone/WhetstoneSysInfoManager$1;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/WhetstoneSysInfoManager$1;-><init>(Lcom/miui/whetstone/WhetstoneSysInfoManager;)V

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/whetstone/WhetstoneSysInfoManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/whetstone/WhetstoneSysInfoManager;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/whetstone/WhetstoneSysInfoManager;Lcom/miui/whetstone/IWhetstoneSysInfoService;)Lcom/miui/whetstone/IWhetstoneSysInfoService;
    .registers 2

    iput-object p1, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    return-object p1
.end method

.method public static getInstance()Lcom/miui/whetstone/WhetstoneSysInfoManager;
    .registers 1

    # getter for: Lcom/miui/whetstone/WhetstoneSysInfoManager$Holder;->INSTANCE:Lcom/miui/whetstone/WhetstoneSysInfoManager;
    invoke-static {}, Lcom/miui/whetstone/WhetstoneSysInfoManager$Holder;->access$300()Lcom/miui/whetstone/WhetstoneSysInfoManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized bindWhetstoneSysInfoService(Landroid/content/Context;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    if-nez v0, :cond_35

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.whetstone"

    const-string v3, "com.miui.whetstone.sysinfo.WhetstoneSysInfoService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    sget-object v2, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindWhetstoneSysInfoService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_3c

    :cond_35
    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "bindWhetstoneSysInfoService but mService is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3e

    :goto_3c
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSysInfo(Ljava/lang/String;)J
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    invoke-interface {v0, p1}, Lcom/miui/whetstone/IWhetstoneSysInfoService;->getSysInfo(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_17
    .catchall {:try_start_1 .. :try_end_b} :catchall_15

    monitor-exit p0

    return-wide v0

    :cond_d
    :try_start_d
    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "getSysInfo: Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_17
    .catchall {:try_start_d .. :try_end_14} :catchall_15

    goto :goto_32

    :catchall_15
    move-exception p1

    goto :goto_36

    :catch_17
    move-exception v0

    :try_start_18
    sget-object v1, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSysInfo long RemoteException e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_15

    :goto_32
    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    :goto_36
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSysInfos([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    invoke-interface {v0, p1}, Lcom/miui/whetstone/IWhetstoneSysInfoService;->getSysInfos([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_17
    .catchall {:try_start_1 .. :try_end_b} :catchall_15

    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "getSysInfo: Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_17
    .catchall {:try_start_d .. :try_end_14} :catchall_15

    goto :goto_32

    :catchall_15
    move-exception p1

    goto :goto_35

    :catch_17
    move-exception v0

    :try_start_18
    sget-object v1, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSysInfo String[] RemoteException e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_15

    :goto_32
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :goto_35
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unbindWhetstoneSysInfoService(Landroid/content/Context;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "unbindWhetstoneSysInfoService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_15
    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "unbindWhetstoneSysInfoService but service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    :goto_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
