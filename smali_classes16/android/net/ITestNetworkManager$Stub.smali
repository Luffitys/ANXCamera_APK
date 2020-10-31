.class public abstract Landroid/net/ITestNetworkManager$Stub;
.super Landroid/os/Binder;
.source "ITestNetworkManager.java"

# interfaces
.implements Landroid/net/ITestNetworkManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ITestNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ITestNetworkManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.ITestNetworkManager"

.field static final TRANSACTION_createTapInterface:I = 0x2

.field static final TRANSACTION_createTunInterface:I = 0x1

.field static final TRANSACTION_setupTestNetwork:I = 0x3

.field static final TRANSACTION_teardownTestNetwork:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.ITestNetworkManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/ITestNetworkManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ITestNetworkManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.net.ITestNetworkManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/ITestNetworkManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/net/ITestNetworkManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/net/ITestNetworkManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/ITestNetworkManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/ITestNetworkManager;
    .registers 1

    sget-object v0, Landroid/net/ITestNetworkManager$Stub$Proxy;->sDefaultImpl:Landroid/net/ITestNetworkManager;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    const-string/jumbo v0, "teardownTestNetwork"

    return-object v0

    :cond_12
    const-string/jumbo v0, "setupTestNetwork"

    return-object v0

    :cond_16
    const-string v0, "createTapInterface"

    return-object v0

    :cond_19
    const-string v0, "createTunInterface"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/ITestNetworkManager;)Z
    .registers 3

    sget-object v0, Landroid/net/ITestNetworkManager$Stub$Proxy;->sDefaultImpl:Landroid/net/ITestNetworkManager;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/net/ITestNetworkManager$Stub$Proxy;->sDefaultImpl:Landroid/net/ITestNetworkManager;

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

    invoke-static {p1}, Landroid/net/ITestNetworkManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.net.ITestNetworkManager"

    const/4 v0, 0x0

    const/4 v11, 0x1

    if-eq v7, v11, :cond_81

    const/4 v1, 0x2

    if-eq v7, v1, :cond_6a

    const/4 v1, 0x3

    if-eq v7, v1, :cond_33

    const/4 v0, 0x4

    if-eq v7, v0, :cond_25

    const v0, 0x5f4e5446

    if-eq v7, v0, :cond_21

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_21
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :cond_25
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/net/ITestNetworkManager$Stub;->teardownTestNetwork(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :cond_33
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4a

    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    move-object v13, v1

    goto :goto_4c

    :cond_4a
    const/4 v1, 0x0

    move-object v13, v1

    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_54

    move v3, v11

    goto :goto_55

    :cond_54
    move v3, v0

    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/net/ITestNetworkManager$Stub;->setupTestNetwork(Ljava/lang/String;Landroid/net/LinkProperties;Z[ILandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :cond_6a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/ITestNetworkManager$Stub;->createTapInterface()Landroid/net/TestNetworkInterface;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_7d

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v9, v11}, Landroid/net/TestNetworkInterface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_80

    :cond_7d
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_80
    return v11

    :cond_81
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/LinkAddress;

    invoke-virtual {v6, v1}, Landroid/net/ITestNetworkManager$Stub;->createTunInterface([Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_9c

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/net/TestNetworkInterface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9f

    :cond_9c
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9f
    return v11
.end method
