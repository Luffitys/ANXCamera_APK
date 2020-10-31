.class public abstract Lmiui/bluetooth/ble/IScanDeviceCallback$Stub;
.super Landroid/os/Binder;
.source "IScanDeviceCallback.java"

# interfaces
.implements Lmiui/bluetooth/ble/IScanDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/bluetooth/ble/IScanDeviceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/IScanDeviceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.bluetooth.ble.IScanDeviceCallback"

.field static final TRANSACTION_onScanDevice:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.bluetooth.ble.IScanDeviceCallback"

    invoke-virtual {p0, p0, v0}, Lmiui/bluetooth/ble/IScanDeviceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IScanDeviceCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.bluetooth.ble.IScanDeviceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/bluetooth/ble/IScanDeviceCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/bluetooth/ble/IScanDeviceCallback;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/bluetooth/ble/IScanDeviceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/bluetooth/ble/IScanDeviceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/bluetooth/ble/IScanDeviceCallback;
    .registers 1

    sget-object v0, Lmiui/bluetooth/ble/IScanDeviceCallback$Stub$Proxy;->sDefaultImpl:Lmiui/bluetooth/ble/IScanDeviceCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lmiui/bluetooth/ble/IScanDeviceCallback;)Z
    .registers 3

    sget-object v0, Lmiui/bluetooth/ble/IScanDeviceCallback$Stub$Proxy;->sDefaultImpl:Lmiui/bluetooth/ble/IScanDeviceCallback;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/bluetooth/ble/IScanDeviceCallback$Stub$Proxy;->sDefaultImpl:Lmiui/bluetooth/ble/IScanDeviceCallback;

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

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "miui.bluetooth.ble.IScanDeviceCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    :goto_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lmiui/bluetooth/ble/IScanDeviceCallback$Stub;->onScanDevice(ILandroid/bluetooth/BluetoothDevice;I[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
