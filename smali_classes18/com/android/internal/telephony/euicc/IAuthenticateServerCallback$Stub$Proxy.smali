.class Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAuthenticateServerCallback.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.android.internal.telephony.euicc.IAuthenticateServerCallback"

    return-object v0
.end method

.method public onComplete(I[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IAuthenticateServerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {}, Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-static {}, Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;->onComplete(I[B)V
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
