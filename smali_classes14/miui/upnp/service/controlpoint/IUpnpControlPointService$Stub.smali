.class public abstract Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;
.super Landroid/os/Binder;
.source "IUpnpControlPointService.java"

# interfaces
.implements Lmiui/upnp/service/controlpoint/IUpnpControlPointService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/service/controlpoint/IUpnpControlPointService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.upnp.service.controlpoint.IUpnpControlPointService"

.field static final TRANSACTION_invoke:I = 0x5

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_startScan:I = 0x3

.field static final TRANSACTION_stop:I = 0x2

.field static final TRANSACTION_stopScan:I = 0x4

.field static final TRANSACTION_subscribe:I = 0x6

.field static final TRANSACTION_unsubscribe:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.upnp.service.controlpoint.IUpnpControlPointService"

    invoke-virtual {p0, p0, v0}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/controlpoint/IUpnpControlPointService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "miui.upnp.service.controlpoint.IUpnpControlPointService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    return-object v1

    :cond_14
    new-instance v1, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/upnp/service/controlpoint/IUpnpControlPointService;
    .registers 1

    sget-object v0, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub$Proxy;->sDefaultImpl:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    return-object v0
.end method

.method public static setDefaultImpl(Lmiui/upnp/service/controlpoint/IUpnpControlPointService;)Z
    .registers 3

    sget-object v0, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub$Proxy;->sDefaultImpl:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub$Proxy;->sDefaultImpl:Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

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

    const-string v0, "miui.upnp.service.controlpoint.IUpnpControlPointService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_c4

    packed-switch p1, :pswitch_data_c8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/upnp/service/handler/ICompletionHandler$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/ICompletionHandler;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;->unsubscribe(Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;Lmiui/upnp/service/handler/ICompletionHandler;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_32
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_44

    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/upnp/service/handler/ISubscribeCompletionHandler$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/ISubscribeCompletionHandler;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/upnp/service/handler/IEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/IEventListener;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;->subscribe(Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;Lmiui/upnp/service/handler/ISubscribeCompletionHandler;Lmiui/upnp/service/handler/IEventListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6e

    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/invocation/ActionInfo;

    goto :goto_6f

    :cond_6e
    const/4 v1, 0x0

    :goto_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/upnp/service/handler/IInvokeCompletionHandler$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/IInvokeCompletionHandler;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;->invoke(Lmiui/upnp/typedef/device/invocation/ActionInfo;Lmiui/upnp/service/handler/IInvokeCompletionHandler;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_7e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/upnp/service/handler/ICompletionHandler$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/ICompletionHandler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;->stopScan(Lmiui/upnp/service/handler/ICompletionHandler;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Lmiui/upnp/typedef/device/urn/Urn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/upnp/service/handler/ICompletionHandler$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/ICompletionHandler;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/upnp/service/handler/IScanListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/IScanListener;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;->startScan(Ljava/util/List;Lmiui/upnp/service/handler/ICompletionHandler;Lmiui/upnp/service/handler/IScanListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_b0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;->stop()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_ba
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;->start()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_c4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_ba
        :pswitch_b0
        :pswitch_90
        :pswitch_7e
        :pswitch_5c
        :pswitch_32
        :pswitch_10
    .end packed-switch
.end method
