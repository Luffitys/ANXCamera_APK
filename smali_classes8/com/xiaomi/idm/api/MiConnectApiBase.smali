.class public Lcom/xiaomi/idm/api/MiConnectApiBase;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "MiConnectApi"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field protected mContext:Landroid/content/Context;

.field protected mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

.field private mPendingUnbind:Z

.field protected mService:Lcom/xiaomi/mi_connect_service/IMiConnect;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/idm/api/MiConnectApiBase$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/idm/api/MiConnectApiBase$1;-><init>(Lcom/xiaomi/idm/api/MiConnectApiBase;)V

    iput-object v0, p0, Lcom/xiaomi/idm/api/MiConnectApiBase;->mConnection:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/idm/api/MiConnectApiBase;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/idm/api/MiConnectApiBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/MiConnectApiBase;->doInit()V

    invoke-direct {p0}, Lcom/xiaomi/idm/api/MiConnectApiBase;->bindService()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/xiaomi/idm/api/MiConnectApiBase;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/idm/api/MiConnectApiBase;->mPendingUnbind:Z

    return p0
.end method

.method static synthetic access$002(Lcom/xiaomi/idm/api/MiConnectApiBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/idm/api/MiConnectApiBase;->mPendingUnbind:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaomi/idm/api/MiConnectApiBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/MiConnectApiBase;->unbindService()V

    return-void
.end method

.method private bindService()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaomi.mi_connect_service.MiConnectService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.xiaomi.mi_connect_service"

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/idm/api/MiConnectApiBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/xiaomi/idm/api/MiConnectApiBase;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/xiaomi/idm/api/MiConnectApiBase;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "MiConnectApi"

    const-string v1, "bindService failed"

    invoke-static {v0, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private unbindService()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/idm/api/MiConnectApiBase;->mPendingUnbind:Z

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/MiConnectApiBase;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/idm/api/MiConnectApiBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/idm/api/MiConnectApiBase;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/idm/api/MiConnectApiBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget-object p0, p0, Lcom/xiaomi/idm/api/MiConnectApiBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceUnbind()V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/MiConnectApiBase;->doDestroy()V

    invoke-direct {p0}, Lcom/xiaomi/idm/api/MiConnectApiBase;->unbindService()V

    return-void
.end method

.method protected doDestroy()V
    .locals 0

    return-void
.end method

.method protected doInit()V
    .locals 0

    return-void
.end method

.method protected onServiceConnected()V
    .locals 0

    return-void
.end method

.method protected serviceAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/MiConnectApiBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
