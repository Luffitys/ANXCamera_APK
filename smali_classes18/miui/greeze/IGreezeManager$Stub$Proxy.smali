.class Lmiui/greeze/IGreezeManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGreezeManager.java"

# interfaces
.implements Lmiui/greeze/IGreezeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/greeze/IGreezeManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lmiui/greeze/IGreezeManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public freezePids([IJILjava/lang/String;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "miui.greeze.IGreezeManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v4

    move-object v5, p1

    move-wide v6, p2

    move v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lmiui/greeze/IGreezeManager;->freezePids([IJILjava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_54

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_54

    move-object v2, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v2

    :catchall_54
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public freezeUids([IJILjava/lang/String;Z)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_8
    const-string v0, "miui.greeze.IGreezeManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_7e

    move-object/from16 v10, p1

    :try_start_f
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeIntArray([I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_7a

    move-wide/from16 v11, p2

    :try_start_14
    invoke-virtual {v1, v11, v12}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_76

    move/from16 v13, p4

    :try_start_19
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_72

    move-object/from16 v14, p5

    :try_start_1e
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p6, :cond_26

    const/4 v3, 0x1

    goto :goto_27

    :cond_26
    move v3, v0

    :goto_27
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_6e

    move-object/from16 v15, p0

    :try_start_2c
    iget-object v3, v15, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_54

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    if-eqz v3, :cond_54

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lmiui/greeze/IGreezeManager;->freezeUids([IJILjava/lang/String;Z)Ljava/util/List;

    move-result-object v3
    :try_end_4d
    .catchall {:try_start_2c .. :try_end_4d} :catchall_6c

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_54
    :try_start_54
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_63
    .catchall {:try_start_54 .. :try_end_63} :catchall_6c

    move-object v0, v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v0

    :catchall_6c
    move-exception v0

    goto :goto_89

    :catchall_6e
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_89

    :catchall_72
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_87

    :catchall_76
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_85

    :catchall_7a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_83

    :catchall_7e
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v10, p1

    :goto_83
    move-wide/from16 v11, p2

    :goto_85
    move/from16 v13, p4

    :goto_87
    move-object/from16 v14, p5

    :goto_89
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getFrozenPids(I)[I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "miui.greeze.IGreezeManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lmiui/greeze/IGreezeManager;->getFrozenPids(I)[I

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v2

    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getFrozenUids(I)[I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "miui.greeze.IGreezeManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lmiui/greeze/IGreezeManager;->getFrozenUids(I)[I

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v2

    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "miui.greeze.IGreezeManager"

    return-object v0
.end method

.method public getLastThawedTime(II)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "miui.greeze.IGreezeManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lmiui/greeze/IGreezeManager;->getLastThawedTime(II)J

    move-result-wide v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v3

    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move-wide v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-wide v2

    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public isUidActive(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "miui.greeze.IGreezeManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lmiui/greeze/IGreezeManager;->isUidActive(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public isUidFrozen(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "miui.greeze.IGreezeManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lmiui/greeze/IGreezeManager;->isUidFrozen(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerCallback(Lmiui/greeze/IGreezeCallback;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "miui.greeze.IGreezeManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Lmiui/greeze/IGreezeCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    if-eqz v3, :cond_3b

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lmiui/greeze/IGreezeManager;->registerCallback(Lmiui/greeze/IGreezeCallback;I)Z

    move-result v3
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_4e

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_4e

    if-eqz v3, :cond_45

    const/4 v4, 0x1

    :cond_45
    move v2, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_4e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerMonitor(Lmiui/greeze/IMonitorToken;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "miui.greeze.IGreezeManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Lmiui/greeze/IMonitorToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    if-eqz v3, :cond_3b

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lmiui/greeze/IGreezeManager;->registerMonitor(Lmiui/greeze/IMonitorToken;I)Z

    move-result v3
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_4e

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_4e

    if-eqz v3, :cond_45

    const/4 v4, 0x1

    :cond_45
    move v2, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_4e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public reportBinderState(IIIIJ)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_4
    const-string v0, "miui.greeze.IGreezeManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_65

    move/from16 v9, p1

    :try_start_b
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_61

    move/from16 v10, p2

    :try_start_10
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_5d

    move/from16 v11, p3

    :try_start_15
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_59

    move/from16 v12, p4

    :try_start_1a
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_55

    move-wide/from16 v13, p5

    :try_start_1f
    invoke-virtual {v1, v13, v14}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_51

    move-object/from16 v15, p0

    :try_start_24
    iget-object v0, v15, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-interface/range {v2 .. v8}, Lmiui/greeze/IGreezeManager;->reportBinderState(IIIIJ)V
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

    goto :goto_72

    :catchall_51
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_72

    :catchall_55
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_70

    :catchall_59
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6e

    :catchall_5d
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6c

    :catchall_61
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6a

    :catchall_65
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v9, p1

    :goto_6a
    move/from16 v10, p2

    :goto_6c
    move/from16 v11, p3

    :goto_6e
    move/from16 v12, p4

    :goto_70
    move-wide/from16 v13, p5

    :goto_72
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public reportBinderTrans(IIIIIZJI)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_4
    const-string v0, "miui.greeze.IGreezeManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_6f

    move/from16 v12, p1

    :try_start_b
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_6d

    move/from16 v13, p2

    :try_start_10
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_6b

    move/from16 v14, p3

    :try_start_15
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_69

    move/from16 v15, p4

    :try_start_1a
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    if-eqz p6, :cond_27

    move v2, v0

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v9, p7

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v8, p9

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v7, p0

    iget-object v2, v7, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_62

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v2

    if-eqz v2, :cond_62

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lmiui/greeze/IGreezeManager;->reportBinderTrans(IIIIIZJI)V
    :try_end_5e
    .catchall {:try_start_1a .. :try_end_5e} :catchall_67

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_62
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_67
    move-exception v0

    goto :goto_78

    :catchall_69
    move-exception v0

    goto :goto_76

    :catchall_6b
    move-exception v0

    goto :goto_74

    :catchall_6d
    move-exception v0

    goto :goto_72

    :catchall_6f
    move-exception v0

    move/from16 v12, p1

    :goto_72
    move/from16 v13, p2

    :goto_74
    move/from16 v14, p3

    :goto_76
    move/from16 v15, p4

    :goto_78
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public reportLoopOnce()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "miui.greeze.IGreezeManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v2

    invoke-interface {v2}, Lmiui/greeze/IGreezeManager;->reportLoopOnce()V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2b

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public reportNet(IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "miui.greeze.IGreezeManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lmiui/greeze/IGreezeManager;->reportNet(IJ)V
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

.method public reportSignal(IIJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "miui.greeze.IGreezeManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lmiui/greeze/IGreezeManager;->reportSignal(IIJ)V
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_32

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_32
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public thawAll(IILjava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "miui.greeze.IGreezeManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_36

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lmiui/greeze/IGreezeManager;->thawAll(IILjava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_4e

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_4e

    move-object v2, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v2

    :catchall_4e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public thawPids([IILjava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "miui.greeze.IGreezeManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_35

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    if-eqz v3, :cond_35

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lmiui/greeze/IGreezeManager;->thawPids([IILjava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_4d

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_4d

    move-object v2, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v2

    :catchall_4d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public thawUids([IILjava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "miui.greeze.IGreezeManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_36

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-static {}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeManager;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lmiui/greeze/IGreezeManager;->thawUids([IILjava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_4e

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_4e

    move-object v2, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v2

    :catchall_4e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
