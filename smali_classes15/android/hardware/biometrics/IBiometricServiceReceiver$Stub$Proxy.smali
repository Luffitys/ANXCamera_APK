.class Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBiometricServiceReceiver.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/hardware/biometrics/IBiometricServiceReceiver;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.hardware.biometrics.IBiometricServiceReceiver"

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
    const-string v1, "android.hardware.biometrics.IBiometricServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAcquired(ILjava/lang/String;)V
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
    const-string v1, "android.hardware.biometrics.IBiometricServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationFailed()V
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

.method public onAuthenticationSucceeded(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.hardware.biometrics.IBiometricServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded(I)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_2c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_27
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onDialogDismissed(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.hardware.biometrics.IBiometricServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onDialogDismissed(I)V
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

.method public onError(III)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.hardware.biometrics.IBiometricServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_33

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_33
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
    const-string v1, "android.hardware.biometrics.IBiometricServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-static {}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->getDefaultImpl()Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onSystemEvent(I)V
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
