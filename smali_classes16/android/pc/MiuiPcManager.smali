.class public Landroid/pc/MiuiPcManager;
.super Ljava/lang/Object;
.source "MiuiPcManager.java"


# static fields
.field private static volatile INSTANCE:Landroid/pc/MiuiPcManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Landroid/pc/IMiuiPcService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Landroid/pc/MiuiPcManager;->INSTANCE:Landroid/pc/MiuiPcManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/pc/MiuiPcManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/pc/MiuiPcManager;->mService:Landroid/pc/IMiuiPcService;

    iput-object p1, p0, Landroid/pc/MiuiPcManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkService()Z
    .registers 2

    iget-object v0, p0, Landroid/pc/MiuiPcManager;->mService:Landroid/pc/IMiuiPcService;

    if-nez v0, :cond_18

    invoke-static {}, Landroid/util/MiuiFreeformUtil;->getPcModeType()I

    move-result v0

    if-lez v0, :cond_18

    nop

    const-string/jumbo v0, "pc_mode_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/pc/IMiuiPcService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/pc/IMiuiPcService;

    move-result-object v0

    iput-object v0, p0, Landroid/pc/MiuiPcManager;->mService:Landroid/pc/IMiuiPcService;

    :cond_18
    iget-object v0, p0, Landroid/pc/MiuiPcManager;->mService:Landroid/pc/IMiuiPcService;

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    return v0

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/pc/MiuiPcManager;
    .registers 3

    sget-object v0, Landroid/pc/MiuiPcManager;->INSTANCE:Landroid/pc/MiuiPcManager;

    if-nez v0, :cond_17

    const-class v0, Landroid/pc/MiuiPcManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Landroid/pc/MiuiPcManager;->INSTANCE:Landroid/pc/MiuiPcManager;

    if-nez v1, :cond_12

    new-instance v1, Landroid/pc/MiuiPcManager;

    invoke-direct {v1, p0}, Landroid/pc/MiuiPcManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/pc/MiuiPcManager;->INSTANCE:Landroid/pc/MiuiPcManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Landroid/pc/MiuiPcManager;->INSTANCE:Landroid/pc/MiuiPcManager;

    return-object v0
.end method


# virtual methods
.method public startPcLauncher(I)I
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/pc/MiuiPcManager;->checkService()Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    :try_start_8
    iget-object v1, p0, Landroid/pc/MiuiPcManager;->mService:Landroid/pc/IMiuiPcService;

    invoke-interface {v1, p1}, Landroid/pc/IMiuiPcService;->startPcLauncher(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_10

    move v0, v1

    goto :goto_14

    :catch_10
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_14
    return v0
.end method

.method public test()V
    .registers 2

    invoke-direct {p0}, Landroid/pc/MiuiPcManager;->checkService()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/pc/MiuiPcManager;->mService:Landroid/pc/IMiuiPcService;

    invoke-interface {v0}, Landroid/pc/IMiuiPcService;->getPCDisplayId()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_11
    return-void
.end method
