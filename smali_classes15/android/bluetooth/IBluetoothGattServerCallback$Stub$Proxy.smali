.class Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothGattServerCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattServerCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/bluetooth/IBluetoothGattServerCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.bluetooth.IBluetoothGattServerCallback"

    return-object v0
.end method

.method public onCharacteristicReadRequest(Ljava/lang/String;IIZI)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    if-eqz p4, :cond_17

    move v2, v1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    if-eqz v2, :cond_3e

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/bluetooth/IBluetoothGattServerCallback;->onCharacteristicReadRequest(Ljava/lang/String;IIZI)V
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_43

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_43
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onCharacteristicWriteRequest(Ljava/lang/String;IIIZZI[B)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_4
    const-string v0, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_73

    move-object/from16 v11, p1

    :try_start_b
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_71

    move/from16 v12, p2

    :try_start_10
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_6f

    move/from16 v13, p3

    :try_start_15
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_6d

    move/from16 v14, p4

    :try_start_1a
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p5, :cond_23

    move v3, v2

    goto :goto_24

    :cond_23
    move v3, v0

    :goto_24
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p6, :cond_2a

    move v0, v2

    :cond_2a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_6b

    move/from16 v15, p7

    :try_start_2f
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v10, p8

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_64

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    if-eqz v2, :cond_64

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Landroid/bluetooth/IBluetoothGattServerCallback;->onCharacteristicWriteRequest(Ljava/lang/String;IIIZZI[B)V
    :try_end_60
    .catchall {:try_start_2f .. :try_end_60} :catchall_69

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_64
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_69
    move-exception v0

    goto :goto_7e

    :catchall_6b
    move-exception v0

    goto :goto_7c

    :catchall_6d
    move-exception v0

    goto :goto_7a

    :catchall_6f
    move-exception v0

    goto :goto_78

    :catchall_71
    move-exception v0

    goto :goto_76

    :catchall_73
    move-exception v0

    move-object/from16 v11, p1

    :goto_76
    move/from16 v12, p2

    :goto_78
    move/from16 v13, p3

    :goto_7a
    move/from16 v14, p4

    :goto_7c
    move/from16 v15, p7

    :goto_7e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onConnectionUpdated(Ljava/lang/String;IIII)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/bluetooth/IBluetoothGattServerCallback;->onConnectionUpdated(Ljava/lang/String;IIII)V
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_3f

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onDescriptorReadRequest(Ljava/lang/String;IIZI)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    if-eqz p4, :cond_17

    move v2, v1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    if-eqz v2, :cond_3e

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/bluetooth/IBluetoothGattServerCallback;->onDescriptorReadRequest(Ljava/lang/String;IIZI)V
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_43

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_43
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onDescriptorWriteRequest(Ljava/lang/String;IIIZZI[B)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_4
    const-string v0, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_73

    move-object/from16 v11, p1

    :try_start_b
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_71

    move/from16 v12, p2

    :try_start_10
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_6f

    move/from16 v13, p3

    :try_start_15
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_6d

    move/from16 v14, p4

    :try_start_1a
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p5, :cond_23

    move v3, v2

    goto :goto_24

    :cond_23
    move v3, v0

    :goto_24
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p6, :cond_2a

    move v0, v2

    :cond_2a
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_6b

    move/from16 v15, p7

    :try_start_2f
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v10, p8

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_64

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    if-eqz v2, :cond_64

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Landroid/bluetooth/IBluetoothGattServerCallback;->onDescriptorWriteRequest(Ljava/lang/String;IIIZZI[B)V
    :try_end_60
    .catchall {:try_start_2f .. :try_end_60} :catchall_69

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_64
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_69
    move-exception v0

    goto :goto_7e

    :catchall_6b
    move-exception v0

    goto :goto_7c

    :catchall_6d
    move-exception v0

    goto :goto_7a

    :catchall_6f
    move-exception v0

    goto :goto_78

    :catchall_71
    move-exception v0

    goto :goto_76

    :catchall_73
    move-exception v0

    move-object/from16 v11, p1

    :goto_76
    move/from16 v12, p2

    :goto_78
    move/from16 v13, p3

    :goto_7a
    move/from16 v14, p4

    :goto_7c
    move/from16 v15, p7

    :goto_7e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onExecuteWrite(Ljava/lang/String;IZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    if-eqz p3, :cond_14

    move v2, v1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/bluetooth/IBluetoothGattServerCallback;->onExecuteWrite(Ljava/lang/String;IZ)V
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_39

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_39
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onMtuChanged(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onMtuChanged(Ljava/lang/String;I)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onNotificationSent(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onNotificationSent(Ljava/lang/String;I)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onPhyRead(Ljava/lang/String;III)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattServerCallback;->onPhyRead(Ljava/lang/String;III)V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_37

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onPhyUpdate(Ljava/lang/String;III)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattServerCallback;->onPhyUpdate(Ljava/lang/String;III)V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_37

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onServerConnectionState(IIZLjava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    if-eqz p3, :cond_14

    move v2, v1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServerConnectionState(IIZLjava/lang/String;)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_3b

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onServerRegistered(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServerRegistered(II)V
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2f

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/bluetooth/BluetoothGattService;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    :cond_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-static {}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->getDefaultImpl()Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_3a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
