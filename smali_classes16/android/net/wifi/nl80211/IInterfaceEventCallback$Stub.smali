.class public abstract Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;
.super Landroid/os/Binder;
.source "IInterfaceEventCallback.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IInterfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IInterfaceEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.nl80211.IInterfaceEventCallback"

.field static final TRANSACTION_OnApInterfaceReady:I = 0x2

.field static final TRANSACTION_OnApTorndownEvent:I = 0x4

.field static final TRANSACTION_OnClientInterfaceReady:I = 0x1

.field static final TRANSACTION_OnClientTorndownEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.wifi.nl80211.IInterfaceEventCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IInterfaceEventCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.net.wifi.nl80211.IInterfaceEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/nl80211/IInterfaceEventCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/nl80211/IInterfaceEventCallback;

    return-object v1

    :cond_14
    new-instance v1, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/wifi/nl80211/IInterfaceEventCallback;
    .registers 1

    sget-object v0, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub$Proxy;->sDefaultImpl:Landroid/net/wifi/nl80211/IInterfaceEventCallback;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    const-string v0, "OnApTorndownEvent"

    return-object v0

    :cond_11
    const-string v0, "OnClientTorndownEvent"

    return-object v0

    :cond_14
    const-string v0, "OnApInterfaceReady"

    return-object v0

    :cond_17
    const-string v0, "OnClientInterfaceReady"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/wifi/nl80211/IInterfaceEventCallback;)Z
    .registers 3

    sget-object v0, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub$Proxy;->sDefaultImpl:Landroid/net/wifi/nl80211/IInterfaceEventCallback;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub$Proxy;->sDefaultImpl:Landroid/net/wifi/nl80211/IInterfaceEventCallback;

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

    invoke-static {p1}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.net.wifi.nl80211.IInterfaceEventCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_49

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3a

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2b

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1c

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_18

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IApInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->OnApTorndownEvent(Landroid/net/wifi/nl80211/IApInterface;)V

    return v1

    :cond_2b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->OnClientTorndownEvent(Landroid/net/wifi/nl80211/IClientInterface;)V

    return v1

    :cond_3a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IApInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->OnApInterfaceReady(Landroid/net/wifi/nl80211/IApInterface;)V

    return v1

    :cond_49
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->OnClientInterfaceReady(Landroid/net/wifi/nl80211/IClientInterface;)V

    return v1
.end method
