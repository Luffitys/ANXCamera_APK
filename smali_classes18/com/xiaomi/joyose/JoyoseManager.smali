.class public Lcom/xiaomi/joyose/JoyoseManager;
.super Ljava/lang/Object;
.source "JoyoseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "xiaomi.joyose"

.field private static js:Lcom/xiaomi/joyose/IJoyoseInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/joyose/IJoyoseInterface;)Lcom/xiaomi/joyose/IJoyoseInterface;
    .registers 1

    sput-object p0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-object p0
.end method

.method private static checkService()V
    .registers 0

    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->getService()Lcom/xiaomi/joyose/IJoyoseInterface;

    return-void
.end method

.method public static getGameMotorAppList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    sget-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_10

    :try_start_7
    invoke-interface {v0}, Lcom/xiaomi/joyose/IJoyoseInterface;->getGameMotorAppList()Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getService()Lcom/xiaomi/joyose/IJoyoseInterface;
    .registers 3

    sget-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-nez v0, :cond_2b

    const-string v0, "xiaomi.joyose"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IJoyoseInterface;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_2b

    :try_start_12
    new-instance v1, Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;

    invoke-direct {v1, v0}, Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;-><init>(Lcom/xiaomi/joyose/IJoyoseInterface;)V

    move-object v0, v1

    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v1}, Lcom/xiaomi/joyose/IJoyoseInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    sput-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    nop

    :cond_2b
    :goto_2b
    sget-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-object v0
.end method

.method public static handleGameBoosterForOneway(ILjava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    sget-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->handleGameBoosterForOneway(ILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_f
    :goto_f
    return-void
.end method

.method public static handleGameBoosterForSync(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    const/4 v0, 0x0

    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_12

    :try_start_8
    invoke-interface {v1, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->handleGameBoosterForSync(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_e

    move-object v0, v1

    goto :goto_12

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_12
    :goto_12
    return-object v0
.end method

.method public static predictAppBucketLevel(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    sget-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-interface {v0, p0}, Lcom/xiaomi/joyose/IJoyoseInterface;->predictAppBucketLevel(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_f
    :goto_f
    return-void
.end method

.method public static predictAppsBucketLevel(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    sget-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->predictAppsBucketLevel(Ljava/util/List;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_f
    :goto_f
    return-void
.end method

.method public static registerGameEngineListener(ILcom/xiaomi/joyose/IGameEngineCallback;)V
    .registers 3

    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    sget-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->registerGameEngineListener(ILcom/xiaomi/joyose/IGameEngineCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_f
    :goto_f
    return-void
.end method

.method public static unRegisterGameEngineListener(Lcom/xiaomi/joyose/IGameEngineCallback;)V
    .registers 2

    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    sget-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-interface {v0, p0}, Lcom/xiaomi/joyose/IJoyoseInterface;->unRegisterGameEngineListener(Lcom/xiaomi/joyose/IGameEngineCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_f
    :goto_f
    return-void
.end method
