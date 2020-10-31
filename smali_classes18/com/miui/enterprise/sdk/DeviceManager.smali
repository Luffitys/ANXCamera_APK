.class public Lcom/miui/enterprise/sdk/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# static fields
.field public static final RESTRICTION_MODE_BLACK_LIST:I = 0x2

.field public static final RESTRICTION_MODE_DEFAULT:I = 0x0

.field public static final RESTRICTION_MODE_WHITE_LIST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceManager"

.field private static final VERSION:Ljava/lang/String; = "MIUI-ENT-4.0"

.field private static volatile sInstance:Lcom/miui/enterprise/sdk/DeviceManager;


# instance fields
.field private mService:Lcom/miui/enterprise/IDeviceManager;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "device_manager"

    invoke-static {v0}, Lcom/miui/enterprise/EnterpriseManager;->getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/enterprise/sdk/DeviceManager;
    .registers 2

    const-class v0, Lcom/miui/enterprise/sdk/DeviceManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/miui/enterprise/sdk/DeviceManager;->sInstance:Lcom/miui/enterprise/sdk/DeviceManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/miui/enterprise/sdk/DeviceManager;

    invoke-direct {v1}, Lcom/miui/enterprise/sdk/DeviceManager;-><init>()V

    sput-object v1, Lcom/miui/enterprise/sdk/DeviceManager;->sInstance:Lcom/miui/enterprise/sdk/DeviceManager;

    :cond_e
    sget-object v1, Lcom/miui/enterprise/sdk/DeviceManager;->sInstance:Lcom/miui/enterprise/sdk/DeviceManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public captureScreen()Landroid/graphics/Bitmap;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IDeviceManager;->captureScreen()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public deviceReboot()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IDeviceManager;->deviceReboot()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "DeviceManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public deviceShutDown()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IDeviceManager;->deviceShutDown()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "DeviceManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public formatSdCard()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IDeviceManager;->formatSdCard()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "DeviceManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public getAPIVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "MIUI-ENT-4.0"

    return-object v0
.end method

.method public getDefaultHome()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IDeviceManager;->getDefaultHome()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    return-object v0
.end method

.method public getUrlBlackList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/DeviceManager;->getUrlBlackList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUrlBlackList(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IDeviceManager;->getUrlBlackList(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getUrlWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/DeviceManager;->getUrlWhiteList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUrlWhiteList(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IDeviceManager;->getUrlWhiteList(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public isDeviceRoot()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IDeviceManager;->isDeviceRoot()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, "DeviceManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public recoveryFactory(Z)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IDeviceManager;->recoveryFactory(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setBootAnimation(Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IDeviceManager;->setBootAnimation(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    return v0
.end method

.method public setBrowserRestriction(I)V
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/DeviceManager;->setBrowserRestriction(II)V

    return-void
.end method

.method public setBrowserRestriction(II)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IDeviceManager;->setBrowserRestriction(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setDefaultHome(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IDeviceManager;->setDefaultHome(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setLockWallPaper(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IDeviceManager;->setLockWallPaper(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setUrlBlackList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/DeviceManager;->setUrlBlackList(Ljava/util/List;I)V

    return-void
.end method

.method public setUrlBlackList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IDeviceManager;->setUrlBlackList(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setUrlWhiteList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/DeviceManager;->setUrlWhiteList(Ljava/util/List;I)V

    return-void
.end method

.method public setUrlWhiteList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IDeviceManager;->setUrlWhiteList(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "DeviceManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setWallPaper(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/DeviceManager;->mService:Lcom/miui/enterprise/IDeviceManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IDeviceManager;->setWallPaper(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "DeviceManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method
