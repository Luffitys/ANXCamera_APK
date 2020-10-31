.class public Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;
.super Ljava/lang/Object;
.source "MiPlatformAppBoosterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/joyose/MiPlatformAppBoosterManager$JoyoseManagerDeath;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "xiaomi.joyose"

.field private static js:Lcom/xiaomi/joyose/IJoyoseInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MiPlatformBoosterForOneway(ILjava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zhangxiaoliang MiPlatformBoosterForOneway cmd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zhang"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->checkService()V

    sget-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_2d

    :try_start_25
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->MiPlatformBoosterForOneway(ILjava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public static MiPlatformBoosterForSync(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->checkService()V

    const/4 v0, 0x0

    sget-object v1, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_12

    :try_start_8
    invoke-interface {v1, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->MiPlatformBoosterForSync(ILjava/lang/String;)Ljava/lang/String;

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

.method static synthetic access$002(Lcom/xiaomi/joyose/IJoyoseInterface;)Lcom/xiaomi/joyose/IJoyoseInterface;
    .registers 1

    sput-object p0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-object p0
.end method

.method private static checkService()V
    .registers 0

    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->getService()Lcom/xiaomi/joyose/IJoyoseInterface;

    return-void
.end method

.method private static getService()Lcom/xiaomi/joyose/IJoyoseInterface;
    .registers 3

    sget-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-nez v0, :cond_2b

    const-string v0, "xiaomi.joyose"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IJoyoseInterface;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_2b

    :try_start_12
    new-instance v1, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager$JoyoseManagerDeath;

    invoke-direct {v1, v0}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager$JoyoseManagerDeath;-><init>(Lcom/xiaomi/joyose/IJoyoseInterface;)V

    move-object v0, v1

    sget-object v1, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

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

    sput-object v1, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    nop

    :cond_2b
    :goto_2b
    sget-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-object v0
.end method
