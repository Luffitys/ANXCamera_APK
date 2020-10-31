.class public abstract Lcom/miui/whetstone/WhetstoneActivityManager;
.super Ljava/lang/Object;
.source "WhetstoneActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "whetstone.activity"

.field private static ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/whetstone/server/IWhetstoneActivityManager;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    .registers 1

    sput-object p0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    return-object p0
.end method

.method public static addAppToServiceControlWhitelist(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->addAppToServiceControlWhitelist(Ljava/util/List;)V
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

.method public static bindWhetstoneService(Landroid/os/IBinder;)V
    .registers 2

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->bindWhetstoneService(Landroid/os/IBinder;)V
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

.method public static checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    .registers 5

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
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

.method public static checkIfPackageIsLocked(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_10

    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->checkIfPackageIsLocked(Ljava/lang/String;)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static checkIfPackageIsLocked(Ljava/lang/String;I)Z
    .registers 3

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_10

    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->checkIfPackageIsLockedWithUserId(Ljava/lang/String;I)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private static checkService()V
    .registers 0

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->getService()Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    return-void
.end method

.method public static clearDeadAppFromNative()V
    .registers 1

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-interface {v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->clearDeadAppFromNative()V
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

.method public static doDesSocketForUid(Ljava/lang/String;[IZ)V
    .registers 4

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-interface {v0, p0, p1, p2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->doDesSocketForUid(Ljava/lang/String;[IZ)V
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

.method public static doRestoreSockForUid(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->doRestoreSockForUid(Ljava/lang/String;)V
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

.method public static getAndroidCachedEmptyProcessMemory()Ljava/lang/Long;
    .registers 4

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    const-wide/16 v0, 0x0

    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_13

    :try_start_9
    invoke-interface {v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getAndroidCachedEmptyProcessMemory()J

    move-result-wide v2
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_f

    move-wide v0, v2

    goto :goto_13

    :catch_f
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_13
    :goto_13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public static getConnProviderNames(Ljava/lang/String;ILjava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_16

    :try_start_7
    invoke-interface {v0, p0, p1, p2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getConnProviderNames(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static getPackageNamebyPid(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_12

    :try_start_8
    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getPackageNamebyPid(I)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_e

    move-object v0, v1

    goto :goto_12

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_12
    return-object v0
.end method

.method private static getService()Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    .registers 3

    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-nez v0, :cond_28

    const-string v0, "whetstone.activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_28

    :try_start_12
    new-instance v1, Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;

    invoke-direct {v1, v0}, Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;-><init>(Lcom/miui/whetstone/server/IWhetstoneActivityManager;)V

    move-object v0, v1

    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_23

    goto :goto_28

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_28
    :goto_28
    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    return-object v0
.end method

.method public static getSystemPid()I
    .registers 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_12

    :try_start_8
    invoke-interface {v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getSystemPid()I

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_e

    move v0, v1

    goto :goto_12

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_12
    return v0
.end method

.method public static initGmsChain(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_12

    :try_start_8
    invoke-interface {v1, p0, p1, p2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->initGmsChain(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_e

    move v0, v1

    goto :goto_12

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_12
    :goto_12
    return v0
.end method

.method public static notifyPkProcessDied(Landroid/os/IBinder;)V
    .registers 2

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->notifyPkProcessDied(Landroid/os/IBinder;)V
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

.method public static removeAppFromServiceControlWhitelist(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->removeAppFromServiceControlWhitelist(Ljava/lang/String;)V
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

.method public static removeTaskById(IZ)Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_18

    :try_start_8
    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->removeTaskById(IZ)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_e

    move v0, v1

    goto :goto_18

    :catch_e
    move-exception v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "whetstone.activity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_18
    return v0
.end method

.method public static scheduleDestoryActivities(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_12

    :try_start_8
    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->distoryActivity(I)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_e

    move v0, v1

    goto :goto_12

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_12
    return v0
.end method

.method public static scheduleTrimMemory(II)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_10

    :try_start_8
    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->scheduleTrimMemory(II)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_10
    return v0
.end method

.method public static setGmsBlockerEnable(IZ)V
    .registers 3

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->setGmsBlockerEnable(IZ)V
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

.method public static setGmsChainState(Ljava/lang/String;Z)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_12

    :try_start_8
    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->setGmsChainState(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_e

    move v0, v1

    goto :goto_12

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_12
    :goto_12
    return v0
.end method

.method public static setWhetstonePackageInfo(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_15

    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->setWhetstonePackageInfo(Ljava/util/List;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_15

    :catch_b
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void
.end method

.method public static updateApplicationsMemoryThreshold(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateApplicationsMemoryThreshold(Ljava/util/List;)V
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

.method public static updateFrameworkCommonConfig(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateFrameworkCommonConfig(Ljava/lang/String;)V
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

.method public static updateUserLockedAppList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateUserLockedAppList(Ljava/util/List;)V
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

.method public static updateUserLockedAppList(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    sget-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-interface {v0, p0, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateUserLockedAppListWithUserId(Ljava/util/List;I)V
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


# virtual methods
.method public setPerformanceComponents([Landroid/content/ComponentName;)Z
    .registers 4

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    const/4 v0, 0x0

    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_12

    :try_start_8
    invoke-interface {v1, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->setPerformanceComponents([Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_e

    move v0, v1

    goto :goto_12

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_12
    :goto_12
    return v0
.end method
