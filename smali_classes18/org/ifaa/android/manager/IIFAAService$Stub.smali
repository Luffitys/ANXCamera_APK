.class public abstract Lorg/ifaa/android/manager/IIFAAService$Stub;
.super Landroid/os/Binder;
.source "IIFAAService.java"

# interfaces
.implements Lorg/ifaa/android/manager/IIFAAService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/android/manager/IIFAAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ifaa/android/manager/IIFAAService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.ifaa.android.manager.IIFAAService"

.field static final TRANSACTION_faceAuthenticate_v2:I = 0x5

.field static final TRANSACTION_faceCancel_v2:I = 0x6

.field static final TRANSACTION_faceEnroll:I = 0x3

.field static final TRANSACTION_faceGetCellinfo:I = 0x8

.field static final TRANSACTION_faceInvokeCommand:I = 0x7

.field static final TRANSACTION_faceUpgrade:I = 0x4

.field static final TRANSACTION_getIDList:I = 0x2

.field static final TRANSACTION_processCmd_v2:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.ifaa.android.manager.IIFAAService"

    invoke-virtual {p0, p0, v0}, Lorg/ifaa/android/manager/IIFAAService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/ifaa/android/manager/IIFAAService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "org.ifaa.android.manager.IIFAAService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lorg/ifaa/android/manager/IIFAAService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lorg/ifaa/android/manager/IIFAAService;

    return-object v1

    :cond_14
    new-instance v1, Lorg/ifaa/android/manager/IIFAAService$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/ifaa/android/manager/IIFAAService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lorg/ifaa/android/manager/IIFAAService;
    .registers 1

    sget-object v0, Lorg/ifaa/android/manager/IIFAAService$Stub$Proxy;->sDefaultImpl:Lorg/ifaa/android/manager/IIFAAService;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string v0, "faceGetCellinfo"

    return-object v0

    :pswitch_8
    const-string v0, "faceInvokeCommand"

    return-object v0

    :pswitch_b
    const-string v0, "faceCancel_v2"

    return-object v0

    :pswitch_e
    const-string v0, "faceAuthenticate_v2"

    return-object v0

    :pswitch_11
    const-string v0, "faceUpgrade"

    return-object v0

    :pswitch_14
    const-string v0, "faceEnroll"

    return-object v0

    :pswitch_17
    const-string v0, "getIDList"

    return-object v0

    :pswitch_1a
    const-string v0, "processCmd_v2"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
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

.method public static setDefaultImpl(Lorg/ifaa/android/manager/IIFAAService;)Z
    .registers 3

    sget-object v0, Lorg/ifaa/android/manager/IIFAAService$Stub$Proxy;->sDefaultImpl:Lorg/ifaa/android/manager/IIFAAService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lorg/ifaa/android/manager/IIFAAService$Stub$Proxy;->sDefaultImpl:Lorg/ifaa/android/manager/IIFAAService;

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

    invoke-static {p1}, Lorg/ifaa/android/manager/IIFAAService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "org.ifaa.android.manager.IIFAAService"

    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_c4

    packed-switch v7, :pswitch_data_c8

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_18
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/ifaa/android/manager/IIFAAService$Stub;->faceGetCellinfo()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_26
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/ifaa/android/manager/IIFAAService$Stub;->faceInvokeCommand([B)[B

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v11

    :pswitch_38
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/ifaa/android/manager/IIFAAService$Stub;->faceCancel_v2(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_4a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lorg/ifaa/android/manager/IIFAAService$Stub;->faceAuthenticate_v2(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_60
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/ifaa/android/manager/IIFAAService$Stub;->faceUpgrade(ILjava/lang/String;I[BI)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_8a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lorg/ifaa/android/manager/IIFAAService$Stub;->faceEnroll(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_a0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/ifaa/android/manager/IIFAAService$Stub;->getIDList(I)[I

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v11

    :pswitch_b2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/ifaa/android/manager/IIFAAService$Stub;->processCmd_v2([B)[B

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v11

    :cond_c4
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_b2
        :pswitch_a0
        :pswitch_8a
        :pswitch_60
        :pswitch_4a
        :pswitch_38
        :pswitch_26
        :pswitch_18
    .end packed-switch
.end method
