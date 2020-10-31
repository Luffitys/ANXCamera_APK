.class public abstract Landroid/hardware/ICameraServiceProxy$Stub;
.super Landroid/os/Binder;
.source "ICameraServiceProxy.java"

# interfaces
.implements Landroid/hardware/ICameraServiceProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraServiceProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.ICameraServiceProxy"

.field static final TRANSACTION_notifyCameraState:I = 0x2

.field static final TRANSACTION_pingForUserUpdate:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.ICameraServiceProxy"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ICameraServiceProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceProxy;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.hardware.ICameraServiceProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/ICameraServiceProxy;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/ICameraServiceProxy;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/ICameraServiceProxy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ICameraServiceProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/hardware/ICameraServiceProxy;
    .registers 1

    sget-object v0, Landroid/hardware/ICameraServiceProxy$Stub$Proxy;->sDefaultImpl:Landroid/hardware/ICameraServiceProxy;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const-string v0, "notifyCameraState"

    return-object v0

    :cond_b
    const-string/jumbo v0, "pingForUserUpdate"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/hardware/ICameraServiceProxy;)Z
    .registers 3

    sget-object v0, Landroid/hardware/ICameraServiceProxy$Stub$Proxy;->sDefaultImpl:Landroid/hardware/ICameraServiceProxy;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/hardware/ICameraServiceProxy$Stub$Proxy;->sDefaultImpl:Landroid/hardware/ICameraServiceProxy;

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

    invoke-static {p1}, Landroid/hardware/ICameraServiceProxy$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "android.hardware.ICameraServiceProxy"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_40

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1c

    const v4, 0x5f4e5446

    if-eq v0, v4, :cond_16

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :cond_16
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :cond_1c
    move-object/from16 v4, p3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v5, p0

    move-object v6, v11

    move v7, v12

    move v8, v13

    move-object v9, v14

    move v10, v15

    invoke-virtual/range {v5 .. v10}, Landroid/hardware/ICameraServiceProxy$Stub;->notifyCameraState(Ljava/lang/String;IILjava/lang/String;I)V

    return v3

    :cond_40
    move-object/from16 v4, p3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ICameraServiceProxy$Stub;->pingForUserUpdate()V

    return v3
.end method
