.class Landroid/companion/ICompanionDeviceDiscoveryService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICompanionDeviceDiscoveryService.java"

# interfaces
.implements Landroid/companion/ICompanionDeviceDiscoveryService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ICompanionDeviceDiscoveryService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/companion/ICompanionDeviceDiscoveryService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/ICompanionDeviceDiscoveryService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/companion/ICompanionDeviceDiscoveryService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.companion.ICompanionDeviceDiscoveryService"

    return-object v0
.end method

.method public startDiscovery(Landroid/companion/AssociationRequest;Ljava/lang/String;Landroid/companion/IFindDeviceCallback;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/companion/AssociationRequest;",
            "Ljava/lang/String;",
            "Landroid/companion/IFindDeviceCallback;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/companion/Association;",
            ">;)V"
        }
    .end annotation

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
    const-string v2, "android.companion.ICompanionDeviceDiscoveryService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v3}, Landroid/companion/AssociationRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p3, :cond_25

    invoke-interface {p3}, Landroid/companion/IFindDeviceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_26

    :cond_25
    const/4 v4, 0x0

    :goto_26
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    if-eqz p4, :cond_32

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p4, v0, v3}, Lcom/android/internal/infra/AndroidFuture;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_35

    :cond_32
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_35
    iget-object v4, p0, Landroid/companion/ICompanionDeviceDiscoveryService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_51

    invoke-static {}, Landroid/companion/ICompanionDeviceDiscoveryService$Stub;->getDefaultImpl()Landroid/companion/ICompanionDeviceDiscoveryService;

    move-result-object v3

    if-eqz v3, :cond_51

    invoke-static {}, Landroid/companion/ICompanionDeviceDiscoveryService$Stub;->getDefaultImpl()Landroid/companion/ICompanionDeviceDiscoveryService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/companion/ICompanionDeviceDiscoveryService;->startDiscovery(Landroid/companion/AssociationRequest;Ljava/lang/String;Landroid/companion/IFindDeviceCallback;Lcom/android/internal/infra/AndroidFuture;)V
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_5c

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_51
    :try_start_51
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_5c

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_5c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
