.class Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGeofenceHardwareCallback.java"

# interfaces
.implements Landroid/hardware/location/IGeofenceHardwareCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IGeofenceHardwareCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/hardware/location/IGeofenceHardwareCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.hardware.location.IGeofenceHardwareCallback"

    return-object v0
.end method

.method public onGeofenceAdd(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.hardware.location.IGeofenceHardwareCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->getDefaultImpl()Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->getDefaultImpl()Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceAdd(II)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onGeofencePause(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.hardware.location.IGeofenceHardwareCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->getDefaultImpl()Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->getDefaultImpl()Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofencePause(II)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onGeofenceRemove(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.hardware.location.IGeofenceHardwareCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->getDefaultImpl()Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->getDefaultImpl()Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceRemove(II)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onGeofenceResume(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.hardware.location.IGeofenceHardwareCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->getDefaultImpl()Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->getDefaultImpl()Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceResume(II)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onGeofenceTransition(IILandroid/location/Location;JI)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    :try_start_6
    const-string v0, "android.hardware.location.IGeofenceHardwareCallback"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_6a

    move/from16 v10, p1

    :try_start_d
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_66

    move/from16 v11, p2

    :try_start_12
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v8, :cond_20

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v9, v0}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    :cond_20
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_62

    :goto_23
    move-wide/from16 v12, p4

    :try_start_25
    invoke-virtual {v9, v12, v13}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_5e

    move/from16 v14, p6

    :try_start_2a
    invoke-virtual {v9, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_5a

    move-object/from16 v15, p0

    :try_start_2f
    iget-object v0, v15, Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v9, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-static {}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->getDefaultImpl()Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-static {}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->getDefaultImpl()Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceTransition(IILandroid/location/Location;JI)V
    :try_end_4f
    .catchall {:try_start_2f .. :try_end_4f} :catchall_58

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_53
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_58
    move-exception v0

    goto :goto_75

    :catchall_5a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_75

    :catchall_5e
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_73

    :catchall_62
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_71

    :catchall_66
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6f

    :catchall_6a
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v10, p1

    :goto_6f
    move/from16 v11, p2

    :goto_71
    move-wide/from16 v12, p4

    :goto_73
    move/from16 v14, p6

    :goto_75
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
