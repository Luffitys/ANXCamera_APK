.class public abstract Landroid/hardware/ISerialManager$Stub;
.super Landroid/os/Binder;
.source "ISerialManager.java"

# interfaces
.implements Landroid/hardware/ISerialManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ISerialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ISerialManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.ISerialManager"

.field static final TRANSACTION_getSerialPorts:I = 0x1

.field static final TRANSACTION_openSerialPort:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.ISerialManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ISerialManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/ISerialManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.hardware.ISerialManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/ISerialManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/ISerialManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/ISerialManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ISerialManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/hardware/ISerialManager;
    .registers 1

    sget-object v0, Landroid/hardware/ISerialManager$Stub$Proxy;->sDefaultImpl:Landroid/hardware/ISerialManager;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const-string/jumbo v0, "openSerialPort"

    return-object v0

    :cond_c
    const-string v0, "getSerialPorts"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/hardware/ISerialManager;)Z
    .registers 3

    sget-object v0, Landroid/hardware/ISerialManager$Stub$Proxy;->sDefaultImpl:Landroid/hardware/ISerialManager;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/hardware/ISerialManager$Stub$Proxy;->sDefaultImpl:Landroid/hardware/ISerialManager;

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

    invoke-static {p1}, Landroid/hardware/ISerialManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.ISerialManager"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_32

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_12

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/hardware/ISerialManager$Stub;->openSerialPort(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2d

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_31

    :cond_2d
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_31
    return v1

    :cond_32
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/ISerialManager$Stub;->getSerialPorts()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v1
.end method
