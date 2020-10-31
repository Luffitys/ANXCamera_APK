.class Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMultiClientInputMethodPrivilegedOperations.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public acceptClient(ILcom/android/internal/view/IInputMethodSession;Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;Landroid/view/InputChannel;)V
    .registers 10
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
    const-string v2, "com.android.internal.inputmethod.IMultiClientInputMethodPrivilegedOperations"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_19

    :cond_18
    move-object v3, v2

    :goto_19
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    if-eqz p3, :cond_22

    invoke-interface {p3}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_22
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p4, :cond_30

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p4, v0, v2}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_33

    :cond_30
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_33
    iget-object v3, p0, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_50

    invoke-static {}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v3

    if-eqz v3, :cond_50

    invoke-static {}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;->acceptClient(ILcom/android/internal/view/IInputMethodSession;Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;Landroid/view/InputChannel;)V
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_5b

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_50
    :try_start_50
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5b

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_5b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public createInputMethodWindowToken(I)Landroid/os/IBinder;
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
    const-string v2, "com.android.internal.inputmethod.IMultiClientInputMethodPrivilegedOperations"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-static {}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;->createInputMethodWindowToken(I)Landroid/os/IBinder;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3f

    move-object v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v2

    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public deleteInputMethodWindowToken(Landroid/os/IBinder;)V
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
    const-string v2, "com.android.internal.inputmethod.IMultiClientInputMethodPrivilegedOperations"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-static {}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v3

    if-eqz v3, :cond_2e

    invoke-static {}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;->deleteInputMethodWindowToken(Landroid/os/IBinder;)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.android.internal.inputmethod.IMultiClientInputMethodPrivilegedOperations"

    return-object v0
.end method

.method public isUidAllowedOnDisplay(II)Z
    .registers 8
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
    const-string v2, "com.android.internal.inputmethod.IMultiClientInputMethodPrivilegedOperations"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-static {}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;->isUidAllowedOnDisplay(II)Z

    move-result v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_45

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_45

    if-eqz v3, :cond_3c

    const/4 v4, 0x1

    :cond_3c
    move v2, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public reportImeWindowTarget(IILandroid/os/IBinder;)V
    .registers 9
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
    const-string v2, "com.android.internal.inputmethod.IMultiClientInputMethodPrivilegedOperations"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_34

    invoke-static {}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-static {}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;->reportImeWindowTarget(IILandroid/os/IBinder;)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setActive(IZ)V
    .registers 8
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
    const-string v2, "com.android.internal.inputmethod.IMultiClientInputMethodPrivilegedOperations"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_36

    invoke-static {}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-static {}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;->setActive(IZ)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
