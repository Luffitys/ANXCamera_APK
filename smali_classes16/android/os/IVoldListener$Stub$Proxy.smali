.class Landroid/os/IVoldListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoldListener.java"

# interfaces
.implements Landroid/os/IVoldListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVoldListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/os/IVoldListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.os.IVoldListener"

    return-object v0
.end method

.method public onDiskCreated(Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/IVoldListener;->onDiskCreated(Ljava/lang/String;I)V
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2f

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onDiskDestroyed(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IVoldListener;->onDiskDestroyed(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v3

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/os/IVoldListener;->onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_3a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onDiskScanned(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IVoldListener;->onDiskScanned(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_39

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/os/IVoldListener;->onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_3e

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onVolumeDestroyed(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IVoldListener;->onVolumeDestroyed(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2e

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/IVoldListener;->onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IVoldListener;->onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.method public onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/IVoldListener;->onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onVolumeStateChanged(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/IVoldListener;->onVolumeStateChanged(Ljava/lang/String;I)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
