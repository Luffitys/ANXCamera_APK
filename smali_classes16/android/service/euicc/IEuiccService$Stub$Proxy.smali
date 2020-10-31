.class Landroid/service/euicc/IEuiccService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEuiccService.java"

# interfaces
.implements Landroid/service/euicc/IEuiccService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/IEuiccService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/service/euicc/IEuiccService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/euicc/IEuiccService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/service/euicc/IEuiccService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deleteSubscription(ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.euicc.IEuiccService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_17

    invoke-interface {p3}, Landroid/service/euicc/IDeleteSubscriptionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, v1

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/service/euicc/IEuiccService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/service/euicc/IEuiccService;->deleteSubscription(ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_3c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Landroid/service/euicc/IDownloadSubscriptionCallback;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v8, p2

    move-object/from16 v9, p5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    :try_start_7
    const-string v0, "android.service.euicc.IEuiccService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_74

    move v11, p1

    :try_start_d
    invoke-virtual {v10, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v8, :cond_1b

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v10, v1}, Landroid/telephony/euicc/DownloadableSubscription;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    :cond_1b
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1e
    if-eqz p3, :cond_22

    move v2, v0

    goto :goto_23

    :cond_22
    move v2, v1

    :goto_23
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p4, :cond_2a

    move v2, v0

    goto :goto_2b

    :cond_2a
    move v2, v1

    :goto_2b
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v9, :cond_37

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v10, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3a

    :cond_37
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3a
    const/4 v1, 0x0

    if-eqz p6, :cond_42

    invoke-interface/range {p6 .. p6}, Landroid/service/euicc/IDownloadSubscriptionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_43

    :cond_42
    move-object v2, v1

    :goto_43
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_71

    move-object v12, p0

    :try_start_47
    iget-object v2, v12, Landroid/service/euicc/IEuiccService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v2, v0, v10, v1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v1

    if-eqz v1, :cond_6a

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/service/euicc/IEuiccService;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Landroid/service/euicc/IDownloadSubscriptionCallback;)V
    :try_end_66
    .catchall {:try_start_47 .. :try_end_66} :catchall_6f

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_6a
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_6f
    move-exception v0

    goto :goto_77

    :catchall_71
    move-exception v0

    move-object v12, p0

    goto :goto_77

    :catchall_74
    move-exception v0

    move-object v12, p0

    move v11, p1

    :goto_77
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public dump(Landroid/service/euicc/IEuiccServiceDumpResultCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.euicc.IEuiccService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p1}, Landroid/service/euicc/IEuiccServiceDumpResultCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/service/euicc/IEuiccService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/service/euicc/IEuiccService;->dump(Landroid/service/euicc/IEuiccServiceDumpResultCallback;)V
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

.method public eraseSubscriptions(ILandroid/service/euicc/IEraseSubscriptionsCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.euicc.IEuiccService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p2, :cond_14

    invoke-interface {p2}, Landroid/service/euicc/IEraseSubscriptionsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v1

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/service/euicc/IEuiccService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/service/euicc/IEuiccService;->eraseSubscriptions(ILandroid/service/euicc/IEraseSubscriptionsCallback;)V
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_39

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_39
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public eraseSubscriptionsWithOptions(IILandroid/service/euicc/IEraseSubscriptionsCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.euicc.IEuiccService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p3, :cond_17

    invoke-interface {p3}, Landroid/service/euicc/IEraseSubscriptionsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, v1

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/service/euicc/IEuiccService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/service/euicc/IEuiccService;->eraseSubscriptionsWithOptions(IILandroid/service/euicc/IEraseSubscriptionsCallback;)V
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_3c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.euicc.IEuiccService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    if-eqz p2, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p3, :cond_1d

    invoke-interface {p3}, Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1e

    :cond_1d
    move-object v3, v2

    :goto_1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Landroid/service/euicc/IEuiccService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/service/euicc/IEuiccService;->getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_40

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_40
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.euicc.IEuiccService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/telephony/euicc/DownloadableSubscription;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    :cond_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    if-eqz p3, :cond_1d

    move v2, v1

    :cond_1d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p4, :cond_28

    invoke-interface {p4}, Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_29

    :cond_28
    move-object v3, v2

    :goto_29
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Landroid/service/euicc/IEuiccService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    if-eqz v2, :cond_46

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/service/euicc/IEuiccService;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V
    :try_end_42
    .catchall {:try_start_4 .. :try_end_42} :catchall_4b

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_4b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getEid(ILandroid/service/euicc/IGetEidCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.euicc.IEuiccService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p2, :cond_14

    invoke-interface {p2}, Landroid/service/euicc/IGetEidCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v1

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/service/euicc/IEuiccService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/service/euicc/IEuiccService;->getEid(ILandroid/service/euicc/IGetEidCallback;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.euicc.IEuiccService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p2, :cond_14

    invoke-interface {p2}, Landroid/service/euicc/IGetEuiccInfoCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v1

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/service/euicc/IEuiccService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/service/euicc/IEuiccService;->getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_39

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_39
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getEuiccProfileInfoList(ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.euicc.IEuiccService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p2, :cond_14

    invoke-interface {p2}, Landroid/service/euicc/IGetEuiccProfileInfoListCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v1

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/service/euicc/IEuiccService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/service/euicc/IEuiccService;->getEuiccProfileInfoList(ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.service.euicc.IEuiccService"

    return-object v0
.end method

.method public getOtaStatus(ILandroid/service/euicc/IGetOtaStatusCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.euicc.IEuiccService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p2, :cond_14

    invoke-interface {p2}, Landroid/service/euicc/IGetOtaStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v1

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/service/euicc/IEuiccService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/service/euicc/IEuiccService;->getOtaStatus(ILandroid/service/euicc/IGetOtaStatusCallback;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public retainSubscriptionsForFactoryReset(ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.euicc.IEuiccService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p2, :cond_14

    invoke-interface {p2}, Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v1

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/service/euicc/IEuiccService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/service/euicc/IEuiccService;->retainSubscriptionsForFactoryReset(ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_39

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_39
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public startOtaIfNecessary(ILandroid/service/euicc/IOtaStatusChangedCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.euicc.IEuiccService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p2, :cond_14

    invoke-interface {p2}, Landroid/service/euicc/IOtaStatusChangedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v1

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/service/euicc/IEuiccService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/service/euicc/IEuiccService;->startOtaIfNecessary(ILandroid/service/euicc/IOtaStatusChangedCallback;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public switchToSubscription(ILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.euicc.IEuiccService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p3, :cond_14

    move v2, v1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p4, :cond_20

    invoke-interface {p4}, Landroid/service/euicc/ISwitchToSubscriptionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_21

    :cond_20
    move-object v3, v2

    :goto_21
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Landroid/service/euicc/IEuiccService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/service/euicc/IEuiccService;->switchToSubscription(ILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_44

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_44
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.euicc.IEuiccService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p4, :cond_1a

    invoke-interface {p4}, Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/service/euicc/IEuiccService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-static {}, Landroid/service/euicc/IEuiccService$Stub;->getDefaultImpl()Landroid/service/euicc/IEuiccService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/service/euicc/IEuiccService;->updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_3f

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
