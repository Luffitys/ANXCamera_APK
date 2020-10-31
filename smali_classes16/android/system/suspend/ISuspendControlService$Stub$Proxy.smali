.class Landroid/system/suspend/ISuspendControlService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISuspendControlService.java"

# interfaces
.implements Landroid/system/suspend/ISuspendControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/suspend/ISuspendControlService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/system/suspend/ISuspendControlService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/system/suspend/ISuspendControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/system/suspend/ISuspendControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public enableAutosuspend()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    # getter for: Landroid/system/suspend/ISuspendControlService$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/system/suspend/ISuspendControlService$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/system/suspend/ISuspendControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-static {}, Landroid/system/suspend/ISuspendControlService$Stub;->getDefaultImpl()Landroid/system/suspend/ISuspendControlService;

    move-result-object v5

    if-eqz v5, :cond_2e

    invoke-static {}, Landroid/system/suspend/ISuspendControlService$Stub;->getDefaultImpl()Landroid/system/suspend/ISuspendControlService;

    move-result-object v3

    invoke-interface {v3}, Landroid/system/suspend/ISuspendControlService;->enableAutosuspend()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_41

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_41

    if-eqz v5, :cond_38

    move v3, v4

    :cond_38
    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public forceSuspend()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    # getter for: Landroid/system/suspend/ISuspendControlService$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/system/suspend/ISuspendControlService$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/system/suspend/ISuspendControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-static {}, Landroid/system/suspend/ISuspendControlService$Stub;->getDefaultImpl()Landroid/system/suspend/ISuspendControlService;

    move-result-object v3

    if-eqz v3, :cond_2e

    invoke-static {}, Landroid/system/suspend/ISuspendControlService$Stub;->getDefaultImpl()Landroid/system/suspend/ISuspendControlService;

    move-result-object v3

    invoke-interface {v3}, Landroid/system/suspend/ISuspendControlService;->forceSuspend()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_41

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_41

    if-eqz v3, :cond_38

    const/4 v4, 0x1

    :cond_38
    move v2, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    # getter for: Landroid/system/suspend/ISuspendControlService$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/system/suspend/ISuspendControlService$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWakeLockStats()[Landroid/system/suspend/WakeLockInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    # getter for: Landroid/system/suspend/ISuspendControlService$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/system/suspend/ISuspendControlService$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/system/suspend/ISuspendControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-static {}, Landroid/system/suspend/ISuspendControlService$Stub;->getDefaultImpl()Landroid/system/suspend/ISuspendControlService;

    move-result-object v3

    if-eqz v3, :cond_2e

    invoke-static {}, Landroid/system/suspend/ISuspendControlService$Stub;->getDefaultImpl()Landroid/system/suspend/ISuspendControlService;

    move-result-object v3

    invoke-interface {v3}, Landroid/system/suspend/ISuspendControlService;->getWakeLockStats()[Landroid/system/suspend/WakeLockInfo;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object v3, Landroid/system/suspend/WakeLockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/system/suspend/WakeLockInfo;
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_42

    move-object v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v2

    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerCallback(Landroid/system/suspend/ISuspendCallback;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    # getter for: Landroid/system/suspend/ISuspendControlService$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/system/suspend/ISuspendControlService$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_16

    invoke-interface {p1}, Landroid/system/suspend/ISuspendCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/system/suspend/ISuspendControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_39

    invoke-static {}, Landroid/system/suspend/ISuspendControlService$Stub;->getDefaultImpl()Landroid/system/suspend/ISuspendControlService;

    move-result-object v3

    if-eqz v3, :cond_39

    invoke-static {}, Landroid/system/suspend/ISuspendControlService$Stub;->getDefaultImpl()Landroid/system/suspend/ISuspendControlService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/system/suspend/ISuspendControlService;->registerCallback(Landroid/system/suspend/ISuspendCallback;)Z

    move-result v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_4c

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4c

    if-eqz v3, :cond_43

    const/4 v4, 0x1

    :cond_43
    move v2, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
