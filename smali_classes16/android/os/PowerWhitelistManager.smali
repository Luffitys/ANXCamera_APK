.class public Landroid/os/PowerWhitelistManager;
.super Ljava/lang/Object;
.source "PowerWhitelistManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerWhitelistManager$WhitelistEvent;
    }
.end annotation


# static fields
.field public static final EVENT_MMS:I = 0x2

.field public static final EVENT_SMS:I = 0x1

.field public static final EVENT_UNSPECIFIED:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IDeviceIdleController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PowerWhitelistManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/DeviceIdleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DeviceIdleManager;

    invoke-virtual {v0}, Landroid/os/DeviceIdleManager;->getService()Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PowerWhitelistManager;->mService:Landroid/os/IDeviceIdleController;

    return-void
.end method


# virtual methods
.method public addToWhitelist(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/PowerWhitelistManager;->addToWhitelist(Ljava/util/List;)V

    return-void
.end method

.method public addToWhitelist(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerWhitelistManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApps(Ljava/util/List;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWhitelistedAppIds(Z)[I
    .registers 4

    if-eqz p1, :cond_9

    :try_start_2
    iget-object v0, p0, Landroid/os/PowerWhitelistManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Landroid/os/PowerWhitelistManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isWhitelisted(Ljava/lang/String;Z)Z
    .registers 5

    if-eqz p2, :cond_9

    :try_start_2
    iget-object v0, p0, Landroid/os/PowerWhitelistManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Landroid/os/PowerWhitelistManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelistAppTemporarily(Ljava/lang/String;J)V
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_19
    iget-object v2, p0, Landroid/os/PowerWhitelistManager;->mService:Landroid/os/IDeviceIdleController;

    iget-object v1, p0, Landroid/os/PowerWhitelistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v6

    move-object v3, p1

    move-wide v4, p2

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_27} :catch_29

    nop

    return-void

    :catch_29
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelistAppTemporarilyForEvent(Ljava/lang/String;ILjava/lang/String;)J
    .registers 6

    const/4 v0, 0x1

    if-eq p2, v0, :cond_22

    const/4 v0, 0x2

    if-eq p2, v0, :cond_15

    :try_start_6
    iget-object v0, p0, Landroid/os/PowerWhitelistManager;->mService:Landroid/os/IDeviceIdleController;

    iget-object v1, p0, Landroid/os/PowerWhitelistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Landroid/os/IDeviceIdleController;->whitelistAppTemporarily(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :catch_13
    move-exception v0

    goto :goto_2f

    :cond_15
    iget-object v0, p0, Landroid/os/PowerWhitelistManager;->mService:Landroid/os/IDeviceIdleController;

    iget-object v1, p0, Landroid/os/PowerWhitelistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_22
    iget-object v0, p0, Landroid/os/PowerWhitelistManager;->mService:Landroid/os/IDeviceIdleController;

    iget-object v1, p0, Landroid/os/PowerWhitelistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_2e} :catch_13

    return-wide v0

    :goto_2f
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
