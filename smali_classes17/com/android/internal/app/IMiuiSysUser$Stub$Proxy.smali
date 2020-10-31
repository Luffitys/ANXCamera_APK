.class Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMiuiSysUser.java"

# interfaces
.implements Lcom/android/internal/app/IMiuiSysUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IMiuiSysUser$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/internal/app/IMiuiSysUser;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.android.internal.app.IMiuiSysUser"

    return-object v0
.end method

.method public notifyAMCreateActivity(Landroid/content/ComponentName;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-static {}, Lcom/android/internal/app/IMiuiSysUser$Stub;->getDefaultImpl()Lcom/android/internal/app/IMiuiSysUser;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-static {}, Lcom/android/internal/app/IMiuiSysUser$Stub;->getDefaultImpl()Lcom/android/internal/app/IMiuiSysUser;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMCreateActivity(Landroid/content/ComponentName;II)V
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_3d

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public notifyAMDestroyActivity(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Lcom/android/internal/app/IMiuiSysUser$Stub;->getDefaultImpl()Lcom/android/internal/app/IMiuiSysUser;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Lcom/android/internal/app/IMiuiSysUser$Stub;->getDefaultImpl()Lcom/android/internal/app/IMiuiSysUser;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMDestroyActivity(II)V
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

.method public notifyAMPauseActivity(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Lcom/android/internal/app/IMiuiSysUser$Stub;->getDefaultImpl()Lcom/android/internal/app/IMiuiSysUser;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Lcom/android/internal/app/IMiuiSysUser$Stub;->getDefaultImpl()Lcom/android/internal/app/IMiuiSysUser;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMPauseActivity(II)V
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

.method public notifyAMProcDied(ILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Lcom/android/internal/app/IMiuiSysUser$Stub;->getDefaultImpl()Lcom/android/internal/app/IMiuiSysUser;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Lcom/android/internal/app/IMiuiSysUser$Stub;->getDefaultImpl()Lcom/android/internal/app/IMiuiSysUser;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMProcDied(ILjava/lang/String;)V
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

.method public notifyAMProcStart(JIILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    :try_start_6
    const-string v0, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_67

    move-wide/from16 v11, p1

    :try_start_d
    invoke-virtual {v10, v11, v12}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_65

    move/from16 v13, p3

    :try_start_12
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_63

    move/from16 v14, p4

    :try_start_17
    invoke-virtual {v10, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_61

    move-object/from16 v15, p5

    :try_start_1c
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v9, :cond_2a

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v10, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2d

    :cond_2a
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2d
    move-object/from16 v8, p7

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v10, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-static {}, Lcom/android/internal/app/IMiuiSysUser$Stub;->getDefaultImpl()Lcom/android/internal/app/IMiuiSysUser;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-static {}, Lcom/android/internal/app/IMiuiSysUser$Stub;->getDefaultImpl()Lcom/android/internal/app/IMiuiSysUser;

    move-result-object v1

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMProcStart(JIILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_1c .. :try_end_56} :catchall_5f

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_5a
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_5f
    move-exception v0

    goto :goto_70

    :catchall_61
    move-exception v0

    goto :goto_6e

    :catchall_63
    move-exception v0

    goto :goto_6c

    :catchall_65
    move-exception v0

    goto :goto_6a

    :catchall_67
    move-exception v0

    move-wide/from16 v11, p1

    :goto_6a
    move/from16 v13, p3

    :goto_6c
    move/from16 v14, p4

    :goto_6e
    move-object/from16 v15, p5

    :goto_70
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public notifyAMRestartActivity(Landroid/content/ComponentName;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-static {}, Lcom/android/internal/app/IMiuiSysUser$Stub;->getDefaultImpl()Lcom/android/internal/app/IMiuiSysUser;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-static {}, Lcom/android/internal/app/IMiuiSysUser$Stub;->getDefaultImpl()Lcom/android/internal/app/IMiuiSysUser;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMRestartActivity(Landroid/content/ComponentName;II)V
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_3d

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public notifyAMResumeActivity(Landroid/content/ComponentName;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-static {}, Lcom/android/internal/app/IMiuiSysUser$Stub;->getDefaultImpl()Lcom/android/internal/app/IMiuiSysUser;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-static {}, Lcom/android/internal/app/IMiuiSysUser$Stub;->getDefaultImpl()Lcom/android/internal/app/IMiuiSysUser;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMResumeActivity(Landroid/content/ComponentName;II)V
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_3d

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public notifyEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    :cond_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    iget-object v2, p0, Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-static {}, Lcom/android/internal/app/IMiuiSysUser$Stub;->getDefaultImpl()Lcom/android/internal/app/IMiuiSysUser;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-static {}, Lcom/android/internal/app/IMiuiSysUser$Stub;->getDefaultImpl()Lcom/android/internal/app/IMiuiSysUser;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IMiuiSysUser;->notifyEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_3b

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
