.class Landroid/app/IAlarmManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAlarmManager.java"

# interfaces
.implements Landroid/app/IAlarmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAlarmManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/app/IAlarmManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public currentNetworkTimeMillis()J
    .registers 6
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
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getDefaultImpl()Landroid/app/IAlarmManager;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getDefaultImpl()Landroid/app/IAlarmManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IAlarmManager;->currentNetworkTimeMillis()J

    move-result-wide v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v3

    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3c

    move-wide v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-wide v2

    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.app.IAlarmManager"

    return-object v0
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
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
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getDefaultImpl()Landroid/app/IAlarmManager;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getDefaultImpl()Landroid/app/IAlarmManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/app/IAlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_4a

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_41

    sget-object v3, Landroid/app/AlarmManager$AlarmClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager$AlarmClockInfo;
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_4a

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    :goto_42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v3

    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getNextWakeFromIdleTime()J
    .registers 6
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
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getDefaultImpl()Landroid/app/IAlarmManager;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getDefaultImpl()Landroid/app/IAlarmManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IAlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v3

    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3c

    move-wide v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-wide v2

    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
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
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_22

    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    :goto_23
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_43

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getDefaultImpl()Landroid/app/IAlarmManager;

    move-result-object v3

    if-eqz v3, :cond_43

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getDefaultImpl()Landroid/app/IAlarmManager;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_4e

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_43
    :try_start_43
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4e

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_4e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p10

    move-object/from16 v14, p13

    move-object/from16 v13, p14

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    :try_start_e
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object/from16 v10, p1

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v8, p2

    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v6, p3

    invoke-virtual {v12, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v4, p5

    invoke-virtual {v12, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v2, p7

    invoke-virtual {v12, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v9, p9

    invoke-virtual {v12, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_31
    .catchall {:try_start_e .. :try_end_31} :catchall_c0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v15, :cond_43

    :try_start_35
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v15, v12, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_3c

    goto :goto_46

    :catchall_3c
    move-exception v0

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    goto/16 :goto_c5

    :cond_43
    :try_start_43
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_c0

    :goto_46
    if-eqz p11, :cond_4d

    :try_start_48
    invoke-interface/range {p11 .. p11}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v16
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_3c

    goto :goto_4f

    :cond_4d
    const/16 v16, 0x0

    :goto_4f
    move-object/from16 v1, v16

    :try_start_51
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object/from16 v1, p12

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_c0

    if-eqz v14, :cond_63

    :try_start_5b
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {v14, v12, v0}, Landroid/os/WorkSource;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_3c

    goto :goto_67

    :cond_63
    const/4 v0, 0x0

    :try_start_64
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_c0

    :goto_67
    if-eqz v13, :cond_72

    const/4 v0, 0x1

    :try_start_6a
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {v13, v12, v0}, Landroid/app/AlarmManager$AlarmClockInfo;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_3c

    goto :goto_75

    :cond_72
    :try_start_72
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_75
    move-object/from16 v15, p0

    iget-object v0, v15, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v12, v11, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_af

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getDefaultImpl()Landroid/app/IAlarmManager;

    move-result-object v1

    if-eqz v1, :cond_af

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getDefaultImpl()Landroid/app/IAlarmManager;

    move-result-object v1
    :try_end_8b
    .catchall {:try_start_72 .. :try_end_8b} :catchall_c0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v16, v11

    move-object/from16 v11, p10

    move-object/from16 v17, v12

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    :try_start_a5
    invoke-interface/range {v1 .. v15}, Landroid/app/IAlarmManager;->set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_be

    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_af
    move-object/from16 v16, v11

    move-object/from16 v17, v12

    :try_start_b3
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->readException()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_be

    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_be
    move-exception v0

    goto :goto_c5

    :catchall_c0
    move-exception v0

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    :goto_c5
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setTime(J)Z
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
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getDefaultImpl()Landroid/app/IAlarmManager;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getDefaultImpl()Landroid/app/IAlarmManager;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/app/IAlarmManager;->setTime(J)Z

    move-result v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_42

    if-eqz v3, :cond_39

    const/4 v4, 0x1

    :cond_39
    move v2, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setTimeZone(Ljava/lang/String;)V
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
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getDefaultImpl()Landroid/app/IAlarmManager;

    move-result-object v3

    if-eqz v3, :cond_2e

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getDefaultImpl()Landroid/app/IAlarmManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V
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
