.class Lcom/milink/api/v1/aidl/IMcsDataSource$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMcsDataSource.java"

# interfaces
.implements Lcom/milink/api/v1/aidl/IMcsDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/api/v1/aidl/IMcsDataSource$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/milink/api/v1/aidl/IMcsDataSource;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.milink.api.v1.aidl.IMcsDataSource"

    return-object v0
.end method

.method public getNextPhoto(Ljava/lang/String;Z)Ljava/lang/String;
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
    const-string v2, "com.milink.api.v1.aidl.IMcsDataSource"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {}, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub;->getDefaultImpl()Lcom/milink/api/v1/aidl/IMcsDataSource;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-static {}, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub;->getDefaultImpl()Lcom/milink/api/v1/aidl/IMcsDataSource;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/milink/api/v1/aidl/IMcsDataSource;->getNextPhoto(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_47

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_47

    move-object v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v2

    :catchall_47
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getPrevPhoto(Ljava/lang/String;Z)Ljava/lang/String;
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
    const-string v2, "com.milink.api.v1.aidl.IMcsDataSource"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_16

    move v4, v2

    goto :goto_17

    :cond_16
    move v4, v3

    :goto_17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {}, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub;->getDefaultImpl()Lcom/milink/api/v1/aidl/IMcsDataSource;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-static {}, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub;->getDefaultImpl()Lcom/milink/api/v1/aidl/IMcsDataSource;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/milink/api/v1/aidl/IMcsDataSource;->getPrevPhoto(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_47

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_47

    move-object v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v2

    :catchall_47
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
