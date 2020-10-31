.class public abstract Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub;
.super Landroid/os/Binder;
.source "IPackageInstallerSessionFileSystemConnector.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstallerSessionFileSystemConnector"

.field static final TRANSACTION_writeData:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.content.pm.IPackageInstallerSessionFileSystemConnector"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.content.pm.IPackageInstallerSessionFileSystemConnector"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;

    return-object v1

    :cond_14
    new-instance v1, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;
    .registers 1

    sget-object v0, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub$Proxy;->sDefaultImpl:Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    const-string/jumbo v0, "writeData"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;)Z
    .registers 3

    sget-object v0, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub$Proxy;->sDefaultImpl:Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub$Proxy;->sDefaultImpl:Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "android.content.pm.IPackageInstallerSessionFileSystemConnector"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_19

    const v4, 0x5f4e5446

    if-eq v0, v4, :cond_13

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :cond_13
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :cond_19
    move-object/from16 v4, p3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3b

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v17, v5

    goto :goto_3e

    :cond_3b
    const/4 v5, 0x0

    move-object/from16 v17, v5

    :goto_3e
    move-object/from16 v5, p0

    move-object v6, v12

    move-wide v7, v13

    move-wide v9, v15

    move-object/from16 v11, v17

    invoke-virtual/range {v5 .. v11}, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub;->writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v3
.end method
