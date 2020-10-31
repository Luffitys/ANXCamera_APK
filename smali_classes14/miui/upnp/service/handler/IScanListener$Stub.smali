.class public abstract Lmiui/upnp/service/handler/IScanListener$Stub;
.super Landroid/os/Binder;
.source "IScanListener.java"

# interfaces
.implements Lmiui/upnp/service/handler/IScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/service/handler/IScanListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/service/handler/IScanListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.upnp.service.handler.IScanListener"

.field static final TRANSACTION_onDeviceFound:I = 0x1

.field static final TRANSACTION_onDeviceLost:I = 0x2

.field static final TRANSACTION_onDeviceUpdate:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.upnp.service.handler.IScanListener"

    invoke-virtual {p0, p0, v0}, Lmiui/upnp/service/handler/IScanListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/IScanListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.upnp.service.handler.IScanListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/upnp/service/handler/IScanListener;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/upnp/service/handler/IScanListener;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/upnp/service/handler/IScanListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/upnp/service/handler/IScanListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/upnp/service/handler/IScanListener;
    .registers 1

    sget-object v0, Lmiui/upnp/service/handler/IScanListener$Stub$Proxy;->sDefaultImpl:Lmiui/upnp/service/handler/IScanListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lmiui/upnp/service/handler/IScanListener;)Z
    .registers 3

    sget-object v0, Lmiui/upnp/service/handler/IScanListener$Stub$Proxy;->sDefaultImpl:Lmiui/upnp/service/handler/IScanListener;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/upnp/service/handler/IScanListener$Stub$Proxy;->sDefaultImpl:Lmiui/upnp/service/handler/IScanListener;

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
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "miui.upnp.service.handler.IScanListener"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4d

    const/4 v2, 0x2

    if-eq p1, v2, :cond_33

    const/4 v2, 0x3

    if-eq p1, v2, :cond_19

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_15

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2b

    sget-object v2, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    invoke-virtual {p0, v2}, Lmiui/upnp/service/handler/IScanListener$Stub;->onDeviceUpdate(Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_33
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_45

    sget-object v2, Lmiui/upnp/typedef/device/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/device/Device;

    goto :goto_46

    :cond_45
    const/4 v2, 0x0

    :goto_46
    invoke-virtual {p0, v2}, Lmiui/upnp/service/handler/IScanListener$Stub;->onDeviceLost(Lmiui/upnp/typedef/device/Device;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_4d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5f

    sget-object v2, Lmiui/upnp/typedef/device/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/device/Device;

    goto :goto_60

    :cond_5f
    const/4 v2, 0x0

    :goto_60
    invoke-virtual {p0, v2}, Lmiui/upnp/service/handler/IScanListener$Stub;->onDeviceFound(Lmiui/upnp/typedef/device/Device;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
