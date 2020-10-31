.class public Lmiui/bluetooth/ble/MiBlePayProfile;
.super Lmiui/bluetooth/ble/MiBleProfile;
.source "MiBlePayProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/MiBlePayProfile$OnRSSIChangedListerner;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/bluetooth/ble/MiBleProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    return-void
.end method


# virtual methods
.method public encrypt([B)[B
    .registers 5

    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiBlePayProfile;->isReady()Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBlePayProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBlePayProfile;->mDevice:Ljava/lang/String;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBlePayProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1, v2, p1}, Lmiui/bluetooth/ble/IBluetoothMiBle;->encrypt(Ljava/lang/String;Landroid/os/ParcelUuid;[B)[B

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerRssiChangedListener(Lmiui/bluetooth/ble/MiBlePayProfile$OnRSSIChangedListerner;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x4

    new-instance v1, Lmiui/bluetooth/ble/MiBlePayProfile$1;

    invoke-direct {v1, p0, p1}, Lmiui/bluetooth/ble/MiBlePayProfile$1;-><init>(Lmiui/bluetooth/ble/MiBlePayProfile;Lmiui/bluetooth/ble/MiBlePayProfile$OnRSSIChangedListerner;)V

    invoke-virtual {p0, v0, v1}, Lmiui/bluetooth/ble/MiBlePayProfile;->registerPropertyNotifyCallback(ILmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;)Z

    return-void
.end method

.method public setEncryptionKey([B)Z
    .registers 5

    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiBlePayProfile;->isReady()Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBlePayProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBlePayProfile;->mDevice:Ljava/lang/String;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBlePayProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1, v2, p1}, Lmiui/bluetooth/ble/IBluetoothMiBle;->setEncryptionKey(Ljava/lang/String;Landroid/os/ParcelUuid;[B)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterRssiChangedListener()V
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/bluetooth/ble/MiBlePayProfile;->unregisterPropertyNotifyCallback(I)Z

    return-void
.end method
