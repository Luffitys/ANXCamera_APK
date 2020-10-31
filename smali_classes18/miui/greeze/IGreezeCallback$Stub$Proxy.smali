.class Lmiui/greeze/IGreezeCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGreezeCallback.java"

# interfaces
.implements Lmiui/greeze/IGreezeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/greeze/IGreezeCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lmiui/greeze/IGreezeCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/greeze/IGreezeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lmiui/greeze/IGreezeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "miui.greeze.IGreezeCallback"

    return-object v0
.end method

.method public reportBinderState(IIIIJ)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_4
    const-string v0, "miui.greeze.IGreezeCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_65

    move/from16 v9, p1

    :try_start_b
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_61

    move/from16 v10, p2

    :try_start_10
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_5d

    move/from16 v11, p3

    :try_start_15
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_59

    move/from16 v12, p4

    :try_start_1a
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_55

    move-wide/from16 v13, p5

    :try_start_1f
    invoke-virtual {v1, v13, v14}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_51

    move-object/from16 v15, p0

    :try_start_24
    iget-object v0, v15, Lmiui/greeze/IGreezeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {}, Lmiui/greeze/IGreezeCallback$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeCallback;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-static {}, Lmiui/greeze/IGreezeCallback$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeCallback;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-interface/range {v2 .. v8}, Lmiui/greeze/IGreezeCallback;->reportBinderState(IIIIJ)V
    :try_end_46
    .catchall {:try_start_24 .. :try_end_46} :catchall_4f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_4a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_4f
    move-exception v0

    goto :goto_72

    :catchall_51
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_72

    :catchall_55
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_70

    :catchall_59
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6e

    :catchall_5d
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6c

    :catchall_61
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6a

    :catchall_65
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v9, p1

    :goto_6a
    move/from16 v10, p2

    :goto_6c
    move/from16 v11, p3

    :goto_6e
    move/from16 v12, p4

    :goto_70
    move-wide/from16 v13, p5

    :goto_72
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public reportBinderTrans(IIIIIZJJ)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_4
    const-string v0, "miui.greeze.IGreezeCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_6d

    move/from16 v13, p1

    :try_start_b
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_6b

    move/from16 v14, p2

    :try_start_10
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_69

    move/from16 v15, p3

    :try_start_15
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v11, p4

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v12, p5

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    if-eqz p6, :cond_27

    move v2, v0

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v9, p7

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v7, p9

    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v6, p0

    iget-object v2, v6, Lmiui/greeze/IGreezeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_62

    invoke-static {}, Lmiui/greeze/IGreezeCallback$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeCallback;

    move-result-object v2

    if-eqz v2, :cond_62

    invoke-static {}, Lmiui/greeze/IGreezeCallback$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeCallback;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-interface/range {v2 .. v12}, Lmiui/greeze/IGreezeCallback;->reportBinderTrans(IIIIIZJJ)V
    :try_end_5e
    .catchall {:try_start_15 .. :try_end_5e} :catchall_67

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_62
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_67
    move-exception v0

    goto :goto_74

    :catchall_69
    move-exception v0

    goto :goto_72

    :catchall_6b
    move-exception v0

    goto :goto_70

    :catchall_6d
    move-exception v0

    move/from16 v13, p1

    :goto_70
    move/from16 v14, p2

    :goto_72
    move/from16 v15, p3

    :goto_74
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public reportNet(IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "miui.greeze.IGreezeCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Lmiui/greeze/IGreezeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Lmiui/greeze/IGreezeCallback$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeCallback;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Lmiui/greeze/IGreezeCallback$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lmiui/greeze/IGreezeCallback;->reportNet(IJ)V
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

.method public reportSignal(IIJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "miui.greeze.IGreezeCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Lmiui/greeze/IGreezeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {}, Lmiui/greeze/IGreezeCallback$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeCallback;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-static {}, Lmiui/greeze/IGreezeCallback$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lmiui/greeze/IGreezeCallback;->reportSignal(IIJ)V
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_32

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_32
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public serviceReady(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "miui.greeze.IGreezeCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_e

    move v2, v1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lmiui/greeze/IGreezeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {}, Lmiui/greeze/IGreezeCallback$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeCallback;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-static {}, Lmiui/greeze/IGreezeCallback$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lmiui/greeze/IGreezeCallback;->serviceReady(Z)V
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_32

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_32
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public thawedByOther(III)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "miui.greeze.IGreezeCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lmiui/greeze/IGreezeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {}, Lmiui/greeze/IGreezeCallback$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeCallback;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-static {}, Lmiui/greeze/IGreezeCallback$Stub;->getDefaultImpl()Lmiui/greeze/IGreezeCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lmiui/greeze/IGreezeCallback;->thawedByOther(III)V
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_33

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
