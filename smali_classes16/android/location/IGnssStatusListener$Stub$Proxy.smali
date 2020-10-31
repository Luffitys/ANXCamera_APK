.class Landroid/location/IGnssStatusListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGnssStatusListener.java"

# interfaces
.implements Landroid/location/IGnssStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGnssStatusListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/location/IGnssStatusListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/IGnssStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/location/IGnssStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.location.IGnssStatusListener"

    return-object v0
.end method

.method public onFirstFix(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.location.IGnssStatusListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/location/IGnssStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {}, Landroid/location/IGnssStatusListener$Stub;->getDefaultImpl()Landroid/location/IGnssStatusListener;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-static {}, Landroid/location/IGnssStatusListener$Stub;->getDefaultImpl()Landroid/location/IGnssStatusListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/location/IGnssStatusListener;->onFirstFix(I)V
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

.method public onGnssStarted()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.location.IGnssStatusListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/location/IGnssStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-static {}, Landroid/location/IGnssStatusListener$Stub;->getDefaultImpl()Landroid/location/IGnssStatusListener;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-static {}, Landroid/location/IGnssStatusListener$Stub;->getDefaultImpl()Landroid/location/IGnssStatusListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/location/IGnssStatusListener;->onGnssStarted()V
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_29

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onGnssStopped()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.location.IGnssStatusListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/location/IGnssStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Landroid/location/IGnssStatusListener$Stub;->getDefaultImpl()Landroid/location/IGnssStatusListener;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Landroid/location/IGnssStatusListener$Stub;->getDefaultImpl()Landroid/location/IGnssStatusListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/location/IGnssStatusListener;->onGnssStopped()V
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

.method public onNmeaReceived(JLjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.location.IGnssStatusListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/location/IGnssStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Landroid/location/IGnssStatusListener$Stub;->getDefaultImpl()Landroid/location/IGnssStatusListener;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Landroid/location/IGnssStatusListener$Stub;->getDefaultImpl()Landroid/location/IGnssStatusListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/location/IGnssStatusListener;->onNmeaReceived(JLjava/lang/String;)V
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

.method public onSvStatusChanged(I[I[F[F[F[F[F)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_4
    const-string v0, "android.location.IGnssStatusListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_69

    move/from16 v10, p1

    :try_start_b
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_67

    move-object/from16 v11, p2

    :try_start_10
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeIntArray([I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_65

    move-object/from16 v12, p3

    :try_start_15
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeFloatArray([F)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_63

    move-object/from16 v13, p4

    :try_start_1a
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeFloatArray([F)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_61

    move-object/from16 v14, p5

    :try_start_1f
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeFloatArray([F)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_5f

    move-object/from16 v15, p6

    :try_start_24
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeFloatArray([F)V

    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeFloatArray([F)V

    move-object/from16 v8, p0

    iget-object v0, v8, Landroid/location/IGnssStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_58

    invoke-static {}, Landroid/location/IGnssStatusListener$Stub;->getDefaultImpl()Landroid/location/IGnssStatusListener;

    move-result-object v2

    if-eqz v2, :cond_58

    invoke-static {}, Landroid/location/IGnssStatusListener$Stub;->getDefaultImpl()Landroid/location/IGnssStatusListener;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Landroid/location/IGnssStatusListener;->onSvStatusChanged(I[I[F[F[F[F[F)V
    :try_end_54
    .catchall {:try_start_24 .. :try_end_54} :catchall_5d

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_58
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_5d
    move-exception v0

    goto :goto_76

    :catchall_5f
    move-exception v0

    goto :goto_74

    :catchall_61
    move-exception v0

    goto :goto_72

    :catchall_63
    move-exception v0

    goto :goto_70

    :catchall_65
    move-exception v0

    goto :goto_6e

    :catchall_67
    move-exception v0

    goto :goto_6c

    :catchall_69
    move-exception v0

    move/from16 v10, p1

    :goto_6c
    move-object/from16 v11, p2

    :goto_6e
    move-object/from16 v12, p3

    :goto_70
    move-object/from16 v13, p4

    :goto_72
    move-object/from16 v14, p5

    :goto_74
    move-object/from16 v15, p6

    :goto_76
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
