.class Landroid/app/IBackupAgent$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBackupAgent.java"

# interfaces
.implements Landroid/app/IBackupAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IBackupAgent$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/app/IBackupAgent;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    :try_start_a
    const-string v0, "android.app.IBackupAgent"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v9, :cond_1a

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v12, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    :cond_1a
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1d
    if-eqz v10, :cond_26

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v10, v12, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_29

    :cond_26
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_29
    if-eqz v11, :cond_32

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v11, v12, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_35

    :cond_32
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_7b

    :goto_35
    move-wide/from16 v13, p4

    :try_start_37
    invoke-virtual {v12, v13, v14}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v1, 0x0

    if-eqz p6, :cond_42

    invoke-interface/range {p6 .. p6}, Landroid/app/backup/IBackupCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_43

    :cond_42
    move-object v2, v1

    :goto_43
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_79

    move/from16 v15, p7

    :try_start_48
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v8, p0

    iget-object v2, v8, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v2, v0, v12, v1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_72

    invoke-static {}, Landroid/app/IBackupAgent$Stub;->getDefaultImpl()Landroid/app/IBackupAgent;

    move-result-object v1

    if-eqz v1, :cond_72

    invoke-static {}, Landroid/app/IBackupAgent$Stub;->getDefaultImpl()Landroid/app/IBackupAgent;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V
    :try_end_6e
    .catchall {:try_start_48 .. :try_end_6e} :catchall_77

    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_72
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_77
    move-exception v0

    goto :goto_80

    :catchall_79
    move-exception v0

    goto :goto_7e

    :catchall_7b
    move-exception v0

    move-wide/from16 v13, p4

    :goto_7e
    move/from16 v15, p7

    :goto_80
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    :try_start_6
    const-string v0, "android.app.IBackupAgent"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v8, :cond_16

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v9, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_19

    :cond_16
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_69

    :goto_19
    move-wide/from16 v10, p2

    :try_start_1b
    invoke-virtual {v9, v10, v11}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_66

    move/from16 v12, p4

    :try_start_20
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p5, :cond_2b

    invoke-interface/range {p5 .. p5}, Landroid/app/backup/IBackupManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_2c

    :cond_2b
    move-object v2, v1

    :goto_2c
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_63

    move/from16 v13, p6

    :try_start_31
    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_60

    move-object v14, p0

    :try_start_35
    iget-object v2, v14, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    invoke-interface {v2, v3, v9, v1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_59

    invoke-static {}, Landroid/app/IBackupAgent$Stub;->getDefaultImpl()Landroid/app/IBackupAgent;

    move-result-object v1

    if-eqz v1, :cond_59

    invoke-static {}, Landroid/app/IBackupAgent$Stub;->getDefaultImpl()Landroid/app/IBackupAgent;

    move-result-object v1

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/app/IBackupAgent;->doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V
    :try_end_55
    .catchall {:try_start_35 .. :try_end_55} :catchall_5e

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_59
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_5e
    move-exception v0

    goto :goto_71

    :catchall_60
    move-exception v0

    move-object v14, p0

    goto :goto_71

    :catchall_63
    move-exception v0

    move-object v14, p0

    goto :goto_6f

    :catchall_66
    move-exception v0

    move-object v14, p0

    goto :goto_6d

    :catchall_69
    move-exception v0

    move-object v14, p0

    move-wide/from16 v10, p2

    :goto_6d
    move/from16 v12, p4

    :goto_6f
    move/from16 v13, p6

    :goto_71
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public doMeasureFullBackup(JILandroid/app/backup/IBackupManager;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.IBackupAgent"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p4, :cond_17

    invoke-interface {p4}, Landroid/app/backup/IBackupManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, v1

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-static {}, Landroid/app/IBackupAgent$Stub;->getDefaultImpl()Landroid/app/IBackupAgent;

    move-result-object v2

    if-eqz v2, :cond_3d

    invoke-static {}, Landroid/app/IBackupAgent$Stub;->getDefaultImpl()Landroid/app/IBackupAgent;

    move-result-object v3

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/app/IBackupAgent;->doMeasureFullBackup(JILandroid/app/backup/IBackupManager;I)V
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_42

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_42
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.IBackupAgent"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v1, 0x0

    if-eqz p5, :cond_17

    invoke-interface {p5}, Landroid/app/backup/IBackupCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, v1

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_39

    invoke-static {}, Landroid/app/IBackupAgent$Stub;->getDefaultImpl()Landroid/app/IBackupAgent;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-static {}, Landroid/app/IBackupAgent$Stub;->getDefaultImpl()Landroid/app/IBackupAgent;

    move-result-object v3

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_3e

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public doRestore(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    :try_start_8
    const-string v0, "android.app.IBackupAgent"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v8, :cond_18

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v10, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    :cond_18
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_6f

    :goto_1b
    move-wide/from16 v11, p2

    :try_start_1d
    invoke-virtual {v10, v11, v12}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz v9, :cond_29

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v10, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2c

    :cond_29
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_6c

    :goto_2c
    move/from16 v13, p5

    :try_start_2e
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p6, :cond_39

    invoke-interface/range {p6 .. p6}, Landroid/app/backup/IBackupManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_3a

    :cond_39
    move-object v2, v1

    :goto_3a
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_69

    move-object v14, p0

    :try_start_3e
    iget-object v2, v14, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v10, v1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_62

    invoke-static {}, Landroid/app/IBackupAgent$Stub;->getDefaultImpl()Landroid/app/IBackupAgent;

    move-result-object v1

    if-eqz v1, :cond_62

    invoke-static {}, Landroid/app/IBackupAgent$Stub;->getDefaultImpl()Landroid/app/IBackupAgent;

    move-result-object v1

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_5e
    .catchall {:try_start_3e .. :try_end_5e} :catchall_67

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_62
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_67
    move-exception v0

    goto :goto_75

    :catchall_69
    move-exception v0

    move-object v14, p0

    goto :goto_75

    :catchall_6c
    move-exception v0

    move-object v14, p0

    goto :goto_73

    :catchall_6f
    move-exception v0

    move-object v14, p0

    move-wide/from16 v11, p2

    :goto_73
    move/from16 v13, p5

    :goto_75
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v14, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    :try_start_6
    const-string v0, "android.app.IBackupAgent"

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v14, :cond_16

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v14, v15, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_19

    :cond_16
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_19
    move-wide/from16 v12, p2

    invoke-virtual {v15, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v10, p4

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v11, p5

    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v8, p6

    invoke-virtual {v15, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide/from16 v6, p7

    invoke-virtual {v15, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v3, p9

    invoke-virtual {v15, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v9, p11

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p12, :cond_44

    invoke-interface/range {p12 .. p12}, Landroid/app/backup/IBackupManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_45

    :cond_44
    move-object v2, v1

    :goto_45
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object/from16 v5, p0

    iget-object v2, v5, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    invoke-interface {v2, v3, v15, v1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_76

    invoke-static {}, Landroid/app/IBackupAgent$Stub;->getDefaultImpl()Landroid/app/IBackupAgent;

    move-result-object v1

    if-eqz v1, :cond_76

    invoke-static {}, Landroid/app/IBackupAgent$Stub;->getDefaultImpl()Landroid/app/IBackupAgent;

    move-result-object v1

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-interface/range {v1 .. v13}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_72
    .catchall {:try_start_6 .. :try_end_72} :catchall_7b

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_76
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_7b
    move-exception v0

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.IBackupAgent"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p2, :cond_14

    invoke-interface {p2}, Landroid/app/backup/IBackupManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v1

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-static {}, Landroid/app/IBackupAgent$Stub;->getDefaultImpl()Landroid/app/IBackupAgent;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-static {}, Landroid/app/IBackupAgent$Stub;->getDefaultImpl()Landroid/app/IBackupAgent;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
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

.method public doRestoreWithExcludedKeys(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "J",
            "Landroid/os/ParcelFileDescriptor;",
            "I",
            "Landroid/app/backup/IBackupManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    :try_start_8
    const-string v0, "android.app.IBackupAgent"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v9, :cond_18

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v11, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    :cond_18
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_75

    :goto_1b
    move-wide/from16 v12, p2

    :try_start_1d
    invoke-virtual {v11, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz v10, :cond_29

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v10, v11, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2c

    :cond_29
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_73

    :goto_2c
    move/from16 v14, p5

    :try_start_2e
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p6, :cond_39

    invoke-interface/range {p6 .. p6}, Landroid/app/backup/IBackupManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_3a

    :cond_39
    move-object v2, v1

    :goto_3a
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_71

    move-object/from16 v15, p7

    :try_start_3f
    invoke-virtual {v11, v15}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v8, p0

    iget-object v2, v8, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    invoke-interface {v2, v3, v11, v1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-static {}, Landroid/app/IBackupAgent$Stub;->getDefaultImpl()Landroid/app/IBackupAgent;

    move-result-object v1

    if-eqz v1, :cond_6a

    invoke-static {}, Landroid/app/IBackupAgent$Stub;->getDefaultImpl()Landroid/app/IBackupAgent;

    move-result-object v1

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/app/IBackupAgent;->doRestoreWithExcludedKeys(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V
    :try_end_66
    .catchall {:try_start_3f .. :try_end_66} :catchall_6f

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_6a
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_6f
    move-exception v0

    goto :goto_7c

    :catchall_71
    move-exception v0

    goto :goto_7a

    :catchall_73
    move-exception v0

    goto :goto_78

    :catchall_75
    move-exception v0

    move-wide/from16 v12, p2

    :goto_78
    move/from16 v14, p5

    :goto_7a
    move-object/from16 v15, p7

    :goto_7c
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public fail(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.app.IBackupAgent"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/IBackupAgent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {}, Landroid/app/IBackupAgent$Stub;->getDefaultImpl()Landroid/app/IBackupAgent;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-static {}, Landroid/app/IBackupAgent$Stub;->getDefaultImpl()Landroid/app/IBackupAgent;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2e

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.app.IBackupAgent"

    return-object v0
.end method
