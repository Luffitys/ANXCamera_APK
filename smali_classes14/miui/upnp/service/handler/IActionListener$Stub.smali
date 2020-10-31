.class public abstract Lmiui/upnp/service/handler/IActionListener$Stub;
.super Landroid/os/Binder;
.source "IActionListener.java"

# interfaces
.implements Lmiui/upnp/service/handler/IActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/service/handler/IActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/service/handler/IActionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.upnp.service.handler.IActionListener"

.field static final TRANSACTION_onAction:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.upnp.service.handler.IActionListener"

    invoke-virtual {p0, p0, v0}, Lmiui/upnp/service/handler/IActionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/IActionListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.upnp.service.handler.IActionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/upnp/service/handler/IActionListener;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/upnp/service/handler/IActionListener;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/upnp/service/handler/IActionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/upnp/service/handler/IActionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/upnp/service/handler/IActionListener;
    .registers 1

    sget-object v0, Lmiui/upnp/service/handler/IActionListener$Stub$Proxy;->sDefaultImpl:Lmiui/upnp/service/handler/IActionListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lmiui/upnp/service/handler/IActionListener;)Z
    .registers 3

    sget-object v0, Lmiui/upnp/service/handler/IActionListener$Stub$Proxy;->sDefaultImpl:Lmiui/upnp/service/handler/IActionListener;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/upnp/service/handler/IActionListener$Stub$Proxy;->sDefaultImpl:Lmiui/upnp/service/handler/IActionListener;

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

    const-string v0, "miui.upnp.service.handler.IActionListener"

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

    if-eqz v2, :cond_25

    sget-object v2, Lmiui/upnp/typedef/device/invocation/ActionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/device/invocation/ActionInfo;

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    invoke-virtual {p0, v2}, Lmiui/upnp/service/handler/IActionListener$Stub;->onAction(Lmiui/upnp/typedef/device/invocation/ActionInfo;)Lmiui/upnp/typedef/error/UpnpError;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x0

    if-eqz v3, :cond_37

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v1}, Lmiui/upnp/typedef/error/UpnpError;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3a

    :cond_37
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3a
    if-eqz v2, :cond_43

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Lmiui/upnp/typedef/device/invocation/ActionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_46

    :cond_43
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_46
    return v1
.end method
