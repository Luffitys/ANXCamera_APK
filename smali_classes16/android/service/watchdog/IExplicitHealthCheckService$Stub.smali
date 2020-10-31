.class public abstract Landroid/service/watchdog/IExplicitHealthCheckService$Stub;
.super Landroid/os/Binder;
.source "IExplicitHealthCheckService.java"

# interfaces
.implements Landroid/service/watchdog/IExplicitHealthCheckService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/watchdog/IExplicitHealthCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/watchdog/IExplicitHealthCheckService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.watchdog.IExplicitHealthCheckService"

.field static final TRANSACTION_cancel:I = 0x3

.field static final TRANSACTION_getRequestedPackages:I = 0x5

.field static final TRANSACTION_getSupportedPackages:I = 0x4

.field static final TRANSACTION_request:I = 0x2

.field static final TRANSACTION_setCallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.watchdog.IExplicitHealthCheckService"

    invoke-virtual {p0, p0, v0}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/watchdog/IExplicitHealthCheckService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.service.watchdog.IExplicitHealthCheckService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/watchdog/IExplicitHealthCheckService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/service/watchdog/IExplicitHealthCheckService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/service/watchdog/IExplicitHealthCheckService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/service/watchdog/IExplicitHealthCheckService;
    .registers 1

    sget-object v0, Landroid/service/watchdog/IExplicitHealthCheckService$Stub$Proxy;->sDefaultImpl:Landroid/service/watchdog/IExplicitHealthCheckService;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_17

    const/4 v0, 0x4

    if-eq p0, v0, :cond_14

    const/4 v0, 0x5

    if-eq p0, v0, :cond_11

    const/4 v0, 0x0

    return-object v0

    :cond_11
    const-string v0, "getRequestedPackages"

    return-object v0

    :cond_14
    const-string v0, "getSupportedPackages"

    return-object v0

    :cond_17
    const-string v0, "cancel"

    return-object v0

    :cond_1a
    const-string/jumbo v0, "request"

    return-object v0

    :cond_1e
    const-string/jumbo v0, "setCallback"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/service/watchdog/IExplicitHealthCheckService;)Z
    .registers 3

    sget-object v0, Landroid/service/watchdog/IExplicitHealthCheckService$Stub$Proxy;->sDefaultImpl:Landroid/service/watchdog/IExplicitHealthCheckService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/service/watchdog/IExplicitHealthCheckService$Stub$Proxy;->sDefaultImpl:Landroid/service/watchdog/IExplicitHealthCheckService;

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

    invoke-static {p1}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.service.watchdog.IExplicitHealthCheckService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_63

    const/4 v2, 0x2

    if-eq p1, v2, :cond_58

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4d

    const/4 v2, 0x4

    if-eq p1, v2, :cond_36

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

    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    :goto_32
    invoke-virtual {p0, v2}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;->getRequestedPackages(Landroid/os/RemoteCallback;)V

    return v1

    :cond_36
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_48

    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    :goto_49
    invoke-virtual {p0, v2}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;->getSupportedPackages(Landroid/os/RemoteCallback;)V

    return v1

    :cond_4d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;->cancel(Ljava/lang/String;)V

    return v1

    :cond_58
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;->request(Ljava/lang/String;)V

    return v1

    :cond_63
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_75

    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    goto :goto_76

    :cond_75
    const/4 v2, 0x0

    :goto_76
    invoke-virtual {p0, v2}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;->setCallback(Landroid/os/RemoteCallback;)V

    return v1
.end method
