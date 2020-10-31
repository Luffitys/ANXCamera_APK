.class public abstract Landroid/net/IConnectivityDiagnosticsCallback$Stub;
.super Landroid/os/Binder;
.source "IConnectivityDiagnosticsCallback.java"

# interfaces
.implements Landroid/net/IConnectivityDiagnosticsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityDiagnosticsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityDiagnosticsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityDiagnosticsCallback"

.field static final TRANSACTION_onConnectivityReportAvailable:I = 0x1

.field static final TRANSACTION_onDataStallSuspected:I = 0x2

.field static final TRANSACTION_onNetworkConnectivityReported:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.IConnectivityDiagnosticsCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityDiagnosticsCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.net.IConnectivityDiagnosticsCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IConnectivityDiagnosticsCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/net/IConnectivityDiagnosticsCallback;

    return-object v1

    :cond_14
    new-instance v1, Landroid/net/IConnectivityDiagnosticsCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IConnectivityDiagnosticsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/IConnectivityDiagnosticsCallback;
    .registers 1

    sget-object v0, Landroid/net/IConnectivityDiagnosticsCallback$Stub$Proxy;->sDefaultImpl:Landroid/net/IConnectivityDiagnosticsCallback;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    const-string/jumbo v0, "onNetworkConnectivityReported"

    return-object v0

    :cond_f
    const-string/jumbo v0, "onDataStallSuspected"

    return-object v0

    :cond_13
    const-string/jumbo v0, "onConnectivityReportAvailable"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/IConnectivityDiagnosticsCallback;)Z
    .registers 3

    sget-object v0, Landroid/net/IConnectivityDiagnosticsCallback$Stub$Proxy;->sDefaultImpl:Landroid/net/IConnectivityDiagnosticsCallback;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/net/IConnectivityDiagnosticsCallback$Stub$Proxy;->sDefaultImpl:Landroid/net/IConnectivityDiagnosticsCallback;

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

    invoke-static {p1}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.net.IConnectivityDiagnosticsCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_50

    const/4 v2, 0x2

    if-eq p1, v2, :cond_39

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

    sget-object v2, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_34

    move v3, v1

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    :goto_35
    invoke-virtual {p0, v2, v3}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;->onNetworkConnectivityReported(Landroid/net/Network;Z)V

    return v1

    :cond_39
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4b

    sget-object v2, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;->onDataStallSuspected(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V

    return v1

    :cond_50
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_62

    sget-object v2, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    goto :goto_63

    :cond_62
    const/4 v2, 0x0

    :goto_63
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;->onConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V

    return v1
.end method
