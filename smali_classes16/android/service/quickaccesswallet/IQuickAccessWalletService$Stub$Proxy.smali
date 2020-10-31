.class Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IQuickAccessWalletService.java"

# interfaces
.implements Landroid/service/quickaccesswallet/IQuickAccessWalletService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/service/quickaccesswallet/IQuickAccessWalletService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletService"

    return-object v0
.end method

.method public onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.quickaccesswallet.IQuickAccessWalletService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/service/quickaccesswallet/SelectWalletCardRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    iget-object v2, p0, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-static {}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->getDefaultImpl()Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-static {}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->getDefaultImpl()Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
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

.method public onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.quickaccesswallet.IQuickAccessWalletService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v1}, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    const/4 v1, 0x0

    if-eqz p2, :cond_1f

    invoke-interface {p2}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_20

    :cond_1f
    move-object v3, v1

    :goto_20
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v3, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-static {}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->getDefaultImpl()Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-static {}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->getDefaultImpl()Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_41

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_41
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onWalletDismissed()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.quickaccesswallet.IQuickAccessWalletService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->getDefaultImpl()Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->getDefaultImpl()Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->onWalletDismissed()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public registerWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.quickaccesswallet.IQuickAccessWalletService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    const/4 v2, 0x0

    if-eqz p2, :cond_1f

    invoke-interface {p2}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_20

    :cond_1f
    move-object v3, v2

    :goto_20
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-static {}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->getDefaultImpl()Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    move-result-object v2

    if-eqz v2, :cond_3d

    invoke-static {}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->getDefaultImpl()Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->registerWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_42

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_42
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public unregisterWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.quickaccesswallet.IQuickAccessWalletService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    iget-object v2, p0, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-static {}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->getDefaultImpl()Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-static {}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->getDefaultImpl()Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->unregisterWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
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
