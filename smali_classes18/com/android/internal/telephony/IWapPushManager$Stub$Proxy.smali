.class Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWapPushManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IWapPushManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IWapPushManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/internal/telephony/IWapPushManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Z
    .registers 25
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
    const-string v0, "com.android.internal.telephony.IWapPushManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_85

    move-object/from16 v11, p1

    :try_start_f
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_83

    move-object/from16 v12, p2

    :try_start_14
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_81

    move-object/from16 v13, p3

    :try_start_19
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_7f

    move-object/from16 v14, p4

    :try_start_1e
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_7d

    move/from16 v15, p5

    :try_start_23
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p6, :cond_2c

    move v4, v0

    goto :goto_2d

    :cond_2c
    move v4, v3

    :goto_2d
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p7, :cond_34

    move v4, v0

    goto :goto_35

    :cond_34
    move v4, v3

    :goto_35
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v10, p0

    iget-object v4, v10, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    invoke-interface {v4, v5, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    move/from16 v16, v4

    if-nez v16, :cond_68

    invoke-static {}, Lcom/android/internal/telephony/IWapPushManager$Stub;->getDefaultImpl()Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v4

    if-eqz v4, :cond_68

    invoke-static {}, Lcom/android/internal/telephony/IWapPushManager$Stub;->getDefaultImpl()Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/android/internal/telephony/IWapPushManager;->addPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Z

    move-result v0
    :try_end_61
    .catchall {:try_start_23 .. :try_end_61} :catchall_7b

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :cond_68
    :try_start_68
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_7b

    if-eqz v4, :cond_72

    goto :goto_73

    :cond_72
    move v0, v3

    :goto_73
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return v0

    :catchall_7b
    move-exception v0

    goto :goto_90

    :catchall_7d
    move-exception v0

    goto :goto_8e

    :catchall_7f
    move-exception v0

    goto :goto_8c

    :catchall_81
    move-exception v0

    goto :goto_8a

    :catchall_83
    move-exception v0

    goto :goto_88

    :catchall_85
    move-exception v0

    move-object/from16 v11, p1

    :goto_88
    move-object/from16 v12, p2

    :goto_8a
    move-object/from16 v13, p3

    :goto_8c
    move-object/from16 v14, p4

    :goto_8e
    move/from16 v15, p5

    :goto_90
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deletePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
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
    const-string v2, "com.android.internal.telephony.IWapPushManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_38

    invoke-static {}, Lcom/android/internal/telephony/IWapPushManager$Stub;->getDefaultImpl()Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v3

    if-eqz v3, :cond_38

    invoke-static {}, Lcom/android/internal/telephony/IWapPushManager$Stub;->getDefaultImpl()Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/telephony/IWapPushManager;->deletePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_4b

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_4b

    if-eqz v3, :cond_42

    const/4 v4, 0x1

    :cond_42
    move v2, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_4b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.android.internal.telephony.IWapPushManager"

    return-object v0
.end method

.method public processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
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
    const-string v2, "com.android.internal.telephony.IWapPushManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1e

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    :cond_1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_21
    iget-object v4, p0, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-static {}, Lcom/android/internal/telephony/IWapPushManager$Stub;->getDefaultImpl()Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v3

    if-eqz v3, :cond_3e

    invoke-static {}, Lcom/android/internal/telephony/IWapPushManager$Stub;->getDefaultImpl()Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v3
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_4e

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_3e
    :try_start_3e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4e

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_4e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public updatePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Z
    .registers 25
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
    const-string v0, "com.android.internal.telephony.IWapPushManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_85

    move-object/from16 v11, p1

    :try_start_f
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_83

    move-object/from16 v12, p2

    :try_start_14
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_81

    move-object/from16 v13, p3

    :try_start_19
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_7f

    move-object/from16 v14, p4

    :try_start_1e
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_7d

    move/from16 v15, p5

    :try_start_23
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p6, :cond_2c

    move v4, v0

    goto :goto_2d

    :cond_2c
    move v4, v3

    :goto_2d
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p7, :cond_34

    move v4, v0

    goto :goto_35

    :cond_34
    move v4, v3

    :goto_35
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v10, p0

    iget-object v4, v10, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-interface {v4, v5, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    move/from16 v16, v4

    if-nez v16, :cond_68

    invoke-static {}, Lcom/android/internal/telephony/IWapPushManager$Stub;->getDefaultImpl()Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v4

    if-eqz v4, :cond_68

    invoke-static {}, Lcom/android/internal/telephony/IWapPushManager$Stub;->getDefaultImpl()Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/android/internal/telephony/IWapPushManager;->updatePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Z

    move-result v0
    :try_end_61
    .catchall {:try_start_23 .. :try_end_61} :catchall_7b

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :cond_68
    :try_start_68
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_7b

    if-eqz v4, :cond_72

    goto :goto_73

    :cond_72
    move v0, v3

    :goto_73
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return v0

    :catchall_7b
    move-exception v0

    goto :goto_90

    :catchall_7d
    move-exception v0

    goto :goto_8e

    :catchall_7f
    move-exception v0

    goto :goto_8c

    :catchall_81
    move-exception v0

    goto :goto_8a

    :catchall_83
    move-exception v0

    goto :goto_88

    :catchall_85
    move-exception v0

    move-object/from16 v11, p1

    :goto_88
    move-object/from16 v12, p2

    :goto_8a
    move-object/from16 v13, p3

    :goto_8c
    move-object/from16 v14, p4

    :goto_8e
    move/from16 v15, p5

    :goto_90
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
