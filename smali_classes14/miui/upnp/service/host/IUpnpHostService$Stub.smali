.class public abstract Lmiui/upnp/service/host/IUpnpHostService$Stub;
.super Landroid/os/Binder;
.source "IUpnpHostService.java"

# interfaces
.implements Lmiui/upnp/service/host/IUpnpHostService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/service/host/IUpnpHostService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/service/host/IUpnpHostService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.upnp.service.host.IUpnpHostService"

.field static final TRANSACTION_register:I = 0x3

.field static final TRANSACTION_sendEvents:I = 0x5

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_stop:I = 0x2

.field static final TRANSACTION_unregister:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.upnp.service.host.IUpnpHostService"

    invoke-virtual {p0, p0, v0}, Lmiui/upnp/service/host/IUpnpHostService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/host/IUpnpHostService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.upnp.service.host.IUpnpHostService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/upnp/service/host/IUpnpHostService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/upnp/service/host/IUpnpHostService;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/upnp/service/host/IUpnpHostService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/upnp/service/host/IUpnpHostService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/upnp/service/host/IUpnpHostService;
    .registers 1

    sget-object v0, Lmiui/upnp/service/host/IUpnpHostService$Stub$Proxy;->sDefaultImpl:Lmiui/upnp/service/host/IUpnpHostService;

    return-object v0
.end method

.method public static setDefaultImpl(Lmiui/upnp/service/host/IUpnpHostService;)Z
    .registers 3

    sget-object v0, Lmiui/upnp/service/host/IUpnpHostService$Stub$Proxy;->sDefaultImpl:Lmiui/upnp/service/host/IUpnpHostService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/upnp/service/host/IUpnpHostService$Stub$Proxy;->sDefaultImpl:Lmiui/upnp/service/host/IUpnpHostService;

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
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "miui.upnp.service.host.IUpnpHostService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_85

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5b

    const/4 v2, 0x4

    if-eq p1, v2, :cond_39

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1f

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1b

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_31

    sget-object v2, Lmiui/upnp/typedef/device/invocation/EventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/device/invocation/EventInfo;

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    :goto_32
    invoke-virtual {p0, v2}, Lmiui/upnp/service/host/IUpnpHostService$Stub;->sendEvents(Lmiui/upnp/typedef/device/invocation/EventInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_39
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4b

    sget-object v2, Lmiui/upnp/typedef/device/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/device/Device;

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/upnp/service/handler/ICompletionHandler$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/ICompletionHandler;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmiui/upnp/service/host/IUpnpHostService$Stub;->unregister(Lmiui/upnp/typedef/device/Device;Lmiui/upnp/service/handler/ICompletionHandler;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_5b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6d

    sget-object v2, Lmiui/upnp/typedef/device/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/device/Device;

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/upnp/service/handler/ICompletionHandler$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/ICompletionHandler;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/upnp/service/handler/IActionListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/IActionListener;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lmiui/upnp/service/host/IUpnpHostService$Stub;->register(Lmiui/upnp/typedef/device/Device;Lmiui/upnp/service/handler/ICompletionHandler;Lmiui/upnp/service/handler/IActionListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/upnp/service/host/IUpnpHostService$Stub;->stop()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_8f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/upnp/service/host/IUpnpHostService$Stub;->start()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
