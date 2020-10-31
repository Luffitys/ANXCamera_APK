.class public abstract Lmiui/mqsas/IMQSNative$Stub;
.super Landroid/os/Binder;
.source "IMQSNative.java"

# interfaces
.implements Lmiui/mqsas/IMQSNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/IMQSNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/IMQSNative$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.mqsas.IMQSNative"

.field static final TRANSACTION_addPSITriggerCommand:I = 0xd

.field static final TRANSACTION_attachSockFilter:I = 0x2

.field static final TRANSACTION_captureLog:I = 0x1

.field static final TRANSACTION_connectPSIMonitor:I = 0xf

.field static final TRANSACTION_createFileInPersist:I = 0x6

.field static final TRANSACTION_defragDataPartition:I = 0xa

.field static final TRANSACTION_flashDebugPolicy:I = 0xe

.field static final TRANSACTION_getFilesFromPersist:I = 0x9

.field static final TRANSACTION_getFreeFragStats:I = 0x5

.field static final TRANSACTION_getPSISockFd:I = 0xc

.field static final TRANSACTION_getWifiRssi:I = 0x12

.field static final TRANSACTION_readFile:I = 0x8

.field static final TRANSACTION_registerTcpStatusListener:I = 0x10

.field static final TRANSACTION_runCommand:I = 0x4

.field static final TRANSACTION_setCoreFilter:I = 0x3

.field static final TRANSACTION_stopDefrag:I = 0xb

.field static final TRANSACTION_unregisterTcpStatusListener:I = 0x11

.field static final TRANSACTION_writeToPersistFile:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.mqsas.IMQSNative"

    invoke-virtual {p0, p0, v0}, Lmiui/mqsas/IMQSNative$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/mqsas/IMQSNative;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.mqsas.IMQSNative"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/mqsas/IMQSNative;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/mqsas/IMQSNative;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/mqsas/IMQSNative$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/mqsas/IMQSNative$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/mqsas/IMQSNative;
    .registers 1

    sget-object v0, Lmiui/mqsas/IMQSNative$Stub$Proxy;->sDefaultImpl:Lmiui/mqsas/IMQSNative;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_3c

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string v0, "getWifiRssi"

    return-object v0

    :pswitch_8
    const-string v0, "unregisterTcpStatusListener"

    return-object v0

    :pswitch_b
    const-string v0, "registerTcpStatusListener"

    return-object v0

    :pswitch_e
    const-string v0, "connectPSIMonitor"

    return-object v0

    :pswitch_11
    const-string v0, "flashDebugPolicy"

    return-object v0

    :pswitch_14
    const-string v0, "addPSITriggerCommand"

    return-object v0

    :pswitch_17
    const-string v0, "getPSISockFd"

    return-object v0

    :pswitch_1a
    const-string v0, "stopDefrag"

    return-object v0

    :pswitch_1d
    const-string v0, "defragDataPartition"

    return-object v0

    :pswitch_20
    const-string v0, "getFilesFromPersist"

    return-object v0

    :pswitch_23
    const-string v0, "readFile"

    return-object v0

    :pswitch_26
    const-string v0, "writeToPersistFile"

    return-object v0

    :pswitch_29
    const-string v0, "createFileInPersist"

    return-object v0

    :pswitch_2c
    const-string v0, "getFreeFragStats"

    return-object v0

    :pswitch_2f
    const-string v0, "runCommand"

    return-object v0

    :pswitch_32
    const-string v0, "setCoreFilter"

    return-object v0

    :pswitch_35
    const-string v0, "attachSockFilter"

    return-object v0

    :pswitch_38
    const-string v0, "captureLog"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_38
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

.method public static setDefaultImpl(Lmiui/mqsas/IMQSNative;)Z
    .registers 3

    sget-object v0, Lmiui/mqsas/IMQSNative$Stub$Proxy;->sDefaultImpl:Lmiui/mqsas/IMQSNative;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/mqsas/IMQSNative$Stub$Proxy;->sDefaultImpl:Lmiui/mqsas/IMQSNative;

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

    invoke-static {p1}, Lmiui/mqsas/IMQSNative$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v15, "miui.mqsas.IMQSNative"

    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v12, v0, :cond_1e8

    const/4 v9, 0x0

    packed-switch v12, :pswitch_data_1ee

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_19
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lmiui/mqsas/IMQSNative$Stub;->getWifiRssi(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_2f
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/mqsas/ITcpStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/mqsas/ITcpStatusListener;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lmiui/mqsas/IMQSNative$Stub;->unregisterTcpStatusListener(ILmiui/mqsas/ITcpStatusListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_45
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/mqsas/ITcpStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/mqsas/ITcpStatusListener;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lmiui/mqsas/IMQSNative$Stub;->registerTcpStatusListener(ILmiui/mqsas/ITcpStatusListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_5b
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lmiui/mqsas/IMQSNative$Stub;->connectPSIMonitor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_72

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v14, v10}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_75

    :cond_72
    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_75
    return v10

    :pswitch_76
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v11, v0}, Lmiui/mqsas/IMQSNative$Stub;->flashDebugPolicy(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_84
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v0, v1, v2}, Lmiui/mqsas/IMQSNative$Stub;->addPSITriggerCommand(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_9a
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSNative$Stub;->getPSISockFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_ad

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v14, v10}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b0

    :cond_ad
    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b0
    return v10

    :pswitch_b1
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSNative$Stub;->stopDefrag()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_bb
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSNative$Stub;->defragDataPartition()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_c5
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSNative$Stub;->getFilesFromPersist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_d3
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lmiui/mqsas/IMQSNative$Stub;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_e5
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lmiui/mqsas/IMQSNative$Stub;->writeToPersistFile(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_f7
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lmiui/mqsas/IMQSNative$Stub;->createFileInPersist(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_109
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSNative$Stub;->getFreeFragStats()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_117
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v11, v0, v1, v2}, Lmiui/mqsas/IMQSNative$Stub;->runCommand(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_131
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13f

    move v9, v10

    :cond_13f
    move v1, v9

    invoke-virtual {v11, v0, v1}, Lmiui/mqsas/IMQSNative$Stub;->setCoreFilter(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_147
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    move v11, v9

    move/from16 v9, v24

    move v11, v10

    move-object/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Lmiui/mqsas/IMQSNative$Stub;->attachSockFilter(Ljava/lang/String;Ljava/lang/String;IIIII[BILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_19a

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v14, v11}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_19e

    :cond_19a
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_19e
    return v11

    :pswitch_19f
    move v1, v9

    move v11, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1bc

    move v5, v11

    goto :goto_1bd

    :cond_1bc
    move v5, v1

    :goto_1bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c9

    move v7, v11

    goto :goto_1ca

    :cond_1c9
    move v7, v1

    :goto_1ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v6, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Lmiui/mqsas/IMQSNative$Stub;->captureLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZIZLjava/lang/String;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :cond_1e8
    move v11, v10

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    nop

    :pswitch_data_1ee
    .packed-switch 0x1
        :pswitch_19f
        :pswitch_147
        :pswitch_131
        :pswitch_117
        :pswitch_109
        :pswitch_f7
        :pswitch_e5
        :pswitch_d3
        :pswitch_c5
        :pswitch_bb
        :pswitch_b1
        :pswitch_9a
        :pswitch_84
        :pswitch_76
        :pswitch_5b
        :pswitch_45
        :pswitch_2f
        :pswitch_19
    .end packed-switch
.end method
