.class Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEuiccCardController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/IEuiccCardController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/internal/telephony/euicc/IEuiccCardController;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public authenticateServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IAuthenticateServerCallback;)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_4
    const-string v0, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_75

    move-object/from16 v11, p1

    :try_start_b
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_73

    move-object/from16 v12, p2

    :try_start_10
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_71

    move-object/from16 v13, p3

    :try_start_15
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_6f

    move-object/from16 v14, p4

    :try_start_1a
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_6d

    move-object/from16 v15, p5

    :try_start_1f
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v0, 0x0

    if-eqz p8, :cond_34

    invoke-interface/range {p8 .. p8}, Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_35

    :cond_34
    move-object v2, v0

    :goto_35
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object/from16 v8, p0

    iget-object v2, v8, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_66

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_66

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->authenticateServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IAuthenticateServerCallback;)V
    :try_end_62
    .catchall {:try_start_1f .. :try_end_62} :catchall_6b

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_66
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_6b
    move-exception v0

    goto :goto_80

    :catchall_6d
    move-exception v0

    goto :goto_7e

    :catchall_6f
    move-exception v0

    goto :goto_7c

    :catchall_71
    move-exception v0

    goto :goto_7a

    :catchall_73
    move-exception v0

    goto :goto_78

    :catchall_75
    move-exception v0

    move-object/from16 v11, p1

    :goto_78
    move-object/from16 v12, p2

    :goto_7a
    move-object/from16 v13, p3

    :goto_7c
    move-object/from16 v14, p4

    :goto_7e
    move-object/from16 v15, p5

    :goto_80
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public cancelSession(Ljava/lang/String;Ljava/lang/String;[BILcom/android/internal/telephony/euicc/ICancelSessionCallback;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p5, :cond_1d

    invoke-interface {p5}, Lcom/android/internal/telephony/euicc/ICancelSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1e

    :cond_1d
    move-object v2, v1

    :goto_1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_42

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_42

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->cancelSession(Ljava/lang/String;Ljava/lang/String;[BILcom/android/internal/telephony/euicc/ICancelSessionCallback;)V
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_47

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_47
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public deleteProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p4, :cond_1a

    invoke-interface {p4}, Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_39

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->deleteProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;)V
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_3e

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public disableProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/IDisableProfileCallback;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p4, :cond_17

    move v2, v1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p5, :cond_23

    invoke-interface {p5}, Lcom/android/internal/telephony/euicc/IDisableProfileCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_24

    :cond_23
    move-object v3, v2

    :goto_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_46

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->disableProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/IDisableProfileCallback;)V
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

.method public getAllProfiles(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_17

    invoke-interface {p3}, Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, v1

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getAllProfiles(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;)V
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_3a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_17

    invoke-interface {p3}, Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, v1

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;)V
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

.method public getEuiccChallenge(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_17

    invoke-interface {p3}, Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, v1

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getEuiccChallenge(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;)V
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

.method public getEuiccInfo1(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_17

    invoke-interface {p3}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, v1

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getEuiccInfo1(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;)V
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

.method public getEuiccInfo2(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_17

    invoke-interface {p3}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, v1

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getEuiccInfo2(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;)V
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

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.android.internal.telephony.euicc.IEuiccCardController"

    return-object v0
.end method

.method public getProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetProfileCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p4, :cond_1a

    invoke-interface {p4}, Lcom/android/internal/telephony/euicc/IGetProfileCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_39

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetProfileCallback;)V
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_3e

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getRulesAuthTable(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_17

    invoke-interface {p3}, Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, v1

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getRulesAuthTable(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V
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

.method public getSmdsAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_17

    invoke-interface {p3}, Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, v1

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getSmdsAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;)V
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

.method public listNotifications(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IListNotificationsCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p4, :cond_1a

    invoke-interface {p4}, Lcom/android/internal/telephony/euicc/IListNotificationsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->listNotifications(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IListNotificationsCallback;)V
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

.method public loadBoundProfilePackage(Ljava/lang/String;Ljava/lang/String;[BLcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v1, 0x0

    if-eqz p4, :cond_1a

    invoke-interface {p4}, Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->loadBoundProfilePackage(Ljava/lang/String;Ljava/lang/String;[BLcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V
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

.method public prepareDownload(Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IPrepareDownloadCallback;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_4
    const-string v0, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_70

    move-object/from16 v10, p1

    :try_start_b
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_6e

    move-object/from16 v11, p2

    :try_start_10
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_6c

    move-object/from16 v12, p3

    :try_start_15
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_6a

    move-object/from16 v13, p4

    :try_start_1a
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_68

    move-object/from16 v14, p5

    :try_start_1f
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_66

    move-object/from16 v15, p6

    :try_start_24
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v0, 0x0

    if-eqz p7, :cond_2f

    invoke-interface/range {p7 .. p7}, Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_30

    :cond_2f
    move-object v2, v0

    :goto_30
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object/from16 v9, p0

    iget-object v2, v9, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_5f

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->prepareDownload(Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IPrepareDownloadCallback;)V
    :try_end_5b
    .catchall {:try_start_24 .. :try_end_5b} :catchall_64

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_5f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_64
    move-exception v0

    goto :goto_7d

    :catchall_66
    move-exception v0

    goto :goto_7b

    :catchall_68
    move-exception v0

    goto :goto_79

    :catchall_6a
    move-exception v0

    goto :goto_77

    :catchall_6c
    move-exception v0

    goto :goto_75

    :catchall_6e
    move-exception v0

    goto :goto_73

    :catchall_70
    move-exception v0

    move-object/from16 v10, p1

    :goto_73
    move-object/from16 v11, p2

    :goto_75
    move-object/from16 v12, p3

    :goto_77
    move-object/from16 v13, p4

    :goto_79
    move-object/from16 v14, p5

    :goto_7b
    move-object/from16 v15, p6

    :goto_7d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public removeNotificationFromList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p4, :cond_1a

    invoke-interface {p4}, Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->removeNotificationFromList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;)V
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

.method public resetMemory(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IResetMemoryCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p4, :cond_1a

    invoke-interface {p4}, Lcom/android/internal/telephony/euicc/IResetMemoryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_39

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->resetMemory(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IResetMemoryCallback;)V
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_3e

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public retrieveNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p4, :cond_1a

    invoke-interface {p4}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->retrieveNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;)V
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

.method public retrieveNotificationList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz p4, :cond_1a

    invoke-interface {p4}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->retrieveNotificationList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;)V
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

.method public setDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p4, :cond_1a

    invoke-interface {p4}, Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->setDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;)V
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

.method public setNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetNicknameCallback;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p5, :cond_1d

    invoke-interface {p5}, Lcom/android/internal/telephony/euicc/ISetNicknameCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1e

    :cond_1d
    move-object v2, v1

    :goto_1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_41

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->setNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetNicknameCallback;)V
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

.method public switchToProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/ISwitchToProfileCallback;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p4, :cond_17

    move v2, v1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p5, :cond_23

    invoke-interface {p5}, Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_24

    :cond_23
    move-object v3, v2

    :goto_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v2

    if-eqz v2, :cond_46

    invoke-static {}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultImpl()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->switchToProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/ISwitchToProfileCallback;)V
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
