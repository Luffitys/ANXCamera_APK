.class public abstract Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;
.super Landroid/os/Binder;
.source "IPackageBackupRestoreObserver.java"

# interfaces
.implements Lmiui/app/backup/IPackageBackupRestoreObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/IPackageBackupRestoreObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.app.backup.IPackageBackupRestoreObserver"

.field static final TRANSACTION_onBackupEnd:I = 0x2

.field static final TRANSACTION_onBackupStart:I = 0x1

.field static final TRANSACTION_onCustomProgressChange:I = 0x7

.field static final TRANSACTION_onError:I = 0x6

.field static final TRANSACTION_onRestoreEnd:I = 0x4

.field static final TRANSACTION_onRestoreError:I = 0x5

.field static final TRANSACTION_onRestoreStart:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p0, p0, v0}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IPackageBackupRestoreObserver;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/app/backup/IPackageBackupRestoreObserver;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/app/backup/IPackageBackupRestoreObserver;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/app/backup/IPackageBackupRestoreObserver;
    .registers 1

    sget-object v0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->sDefaultImpl:Lmiui/app/backup/IPackageBackupRestoreObserver;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string v0, "onCustomProgressChange"

    return-object v0

    :pswitch_8
    const-string v0, "onError"

    return-object v0

    :pswitch_b
    const-string v0, "onRestoreError"

    return-object v0

    :pswitch_e
    const-string v0, "onRestoreEnd"

    return-object v0

    :pswitch_11
    const-string v0, "onRestoreStart"

    return-object v0

    :pswitch_14
    const-string v0, "onBackupEnd"

    return-object v0

    :pswitch_17
    const-string v0, "onBackupStart"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Lmiui/app/backup/IPackageBackupRestoreObserver;)Z
    .registers 3

    sget-object v0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->sDefaultImpl:Lmiui/app/backup/IPackageBackupRestoreObserver;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->sDefaultImpl:Lmiui/app/backup/IPackageBackupRestoreObserver;

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

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

    invoke-static {p1}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    const-string v11, "miui.app.backup.IPackageBackupRestoreObserver"

    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v9, v0, :cond_9c

    packed-switch v9, :pswitch_data_a2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_16
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move v3, v15

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    invoke-virtual/range {v0 .. v7}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onCustomProgressChange(Ljava/lang/String;IIJJ)V

    return v12

    :pswitch_3a
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onError(Ljava/lang/String;II)V

    return v12

    :pswitch_4d
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onRestoreError(Ljava/lang/String;II)V

    return v12

    :pswitch_60
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onRestoreEnd(Ljava/lang/String;I)V

    return v12

    :pswitch_6f
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onRestoreStart(Ljava/lang/String;I)V

    return v12

    :pswitch_7e
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onBackupEnd(Ljava/lang/String;I)V

    return v12

    :pswitch_8d
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onBackupStart(Ljava/lang/String;I)V

    return v12

    :cond_9c
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_7e
        :pswitch_6f
        :pswitch_60
        :pswitch_4d
        :pswitch_3a
        :pswitch_16
    .end packed-switch
.end method
