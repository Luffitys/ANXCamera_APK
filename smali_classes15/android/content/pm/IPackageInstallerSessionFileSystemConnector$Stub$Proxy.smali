.class Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPackageInstallerSessionFileSystemConnector.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.content.pm.IPackageInstallerSessionFileSystemConnector"

    return-object v0
.end method

.method public writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    :try_start_a
    const-string v0, "android.content.pm.IPackageInstallerSessionFileSystemConnector"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_63

    move-object/from16 v11, p1

    :try_start_11
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_61

    move-wide/from16 v12, p2

    :try_start_16
    invoke-virtual {v9, v12, v13}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_5f

    move-wide/from16 v14, p4

    :try_start_1b
    invoke-virtual {v9, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v8, :cond_29

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v9, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2c

    :cond_29
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2c
    move-object/from16 v7, p0

    iget-object v2, v7, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v2, v0, v9, v10, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_52

    invoke-static {}, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub;->getDefaultImpl()Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-static {}, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub;->getDefaultImpl()Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;

    move-result-object v1

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;->writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_4b
    .catchall {:try_start_1b .. :try_end_4b} :catchall_5d

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_52
    :try_start_52
    invoke-virtual {v10}, Landroid/os/Parcel;->readException()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5d

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_5d
    move-exception v0

    goto :goto_6a

    :catchall_5f
    move-exception v0

    goto :goto_68

    :catchall_61
    move-exception v0

    goto :goto_66

    :catchall_63
    move-exception v0

    move-object/from16 v11, p1

    :goto_66
    move-wide/from16 v12, p2

    :goto_68
    move-wide/from16 v14, p4

    :goto_6a
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
