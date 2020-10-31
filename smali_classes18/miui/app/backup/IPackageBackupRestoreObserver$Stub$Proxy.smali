.class Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPackageBackupRestoreObserver.java"

# interfaces
.implements Lmiui/app/backup/IPackageBackupRestoreObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lmiui/app/backup/IPackageBackupRestoreObserver;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "miui.app.backup.IPackageBackupRestoreObserver"

    return-object v0
.end method

.method public onBackupEnd(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->getDefaultImpl()Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->getDefaultImpl()Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onBackupEnd(Ljava/lang/String;I)V
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

.method public onBackupStart(Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->getDefaultImpl()Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-static {}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->getDefaultImpl()Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onBackupStart(Ljava/lang/String;I)V
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

.method public onCustomProgressChange(Ljava/lang/String;IIJJ)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_4
    const-string v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_61

    move-object/from16 v10, p1

    :try_start_b
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_5d

    move/from16 v11, p2

    :try_start_10
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_59

    move/from16 v12, p3

    :try_start_15
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_55

    move-wide/from16 v13, p4

    :try_start_1a
    invoke-virtual {v1, v13, v14}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v8, p6

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_51

    move-object/from16 v15, p0

    :try_start_24
    iget-object v0, v15, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->getDefaultImpl()Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-static {}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->getDefaultImpl()Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-interface/range {v2 .. v9}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onCustomProgressChange(Ljava/lang/String;IIJJ)V
    :try_end_46
    .catchall {:try_start_24 .. :try_end_46} :catchall_4f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_4a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_4f
    move-exception v0

    goto :goto_6c

    :catchall_51
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6c

    :catchall_55
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6a

    :catchall_59
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_68

    :catchall_5d
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_66

    :catchall_61
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v10, p1

    :goto_66
    move/from16 v11, p2

    :goto_68
    move/from16 v12, p3

    :goto_6a
    move-wide/from16 v13, p4

    :goto_6c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onError(Ljava/lang/String;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->getDefaultImpl()Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-static {}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->getDefaultImpl()Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onError(Ljava/lang/String;II)V
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_33

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onRestoreEnd(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->getDefaultImpl()Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->getDefaultImpl()Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onRestoreEnd(Ljava/lang/String;I)V
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

.method public onRestoreError(Ljava/lang/String;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->getDefaultImpl()Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-static {}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->getDefaultImpl()Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onRestoreError(Ljava/lang/String;II)V
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_33

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onRestoreStart(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->getDefaultImpl()Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->getDefaultImpl()Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onRestoreStart(Ljava/lang/String;I)V
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
