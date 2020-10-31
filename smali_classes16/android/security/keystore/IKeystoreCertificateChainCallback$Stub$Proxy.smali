.class Landroid/security/keystore/IKeystoreCertificateChainCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKeystoreCertificateChainCallback.java"

# interfaces
.implements Landroid/security/keystore/IKeystoreCertificateChainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/IKeystoreCertificateChainCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/security/keystore/IKeystoreCertificateChainCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/keystore/IKeystoreCertificateChainCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/IKeystoreCertificateChainCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.security.keystore.IKeystoreCertificateChainCallback"

    return-object v0
.end method

.method public onFinished(Landroid/security/keystore/KeystoreResponse;Landroid/security/keymaster/KeymasterCertificateChain;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.security.keystore.IKeystoreCertificateChainCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/security/keystore/KeystoreResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    if-eqz p2, :cond_20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/security/keymaster/KeymasterCertificateChain;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    :cond_20
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23
    iget-object v2, p0, Landroid/security/keystore/IKeystoreCertificateChainCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-static {}, Landroid/security/keystore/IKeystoreCertificateChainCallback$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreCertificateChainCallback;

    move-result-object v2

    if-eqz v2, :cond_3d

    invoke-static {}, Landroid/security/keystore/IKeystoreCertificateChainCallback$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreCertificateChainCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/security/keystore/IKeystoreCertificateChainCallback;->onFinished(Landroid/security/keystore/KeystoreResponse;Landroid/security/keymaster/KeymasterCertificateChain;)V
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
