.class Landroid/net/IConnectivityDiagnosticsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IConnectivityDiagnosticsCallback.java"

# interfaces
.implements Landroid/net/IConnectivityDiagnosticsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityDiagnosticsCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/IConnectivityDiagnosticsCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/IConnectivityDiagnosticsCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/net/IConnectivityDiagnosticsCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.net.IConnectivityDiagnosticsCallback"

    return-object v0
.end method

.method public onConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.net.IConnectivityDiagnosticsCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v1}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    iget-object v1, p0, Landroid/net/IConnectivityDiagnosticsCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;->getDefaultImpl()Landroid/net/IConnectivityDiagnosticsCallback;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-static {}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;->getDefaultImpl()Landroid/net/IConnectivityDiagnosticsCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/IConnectivityDiagnosticsCallback;->onConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_36

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onDataStallSuspected(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.net.IConnectivityDiagnosticsCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    iget-object v2, p0, Landroid/net/IConnectivityDiagnosticsCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-static {}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;->getDefaultImpl()Landroid/net/IConnectivityDiagnosticsCallback;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-static {}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;->getDefaultImpl()Landroid/net/IConnectivityDiagnosticsCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/IConnectivityDiagnosticsCallback;->onDataStallSuspected(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_37

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onNetworkConnectivityReported(Landroid/net/Network;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.net.IConnectivityDiagnosticsCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    if-eqz p2, :cond_1a

    move v2, v1

    :cond_1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/net/IConnectivityDiagnosticsCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-static {}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;->getDefaultImpl()Landroid/net/IConnectivityDiagnosticsCallback;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-static {}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;->getDefaultImpl()Landroid/net/IConnectivityDiagnosticsCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/IConnectivityDiagnosticsCallback;->onNetworkConnectivityReported(Landroid/net/Network;Z)V
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_3d

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
