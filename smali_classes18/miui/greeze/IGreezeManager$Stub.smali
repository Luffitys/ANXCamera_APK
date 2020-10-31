.class public abstract Lmiui/greeze/IGreezeManager$Stub;
.super Landroid/os/Binder;
.source "IGreezeManager.java"

# interfaces
.implements Lmiui/greeze/IGreezeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/greeze/IGreezeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/greeze/IGreezeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.greeze.IGreezeManager"

.field static final TRANSACTION_freezePids:I = 0x5

.field static final TRANSACTION_freezeUids:I = 0x6

.field static final TRANSACTION_getFrozenPids:I = 0xa

.field static final TRANSACTION_getFrozenUids:I = 0xe

.field static final TRANSACTION_getLastThawedTime:I = 0x10

.field static final TRANSACTION_isUidActive:I = 0xb

.field static final TRANSACTION_isUidFrozen:I = 0x11

.field static final TRANSACTION_registerCallback:I = 0xf

.field static final TRANSACTION_registerMonitor:I = 0xc

.field static final TRANSACTION_reportBinderState:I = 0x4

.field static final TRANSACTION_reportBinderTrans:I = 0x3

.field static final TRANSACTION_reportLoopOnce:I = 0xd

.field static final TRANSACTION_reportNet:I = 0x2

.field static final TRANSACTION_reportSignal:I = 0x1

.field static final TRANSACTION_thawAll:I = 0x9

.field static final TRANSACTION_thawPids:I = 0x7

.field static final TRANSACTION_thawUids:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.greeze.IGreezeManager"

    invoke-virtual {p0, p0, v0}, Lmiui/greeze/IGreezeManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/greeze/IGreezeManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.greeze.IGreezeManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/greeze/IGreezeManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/greeze/IGreezeManager;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/greeze/IGreezeManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/greeze/IGreezeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/greeze/IGreezeManager;
    .registers 1

    sget-object v0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->sDefaultImpl:Lmiui/greeze/IGreezeManager;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_38

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string v0, "isUidFrozen"

    return-object v0

    :pswitch_8
    const-string v0, "getLastThawedTime"

    return-object v0

    :pswitch_b
    const-string v0, "registerCallback"

    return-object v0

    :pswitch_e
    const-string v0, "getFrozenUids"

    return-object v0

    :pswitch_11
    const-string v0, "reportLoopOnce"

    return-object v0

    :pswitch_14
    const-string v0, "registerMonitor"

    return-object v0

    :pswitch_17
    const-string v0, "isUidActive"

    return-object v0

    :pswitch_1a
    const-string v0, "getFrozenPids"

    return-object v0

    :pswitch_1d
    const-string v0, "thawAll"

    return-object v0

    :pswitch_20
    const-string v0, "thawUids"

    return-object v0

    :pswitch_23
    const-string v0, "thawPids"

    return-object v0

    :pswitch_26
    const-string v0, "freezeUids"

    return-object v0

    :pswitch_29
    const-string v0, "freezePids"

    return-object v0

    :pswitch_2c
    const-string v0, "reportBinderState"

    return-object v0

    :pswitch_2f
    const-string v0, "reportBinderTrans"

    return-object v0

    :pswitch_32
    const-string v0, "reportNet"

    return-object v0

    :pswitch_35
    const-string v0, "reportSignal"

    return-object v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Lmiui/greeze/IGreezeManager;)Z
    .registers 3

    sget-object v0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->sDefaultImpl:Lmiui/greeze/IGreezeManager;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/greeze/IGreezeManager$Stub$Proxy;->sDefaultImpl:Lmiui/greeze/IGreezeManager;

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

    invoke-static {p1}, Lmiui/greeze/IGreezeManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "miui.greeze.IGreezeManager"

    const v0, 0x5f4e5446

    const/4 v15, 0x1

    if-eq v11, v0, :cond_1d6

    const/4 v0, 0x0

    packed-switch v11, :pswitch_data_1da

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_19
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10, v0}, Lmiui/greeze/IGreezeManager$Stub;->isUidFrozen(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_2b
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Lmiui/greeze/IGreezeManager$Stub;->getLastThawedTime(II)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v15

    :pswitch_41
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/greeze/IGreezeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/greeze/IGreezeCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Lmiui/greeze/IGreezeManager$Stub;->registerCallback(Lmiui/greeze/IGreezeCallback;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_5b
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10, v0}, Lmiui/greeze/IGreezeManager$Stub;->getFrozenUids(I)[I

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v15

    :pswitch_6d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/greeze/IGreezeManager$Stub;->reportLoopOnce()V

    return v15

    :pswitch_74
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/greeze/IMonitorToken$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/greeze/IMonitorToken;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Lmiui/greeze/IGreezeManager$Stub;->registerMonitor(Lmiui/greeze/IMonitorToken;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_8e
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10, v0}, Lmiui/greeze/IGreezeManager$Stub;->isUidActive(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_a0
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10, v0}, Lmiui/greeze/IGreezeManager$Stub;->getFrozenPids(I)[I

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v15

    :pswitch_b2
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v1, v2}, Lmiui/greeze/IGreezeManager$Stub;->thawAll(IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return v15

    :pswitch_cc
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v1, v2}, Lmiui/greeze/IGreezeManager$Stub;->thawUids([IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return v15

    :pswitch_e6
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v1, v2}, Lmiui/greeze/IGreezeManager$Stub;->thawPids([IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return v15

    :pswitch_100
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11b

    move v6, v15

    goto :goto_11c

    :cond_11b
    move v6, v0

    :goto_11c
    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v8

    move/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lmiui/greeze/IGreezeManager$Stub;->freezeUids([IJILjava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return v15

    :pswitch_12f
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lmiui/greeze/IGreezeManager$Stub;->freezePids([IJILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return v15

    :pswitch_154
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lmiui/greeze/IGreezeManager$Stub;->reportBinderState(IIIIJ)V

    return v15

    :pswitch_178
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_197

    move v6, v15

    goto :goto_198

    :cond_197
    move v6, v0

    :goto_198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move-wide/from16 v7, v21

    move/from16 v9, v23

    invoke-virtual/range {v0 .. v9}, Lmiui/greeze/IGreezeManager$Stub;->reportBinderTrans(IIIIIZJI)V

    return v15

    :pswitch_1b4
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v10, v0, v1, v2}, Lmiui/greeze/IGreezeManager$Stub;->reportNet(IJ)V

    return v15

    :pswitch_1c3
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v10, v0, v1, v2, v3}, Lmiui/greeze/IGreezeManager$Stub;->reportSignal(IIJ)V

    return v15

    :cond_1d6
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    :pswitch_data_1da
    .packed-switch 0x1
        :pswitch_1c3
        :pswitch_1b4
        :pswitch_178
        :pswitch_154
        :pswitch_12f
        :pswitch_100
        :pswitch_e6
        :pswitch_cc
        :pswitch_b2
        :pswitch_a0
        :pswitch_8e
        :pswitch_74
        :pswitch_6d
        :pswitch_5b
        :pswitch_41
        :pswitch_2b
        :pswitch_19
    .end packed-switch
.end method
