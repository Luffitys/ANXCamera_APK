.class public Landroid/os/DeviceIdleManager;
.super Ljava/lang/Object;
.source "DeviceIdleManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IDeviceIdleController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IDeviceIdleController;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/DeviceIdleManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    return-void
.end method


# virtual methods
.method getService()Landroid/os/IDeviceIdleController;
    .registers 2

    iget-object v0, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    return-object v0
.end method

.method public getSystemPowerWhitelist()[Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/os/DeviceIdleManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
