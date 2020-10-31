.class Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarrierMessagingService.java"

# interfaces
.implements Landroid/service/carrier/ICarrierMessagingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/ICarrierMessagingService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/service/carrier/ICarrierMessagingService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public downloadMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.carrier.ICarrierMessagingService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    :cond_23
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_26
    const/4 v2, 0x0

    if-eqz p4, :cond_2e

    invoke-interface {p4}, Landroid/service/carrier/ICarrierMessagingCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_2f

    :cond_2e
    move-object v3, v2

    :goto_2f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-static {}, Landroid/service/carrier/ICarrierMessagingService$Stub;->getDefaultImpl()Landroid/service/carrier/ICarrierMessagingService;

    move-result-object v2

    if-eqz v2, :cond_4c

    invoke-static {}, Landroid/service/carrier/ICarrierMessagingService$Stub;->getDefaultImpl()Landroid/service/carrier/ICarrierMessagingService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/service/carrier/ICarrierMessagingService;->downloadMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_48
    .catchall {:try_start_4 .. :try_end_48} :catchall_51

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_4c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_51
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public filterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.carrier.ICarrierMessagingService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v1}, Landroid/service/carrier/MessagePdu;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p5, :cond_28

    invoke-interface {p5}, Landroid/service/carrier/ICarrierMessagingCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_29

    :cond_28
    move-object v3, v1

    :goto_29
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v3, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-static {}, Landroid/service/carrier/ICarrierMessagingService$Stub;->getDefaultImpl()Landroid/service/carrier/ICarrierMessagingService;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-static {}, Landroid/service/carrier/ICarrierMessagingService$Stub;->getDefaultImpl()Landroid/service/carrier/ICarrierMessagingService;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/service/carrier/ICarrierMessagingService;->filterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_46
    .catchall {:try_start_4 .. :try_end_46} :catchall_4f

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_4a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_4f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.service.carrier.ICarrierMessagingService"

    return-object v0
.end method

.method public sendDataSms([BILjava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_4
    const-string v0, "android.service.carrier.ICarrierMessagingService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_6c

    move-object/from16 v9, p1

    :try_start_b
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_69

    move/from16 v10, p2

    :try_start_10
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_66

    move-object/from16 v11, p3

    :try_start_15
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_63

    move/from16 v12, p4

    :try_start_1a
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_60

    move/from16 v13, p5

    :try_start_1f
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    if-eqz p6, :cond_2a

    invoke-interface/range {p6 .. p6}, Landroid/service/carrier/ICarrierMessagingCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_2b

    :cond_2a
    move-object v2, v0

    :goto_2b
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_5d

    move-object v14, p0

    :try_start_2f
    iget-object v2, v14, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_56

    invoke-static {}, Landroid/service/carrier/ICarrierMessagingService$Stub;->getDefaultImpl()Landroid/service/carrier/ICarrierMessagingService;

    move-result-object v2

    if-eqz v2, :cond_56

    invoke-static {}, Landroid/service/carrier/ICarrierMessagingService$Stub;->getDefaultImpl()Landroid/service/carrier/ICarrierMessagingService;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/service/carrier/ICarrierMessagingService;->sendDataSms([BILjava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_52
    .catchall {:try_start_2f .. :try_end_52} :catchall_5b

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_56
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_5b
    move-exception v0

    goto :goto_78

    :catchall_5d
    move-exception v0

    move-object v14, p0

    goto :goto_78

    :catchall_60
    move-exception v0

    move-object v14, p0

    goto :goto_76

    :catchall_63
    move-exception v0

    move-object v14, p0

    goto :goto_74

    :catchall_66
    move-exception v0

    move-object v14, p0

    goto :goto_72

    :catchall_69
    move-exception v0

    move-object v14, p0

    goto :goto_70

    :catchall_6c
    move-exception v0

    move-object v14, p0

    move-object/from16 v9, p1

    :goto_70
    move/from16 v10, p2

    :goto_72
    move-object/from16 v11, p3

    :goto_74
    move/from16 v12, p4

    :goto_76
    move/from16 v13, p5

    :goto_78
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public sendMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.carrier.ICarrierMessagingService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    :cond_23
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_26
    const/4 v2, 0x0

    if-eqz p4, :cond_2e

    invoke-interface {p4}, Landroid/service/carrier/ICarrierMessagingCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_2f

    :cond_2e
    move-object v3, v2

    :goto_2f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-static {}, Landroid/service/carrier/ICarrierMessagingService$Stub;->getDefaultImpl()Landroid/service/carrier/ICarrierMessagingService;

    move-result-object v2

    if-eqz v2, :cond_4c

    invoke-static {}, Landroid/service/carrier/ICarrierMessagingService$Stub;->getDefaultImpl()Landroid/service/carrier/ICarrierMessagingService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/service/carrier/ICarrierMessagingService;->sendMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_48
    .catchall {:try_start_4 .. :try_end_48} :catchall_51

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_4c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_51
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public sendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Landroid/service/carrier/ICarrierMessagingCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.carrier.ICarrierMessagingService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p5, :cond_1d

    invoke-interface {p5}, Landroid/service/carrier/ICarrierMessagingCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1e

    :cond_1d
    move-object v2, v1

    :goto_1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_41

    invoke-static {}, Landroid/service/carrier/ICarrierMessagingService$Stub;->getDefaultImpl()Landroid/service/carrier/ICarrierMessagingService;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-static {}, Landroid/service/carrier/ICarrierMessagingService$Stub;->getDefaultImpl()Landroid/service/carrier/ICarrierMessagingService;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/service/carrier/ICarrierMessagingService;->sendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_46

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_46
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public sendTextSms(Ljava/lang/String;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.carrier.ICarrierMessagingService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p5, :cond_1d

    invoke-interface {p5}, Landroid/service/carrier/ICarrierMessagingCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1e

    :cond_1d
    move-object v2, v1

    :goto_1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_41

    invoke-static {}, Landroid/service/carrier/ICarrierMessagingService$Stub;->getDefaultImpl()Landroid/service/carrier/ICarrierMessagingService;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-static {}, Landroid/service/carrier/ICarrierMessagingService$Stub;->getDefaultImpl()Landroid/service/carrier/ICarrierMessagingService;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/service/carrier/ICarrierMessagingService;->sendTextSms(Ljava/lang/String;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_46

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_46
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
