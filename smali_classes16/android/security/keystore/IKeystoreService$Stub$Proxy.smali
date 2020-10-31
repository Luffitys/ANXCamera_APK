.class Landroid/security/keystore/IKeystoreService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKeystoreService.java"

# interfaces
.implements Landroid/security/keystore/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/IKeystoreService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/security/keystore/IKeystoreService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public abort(Landroid/security/keystore/IKeystoreResponseCallback;Landroid/os/IBinder;)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/security/keystore/IKeystoreResponseCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_3b

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/security/keystore/IKeystoreService;->abort(Landroid/security/keystore/IKeystoreResponseCallback;Landroid/os/IBinder;)I

    move-result v3
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_4b

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_4b

    move v2, v3

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

.method public addAuthToken([B)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/security/keystore/IKeystoreService;->addAuthToken([B)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public addRngEntropy(Landroid/security/keystore/IKeystoreResponseCallback;[BI)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/security/keystore/IKeystoreResponseCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_3e

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/security/keystore/IKeystoreService;->addRngEntropy(Landroid/security/keystore/IKeystoreResponseCallback;[BI)I

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

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public attestDeviceIds(Landroid/security/keystore/IKeystoreCertificateChainCallback;Landroid/security/keymaster/KeymasterArguments;)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/security/keystore/IKeystoreCertificateChainCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_23

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    :cond_23
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_26
    iget-object v3, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_45

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_45

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/security/keystore/IKeystoreService;->attestDeviceIds(Landroid/security/keystore/IKeystoreCertificateChainCallback;Landroid/security/keymaster/KeymasterArguments;)I

    move-result v3
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_55

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_45
    :try_start_45
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_55

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_55
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public attestKey(Landroid/security/keystore/IKeystoreCertificateChainCallback;Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/security/keystore/IKeystoreCertificateChainCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_26

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_29

    :cond_26
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_29
    iget-object v3, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_48

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_48

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/security/keystore/IKeystoreService;->attestKey(Landroid/security/keystore/IKeystoreCertificateChainCallback;Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;)I

    move-result v3
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_58

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_48
    :try_start_48
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_58

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_58
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public begin(Landroid/security/keystore/IKeystoreOperationResultCallback;Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)I
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    :try_start_a
    const-string v0, "android.security.keystore.IKeystoreService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_16

    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/IKeystoreOperationResultCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_90

    move-object/from16 v13, p2

    :try_start_1c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_8e

    move-object/from16 v14, p3

    :try_start_21
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_8c

    move/from16 v15, p4

    :try_start_26
    invoke-virtual {v11, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_2f

    move v2, v0

    goto :goto_30

    :cond_2f
    move v2, v1

    :goto_30
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v10, :cond_3c

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v10, v11, v1}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3f

    :cond_3c
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3f
    move-object/from16 v9, p7

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    move/from16 v8, p8

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v7, p0

    iget-object v0, v7, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    invoke-interface {v0, v2, v11, v12, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_7a

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v1

    if-eqz v1, :cond_7a

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Landroid/security/keystore/IKeystoreService;->begin(Landroid/security/keystore/IKeystoreOperationResultCallback;Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)I

    move-result v1
    :try_end_73
    .catchall {:try_start_26 .. :try_end_73} :catchall_8a

    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    return v1

    :cond_7a
    :try_start_7a
    invoke-virtual {v12}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1
    :try_end_81
    .catchall {:try_start_7a .. :try_end_81} :catchall_8a

    move v0, v1

    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    nop

    return v0

    :catchall_8a
    move-exception v0

    goto :goto_97

    :catchall_8c
    move-exception v0

    goto :goto_95

    :catchall_8e
    move-exception v0

    goto :goto_93

    :catchall_90
    move-exception v0

    move-object/from16 v13, p2

    :goto_93
    move-object/from16 v14, p3

    :goto_95
    move/from16 v15, p4

    :goto_97
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public cancelConfirmationPrompt(Landroid/os/IBinder;)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/security/keystore/IKeystoreService;->cancelConfirmationPrompt(Landroid/os/IBinder;)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public clear_uid(J)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/security/keystore/IKeystoreService;->clear_uid(J)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public del(Ljava/lang/String;I)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/security/keystore/IKeystoreService;->del(Ljava/lang/String;I)I

    move-result v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_42

    move v2, v3

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

.method public exist(Ljava/lang/String;I)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/security/keystore/IKeystoreService;->exist(Ljava/lang/String;I)I

    move-result v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_42

    move v2, v3

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

.method public exportKey(Landroid/security/keystore/IKeystoreExportKeyCallback;Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    :try_start_c
    const-string v0, "android.security.keystore.IKeystoreService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_18

    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/IKeystoreExportKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_90

    move-object/from16 v12, p2

    :try_start_1e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_8c

    move/from16 v13, p3

    :try_start_23
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v8, :cond_31

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v10, v1}, Landroid/security/keymaster/KeymasterBlob;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_34

    :cond_31
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_34
    if-eqz v9, :cond_3d

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v10, v1}, Landroid/security/keymaster/KeymasterBlob;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_40

    :cond_3d
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_40
    .catchall {:try_start_23 .. :try_end_40} :catchall_88

    :goto_40
    move/from16 v14, p6

    :try_start_42
    invoke-virtual {v10, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_84

    move-object/from16 v15, p0

    :try_start_47
    iget-object v0, v15, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    invoke-interface {v0, v2, v10, v11, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_72

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v1

    if-eqz v1, :cond_72

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/security/keystore/IKeystoreService;->exportKey(Landroid/security/keystore/IKeystoreExportKeyCallback;Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)I

    move-result v1
    :try_end_6b
    .catchall {:try_start_47 .. :try_end_6b} :catchall_82

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return v1

    :cond_72
    :try_start_72
    invoke-virtual {v11}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_82

    move v0, v1

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    nop

    return v0

    :catchall_82
    move-exception v0

    goto :goto_99

    :catchall_84
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_99

    :catchall_88
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_97

    :catchall_8c
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_95

    :catchall_90
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v12, p2

    :goto_95
    move/from16 v13, p3

    :goto_97
    move/from16 v14, p6

    :goto_99
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public finish(Landroid/security/keystore/IKeystoreOperationResultCallback;Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B[B)I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    :try_start_a
    const-string v0, "android.security.keystore.IKeystoreService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_16

    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/IKeystoreOperationResultCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_8b

    move-object/from16 v11, p2

    :try_start_1c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x0

    if-eqz v8, :cond_2a

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v9, v0}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2d

    :cond_2a
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_87

    :goto_2d
    move-object/from16 v12, p4

    :try_start_2f
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_83

    move-object/from16 v13, p5

    :try_start_34
    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_7f

    move-object/from16 v14, p6

    :try_start_39
    invoke-virtual {v9, v14}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_7b

    move-object/from16 v15, p0

    :try_start_3e
    iget-object v1, v15, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    invoke-interface {v1, v2, v9, v10, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_69

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v1

    if-eqz v1, :cond_69

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/security/keystore/IKeystoreService;->finish(Landroid/security/keystore/IKeystoreOperationResultCallback;Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B[B)I

    move-result v1
    :try_end_62
    .catchall {:try_start_3e .. :try_end_62} :catchall_79

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return v1

    :cond_69
    :try_start_69
    invoke-virtual {v10}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_79

    move v0, v1

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    nop

    return v0

    :catchall_79
    move-exception v0

    goto :goto_96

    :catchall_7b
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_96

    :catchall_7f
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_94

    :catchall_83
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_92

    :catchall_87
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_90

    :catchall_8b
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v11, p2

    :goto_90
    move-object/from16 v12, p4

    :goto_92
    move-object/from16 v13, p5

    :goto_94
    move-object/from16 v14, p6

    :goto_96
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public generateKey(Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BII)I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    :try_start_a
    const-string v0, "android.security.keystore.IKeystoreService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_16

    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_8b

    move-object/from16 v11, p2

    :try_start_1c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz v8, :cond_2a

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v9, v0}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2d

    :cond_2a
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_87

    :goto_2d
    move-object/from16 v12, p4

    :try_start_2f
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_83

    move/from16 v13, p5

    :try_start_34
    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_7f

    move/from16 v14, p6

    :try_start_39
    invoke-virtual {v9, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_7b

    move-object/from16 v15, p0

    :try_start_3e
    iget-object v1, v15, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    invoke-interface {v1, v2, v9, v10, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_69

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v1

    if-eqz v1, :cond_69

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/security/keystore/IKeystoreService;->generateKey(Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BII)I

    move-result v1
    :try_end_62
    .catchall {:try_start_3e .. :try_end_62} :catchall_79

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return v1

    :cond_69
    :try_start_69
    invoke-virtual {v10}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_79

    move v0, v1

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    nop

    return v0

    :catchall_79
    move-exception v0

    goto :goto_96

    :catchall_7b
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_96

    :catchall_7f
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_94

    :catchall_83
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_92

    :catchall_87
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_90

    :catchall_8b
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v11, p2

    :goto_90
    move-object/from16 v12, p4

    :goto_92
    move/from16 v13, p5

    :goto_94
    move/from16 v14, p6

    :goto_96
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public get(Ljava/lang/String;I)[B
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/security/keystore/IKeystoreService;->get(Ljava/lang/String;I)[B

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_42

    move-object v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v2

    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.security.keystore.IKeystoreService"

    return-object v0
.end method

.method public getKeyCharacteristics(Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_26

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v3}, Landroid/security/keymaster/KeymasterBlob;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_29

    :cond_26
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_29
    if-eqz p4, :cond_32

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p4, v0, v3}, Landroid/security/keymaster/KeymasterBlob;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_35

    :cond_32
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_35
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_5c

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_5c

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/security/keystore/IKeystoreService;->getKeyCharacteristics(Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)I

    move-result v3
    :try_end_55
    .catchall {:try_start_8 .. :try_end_55} :catchall_6c

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_5c
    :try_start_5c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_6c

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_6c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getState(I)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/security/keystore/IKeystoreService;->getState(I)I

    move-result v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3f

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getTokensForCredstore(JJILandroid/security/keystore/ICredstoreTokenCallback;)V
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
    const-string v0, "android.security.keystore.IKeystoreService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_69

    move-wide/from16 v10, p1

    :try_start_f
    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_65

    move-wide/from16 v12, p3

    :try_start_14
    invoke-virtual {v1, v12, v13}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_61

    move/from16 v14, p5

    :try_start_19
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p6, :cond_23

    invoke-interface/range {p6 .. p6}, Landroid/security/keystore/ICredstoreTokenCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_5d

    move-object/from16 v15, p0

    :try_start_29
    iget-object v0, v15, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_50

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_50

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/security/keystore/IKeystoreService;->getTokensForCredstore(JJILandroid/security/keystore/ICredstoreTokenCallback;)V
    :try_end_49
    .catchall {:try_start_29 .. :try_end_49} :catchall_5b

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_50
    :try_start_50
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5b

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_5b
    move-exception v0

    goto :goto_72

    :catchall_5d
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_72

    :catchall_61
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_70

    :catchall_65
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6e

    :catchall_69
    move-exception v0

    move-object/from16 v15, p0

    move-wide/from16 v10, p1

    :goto_6e
    move-wide/from16 v12, p3

    :goto_70
    move/from16 v14, p5

    :goto_72
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getmtime(Ljava/lang/String;I)J
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/security/keystore/IKeystoreService;->getmtime(Ljava/lang/String;I)J

    move-result-wide v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v3

    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move-wide v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-wide v2

    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public grant(Ljava/lang/String;I)Ljava/lang/String;
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/security/keystore/IKeystoreService;->grant(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move-object v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v2

    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public importKey(Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BII)I
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    :try_start_a
    const-string v0, "android.security.keystore.IKeystoreService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_16

    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_88

    move-object/from16 v12, p2

    :try_start_1c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz v9, :cond_2a

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v10, v0}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2d

    :cond_2a
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_86

    :goto_2d
    move/from16 v13, p4

    :try_start_2f
    invoke-virtual {v10, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_84

    move-object/from16 v14, p5

    :try_start_34
    invoke-virtual {v10, v14}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_82

    move/from16 v15, p6

    :try_start_39
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p7

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v7, p0

    iget-object v1, v7, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    invoke-interface {v1, v2, v10, v11, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_70

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v1

    if-eqz v1, :cond_70

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/security/keystore/IKeystoreService;->importKey(Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BII)I

    move-result v1
    :try_end_69
    .catchall {:try_start_39 .. :try_end_69} :catchall_80

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return v1

    :cond_70
    :try_start_70
    invoke-virtual {v11}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_80

    move v0, v1

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    nop

    return v0

    :catchall_80
    move-exception v0

    goto :goto_91

    :catchall_82
    move-exception v0

    goto :goto_8f

    :catchall_84
    move-exception v0

    goto :goto_8d

    :catchall_86
    move-exception v0

    goto :goto_8b

    :catchall_88
    move-exception v0

    move-object/from16 v12, p2

    :goto_8b
    move/from16 v13, p4

    :goto_8d
    move-object/from16 v14, p5

    :goto_8f
    move/from16 v15, p6

    :goto_91
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public importWrappedKey(Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJ)I
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v14

    :try_start_a
    const-string v0, "android.security.keystore.IKeystoreService"

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_16

    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_89

    move-object/from16 v15, p2

    :try_start_1c
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v10, p3

    invoke-virtual {v13, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v11, p4

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v8, p5

    invoke-virtual {v13, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v0, 0x0

    if-eqz v12, :cond_39

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v12, v13, v0}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3c

    :cond_39
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3c
    move-wide/from16 v6, p7

    invoke-virtual {v13, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v4, p9

    invoke-virtual {v13, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v9, p0

    iget-object v1, v9, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1f

    invoke-interface {v1, v2, v13, v14, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_77

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v1

    if-eqz v1, :cond_77

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-interface/range {v1 .. v11}, Landroid/security/keystore/IKeystoreService;->importWrappedKey(Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJ)I

    move-result v1
    :try_end_70
    .catchall {:try_start_1c .. :try_end_70} :catchall_87

    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    return v1

    :cond_77
    :try_start_77
    invoke-virtual {v14}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_87

    move v0, v1

    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    nop

    return v0

    :catchall_87
    move-exception v0

    goto :goto_8c

    :catchall_89
    move-exception v0

    move-object/from16 v15, p2

    :goto_8c
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public insert(Ljava/lang/String;[BII)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_38

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_38

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/keystore/IKeystoreService;->insert(Ljava/lang/String;[BII)I

    move-result v3
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_48

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_48

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_48
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public isConfirmationPromptSupported()Z
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->isConfirmationPromptSupported()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_40

    if-eqz v3, :cond_37

    const/4 v4, 0x1

    :cond_37
    move v2, v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public isEmpty(I)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/security/keystore/IKeystoreService;->isEmpty(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public is_hardware_backed(Ljava/lang/String;)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/security/keystore/IKeystoreService;->is_hardware_backed(Ljava/lang/String;)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public list(Ljava/lang/String;I)[Ljava/lang/String;
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/security/keystore/IKeystoreService;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_42

    move-object v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v2

    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public listUidsOfAuthBoundKeys(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/security/keystore/IKeystoreService;->listUidsOfAuthBoundKeys(Ljava/util/List;)I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_3f

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v3

    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public lock(I)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/security/keystore/IKeystoreService;->lock(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onDeviceOffBody()I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->onDeviceOffBody()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onKeyguardVisibilityChanged(ZI)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_38

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_38

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/security/keystore/IKeystoreService;->onKeyguardVisibilityChanged(ZI)I

    move-result v3
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_48

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_48

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_48
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onUserAdded(II)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/security/keystore/IKeystoreService;->onUserAdded(II)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onUserPasswordChanged(ILjava/lang/String;)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/security/keystore/IKeystoreService;->onUserPasswordChanged(ILjava/lang/String;)I

    move-result v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_42

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_42

    move v2, v3

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

.method public onUserRemoved(I)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/security/keystore/IKeystoreService;->onUserRemoved(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public presentConfirmationPrompt(Landroid/os/IBinder;Ljava/lang/String;[BLjava/lang/String;I)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_41

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/security/keystore/IKeystoreService;->presentConfirmationPrompt(Landroid/os/IBinder;Ljava/lang/String;[BLjava/lang/String;I)I

    move-result v3
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_51

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_41
    :try_start_41
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_51

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_51
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ungrant(Ljava/lang/String;I)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/security/keystore/IKeystoreService;->ungrant(Ljava/lang/String;I)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unlock(ILjava/lang/String;)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/security/keystore/IKeystoreService;->unlock(ILjava/lang/String;)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public update(Landroid/security/keystore/IKeystoreOperationResultCallback;Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)I
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
    const-string v2, "android.security.keystore.IKeystoreService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/security/keystore/IKeystoreOperationResultCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_26

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_29

    :cond_26
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_29
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v3, p0, Landroid/security/keystore/IKeystoreService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    if-eqz v3, :cond_4b

    invoke-static {}, Landroid/security/keystore/IKeystoreService$Stub;->getDefaultImpl()Landroid/security/keystore/IKeystoreService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/keystore/IKeystoreService;->update(Landroid/security/keystore/IKeystoreOperationResultCallback;Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)I

    move-result v3
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_5b

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_4b
    :try_start_4b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_5b

    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_5b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
