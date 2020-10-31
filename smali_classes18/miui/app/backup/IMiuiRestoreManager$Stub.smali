.class public abstract Lmiui/app/backup/IMiuiRestoreManager$Stub;
.super Landroid/os/Binder;
.source "IMiuiRestoreManager.java"

# interfaces
.implements Lmiui/app/backup/IMiuiRestoreManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/IMiuiRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IMiuiRestoreManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.app.backup.IMiuiRestoreManager"

.field static final TRANSACTION_moveData:I = 0x1

.field static final TRANSACTION_registerRestoreListener:I = 0x2

.field static final TRANSACTION_unregisterRestoreListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.app.backup.IMiuiRestoreManager"

    invoke-virtual {p0, p0, v0}, Lmiui/app/backup/IMiuiRestoreManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IMiuiRestoreManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.app.backup.IMiuiRestoreManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/app/backup/IMiuiRestoreManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/app/backup/IMiuiRestoreManager;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/app/backup/IMiuiRestoreManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/app/backup/IMiuiRestoreManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/app/backup/IMiuiRestoreManager;
    .registers 1

    sget-object v0, Lmiui/app/backup/IMiuiRestoreManager$Stub$Proxy;->sDefaultImpl:Lmiui/app/backup/IMiuiRestoreManager;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    const-string v0, "unregisterRestoreListener"

    return-object v0

    :cond_e
    const-string v0, "registerRestoreListener"

    return-object v0

    :cond_11
    const-string v0, "moveData"

    return-object v0
.end method

.method public static setDefaultImpl(Lmiui/app/backup/IMiuiRestoreManager;)Z
    .registers 3

    sget-object v0, Lmiui/app/backup/IMiuiRestoreManager$Stub$Proxy;->sDefaultImpl:Lmiui/app/backup/IMiuiRestoreManager;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/app/backup/IMiuiRestoreManager$Stub$Proxy;->sDefaultImpl:Lmiui/app/backup/IMiuiRestoreManager;

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

    invoke-static {p1}, Lmiui/app/backup/IMiuiRestoreManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "miui.app.backup.IMiuiRestoreManager"

    const/4 v12, 0x1

    if-eq v8, v12, :cond_45

    const/4 v0, 0x2

    if-eq v8, v0, :cond_33

    const/4 v0, 0x3

    if-eq v8, v0, :cond_21

    const v0, 0x5f4e5446

    if-eq v8, v0, :cond_1d

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_1d
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :cond_21
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/backup/IRestoreListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IRestoreListener;

    move-result-object v0

    invoke-virtual {v7, v0}, Lmiui/app/backup/IMiuiRestoreManager$Stub;->unregisterRestoreListener(Lmiui/app/backup/IRestoreListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :cond_33
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/backup/IRestoreListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IRestoreListener;

    move-result-object v0

    invoke-virtual {v7, v0}, Lmiui/app/backup/IMiuiRestoreManager$Stub;->registerRestoreListener(Lmiui/app/backup/IRestoreListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :cond_45
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_60

    move v5, v12

    goto :goto_62

    :cond_60
    const/4 v0, 0x0

    move v5, v0

    :goto_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lmiui/app/backup/IMiuiRestoreManager$Stub;->moveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12
.end method
