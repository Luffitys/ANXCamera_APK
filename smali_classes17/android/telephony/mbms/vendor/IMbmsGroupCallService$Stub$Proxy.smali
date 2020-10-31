.class Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMbmsGroupCallService.java"

# interfaces
.implements Landroid/telephony/mbms/vendor/IMbmsGroupCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/telephony/mbms/vendor/IMbmsGroupCallService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public dispose(I)V
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
    const-string v2, "android.telephony.mbms.vendor.IMbmsGroupCallService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-static {}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->getDefaultImpl()Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    move-result-object v3

    if-eqz v3, :cond_2e

    invoke-static {}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->getDefaultImpl()Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->dispose(I)V
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

    const-string v0, "android.telephony.mbms.vendor.IMbmsGroupCallService"

    return-object v0
.end method

.method public initialize(Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;I)I
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
    const-string v2, "android.telephony.mbms.vendor.IMbmsGroupCallService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-static {}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->getDefaultImpl()Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    move-result-object v3

    if-eqz v3, :cond_3a

    invoke-static {}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->getDefaultImpl()Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->initialize(Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;I)I

    move-result v3
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_4a

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_4a

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public startGroupCall(IJLjava/util/List;Ljava/util/List;Landroid/telephony/mbms/IGroupCallCallback;)I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_8
    const-string v0, "android.telephony.mbms.vendor.IMbmsGroupCallService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_79

    move/from16 v10, p1

    :try_start_f
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_75

    move-wide/from16 v11, p2

    :try_start_14
    invoke-virtual {v1, v11, v12}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_71

    move-object/from16 v13, p4

    :try_start_19
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_6d

    move-object/from16 v14, p5

    :try_start_1e
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    if-eqz p6, :cond_28

    invoke-interface/range {p6 .. p6}, Landroid/telephony/mbms/IGroupCallCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_69

    move-object/from16 v15, p0

    :try_start_2e
    iget-object v0, v15, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_57

    invoke-static {}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->getDefaultImpl()Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    move-result-object v3

    if-eqz v3, :cond_57

    invoke-static {}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->getDefaultImpl()Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    move-result-object v3

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->startGroupCall(IJLjava/util/List;Ljava/util/List;Landroid/telephony/mbms/IGroupCallCallback;)I

    move-result v3
    :try_end_50
    .catchall {:try_start_2e .. :try_end_50} :catchall_67

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_57
    :try_start_57
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_67

    move v0, v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return v0

    :catchall_67
    move-exception v0

    goto :goto_84

    :catchall_69
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_84

    :catchall_6d
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_82

    :catchall_71
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_80

    :catchall_75
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7e

    :catchall_79
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v10, p1

    :goto_7e
    move-wide/from16 v11, p2

    :goto_80
    move-object/from16 v13, p4

    :goto_82
    move-object/from16 v14, p5

    :goto_84
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public stopGroupCall(IJ)V
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
    const-string v2, "android.telephony.mbms.vendor.IMbmsGroupCallService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_31

    invoke-static {}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->getDefaultImpl()Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-static {}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->getDefaultImpl()Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->stopGroupCall(IJ)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public updateGroupCall(IJLjava/util/List;Ljava/util/List;)V
    .registers 16
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
    const-string v2, "android.telephony.mbms.vendor.IMbmsGroupCallService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v2, p0, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->getDefaultImpl()Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    move-result-object v3

    if-eqz v3, :cond_3b

    invoke-static {}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->getDefaultImpl()Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    move-result-object v4

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->updateGroupCall(IJLjava/util/List;Ljava/util/List;)V
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_46

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_46

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
