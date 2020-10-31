.class Landroid/system/suspend/ISuspendCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISuspendCallback.java"

# interfaces
.implements Landroid/system/suspend/ISuspendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/suspend/ISuspendCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/system/suspend/ISuspendCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/system/suspend/ISuspendCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/system/suspend/ISuspendCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    # getter for: Landroid/system/suspend/ISuspendCallback$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/system/suspend/ISuspendCallback$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyWakeup(Z)V
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
    # getter for: Landroid/system/suspend/ISuspendCallback$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/system/suspend/ISuspendCallback$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_15

    move v4, v2

    goto :goto_16

    :cond_15
    move v4, v3

    :goto_16
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/system/suspend/ISuspendCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_35

    invoke-static {}, Landroid/system/suspend/ISuspendCallback$Stub;->getDefaultImpl()Landroid/system/suspend/ISuspendCallback;

    move-result-object v3

    if-eqz v3, :cond_35

    invoke-static {}, Landroid/system/suspend/ISuspendCallback$Stub;->getDefaultImpl()Landroid/system/suspend/ISuspendCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/system/suspend/ISuspendCallback;->notifyWakeup(Z)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
