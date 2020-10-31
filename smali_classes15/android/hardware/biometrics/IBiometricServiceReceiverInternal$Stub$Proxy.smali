.class Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBiometricServiceReceiverInternal.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.hardware.biometrics.IBiometricServiceReceiverInternal"

    return-object v0
.end method

.method public onAcquired(ILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.hardware.biometrics.IBiometricServiceReceiverInternal"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onAcquired(ILjava/lang/String;)V
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

.method public onAuthenticationFailed()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.hardware.biometrics.IBiometricServiceReceiverInternal"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onAuthenticationFailed()V
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

.method public onAuthenticationSucceeded(Z[BZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.hardware.biometrics.IBiometricServiceReceiverInternal"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    :goto_10
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    if-eqz p3, :cond_19

    move v1, v2

    :cond_19
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onAuthenticationSucceeded(Z[BZ)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_3b

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onDeviceCredentialPressed()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.hardware.biometrics.IBiometricServiceReceiverInternal"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDeviceCredentialPressed()V
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

.method public onDialogDismissed(I[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.hardware.biometrics.IBiometricServiceReceiverInternal"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v1, p0, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I[B)V
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

.method public onError(IIII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.hardware.biometrics.IBiometricServiceReceiverInternal"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onError(IIII)V
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

.method public onSystemEvent(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.hardware.biometrics.IBiometricServiceReceiverInternal"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onSystemEvent(I)V
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

.method public onTryAgainPressed()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.hardware.biometrics.IBiometricServiceReceiverInternal"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onTryAgainPressed()V
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
