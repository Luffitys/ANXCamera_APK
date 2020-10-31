.class Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPeriodicAdvertisingCallback.java"

# interfaces
.implements Landroid/bluetooth/le/IPeriodicAdvertisingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/bluetooth/le/IPeriodicAdvertisingCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.bluetooth.le.IPeriodicAdvertisingCallback"

    return-object v0
.end method

.method public onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.bluetooth.le.IPeriodicAdvertisingCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/bluetooth/le/PeriodicAdvertisingReport;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    iget-object v2, p0, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-static {}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->getDefaultImpl()Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-static {}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->getDefaultImpl()Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback;->onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V
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

.method public onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    :try_start_6
    const-string v0, "android.bluetooth.le.IPeriodicAdvertisingCallback"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_75

    move/from16 v10, p1

    :try_start_d
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v8, :cond_1b

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v9, v0}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    :cond_1b
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_71

    :goto_1e
    move/from16 v11, p3

    :try_start_20
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_6d

    move/from16 v12, p4

    :try_start_25
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_69

    move/from16 v13, p5

    :try_start_2a
    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_65

    move/from16 v14, p6

    :try_start_2f
    invoke-virtual {v9, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_61

    move-object/from16 v15, p0

    :try_start_34
    iget-object v0, v15, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v9, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-static {}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->getDefaultImpl()Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-static {}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->getDefaultImpl()Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback;->onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V
    :try_end_56
    .catchall {:try_start_34 .. :try_end_56} :catchall_5f

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_5a
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_5f
    move-exception v0

    goto :goto_82

    :catchall_61
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_82

    :catchall_65
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_80

    :catchall_69
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7e

    :catchall_6d
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7c

    :catchall_71
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7a

    :catchall_75
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v10, p1

    :goto_7a
    move/from16 v11, p3

    :goto_7c
    move/from16 v12, p4

    :goto_7e
    move/from16 v13, p5

    :goto_80
    move/from16 v14, p6

    :goto_82
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onSyncLost(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.bluetooth.le.IPeriodicAdvertisingCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->getDefaultImpl()Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-static {}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->getDefaultImpl()Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback;->onSyncLost(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
