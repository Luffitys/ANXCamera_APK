.class Landroid/service/storage/IExternalStorageService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IExternalStorageService.java"

# interfaces
.implements Landroid/service/storage/IExternalStorageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/storage/IExternalStorageService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/service/storage/IExternalStorageService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/storage/IExternalStorageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/service/storage/IExternalStorageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public endSession(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.storage.IExternalStorageService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/os/RemoteCallback;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    :cond_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    iget-object v2, p0, Landroid/service/storage/IExternalStorageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-static {}, Landroid/service/storage/IExternalStorageService$Stub;->getDefaultImpl()Landroid/service/storage/IExternalStorageService;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-static {}, Landroid/service/storage/IExternalStorageService$Stub;->getDefaultImpl()Landroid/service/storage/IExternalStorageService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/service/storage/IExternalStorageService;->endSession(Ljava/lang/String;Landroid/os/RemoteCallback;)V
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

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.service.storage.IExternalStorageService"

    return-object v0
.end method

.method public notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/RemoteCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.storage.IExternalStorageService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/os/storage/StorageVolume;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    :cond_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    if-eqz p3, :cond_23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v2}, Landroid/os/RemoteCallback;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    :cond_23
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_26
    iget-object v2, p0, Landroid/service/storage/IExternalStorageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_41

    invoke-static {}, Landroid/service/storage/IExternalStorageService$Stub;->getDefaultImpl()Landroid/service/storage/IExternalStorageService;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-static {}, Landroid/service/storage/IExternalStorageService$Stub;->getDefaultImpl()Landroid/service/storage/IExternalStorageService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/service/storage/IExternalStorageService;->notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/RemoteCallback;)V
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_46

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_46
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public startSession(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    :try_start_8
    const-string v0, "android.service.storage.IExternalStorageService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_7a

    move-object/from16 v11, p1

    :try_start_f
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_76

    move/from16 v12, p2

    :try_start_14
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v8, :cond_22

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v10, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_25

    :cond_22
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_72

    :goto_25
    move-object/from16 v13, p4

    :try_start_27
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_6e

    move-object/from16 v14, p5

    :try_start_2c
    invoke-virtual {v10, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz v9, :cond_38

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v10, v1}, Landroid/os/RemoteCallback;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3b

    :cond_38
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_6a

    :goto_3b
    move-object/from16 v15, p0

    :try_start_3d
    iget-object v1, v15, Landroid/service/storage/IExternalStorageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v10, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_63

    invoke-static {}, Landroid/service/storage/IExternalStorageService$Stub;->getDefaultImpl()Landroid/service/storage/IExternalStorageService;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-static {}, Landroid/service/storage/IExternalStorageService$Stub;->getDefaultImpl()Landroid/service/storage/IExternalStorageService;

    move-result-object v1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/service/storage/IExternalStorageService;->startSession(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    :try_end_5f
    .catchall {:try_start_3d .. :try_end_5f} :catchall_68

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_63
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_68
    move-exception v0

    goto :goto_85

    :catchall_6a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_85

    :catchall_6e
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_83

    :catchall_72
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_81

    :catchall_76
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7f

    :catchall_7a
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v11, p1

    :goto_7f
    move/from16 v12, p2

    :goto_81
    move-object/from16 v13, p4

    :goto_83
    move-object/from16 v14, p5

    :goto_85
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
