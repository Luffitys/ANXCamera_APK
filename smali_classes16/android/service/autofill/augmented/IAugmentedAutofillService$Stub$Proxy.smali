.class Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAugmentedAutofillService.java"

# interfaces
.implements Landroid/service/autofill/augmented/IAugmentedAutofillService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/service/autofill/augmented/IAugmentedAutofillService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.service.autofill.augmented.IAugmentedAutofillService"

    return-object v0
.end method

.method public onConnected(ZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.autofill.augmented.IAugmentedAutofillService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    :goto_10
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_16

    move v1, v2

    :cond_16
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-static {}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultImpl()Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-static {}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultImpl()Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onConnected(ZZ)V
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

.method public onDestroyAllFillWindowsRequest()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.autofill.augmented.IAugmentedAutofillService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultImpl()Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultImpl()Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onDestroyAllFillWindowsRequest()V
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

.method public onDisconnected()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.autofill.augmented.IAugmentedAutofillService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultImpl()Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultImpl()Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onDisconnected()V
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

.method public onFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p9

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    :try_start_c
    const-string v0, "android.service.autofill.augmented.IAugmentedAutofillService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move/from16 v10, p1

    invoke-virtual {v11, v10}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v8, p2

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move/from16 v9, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_a1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v12, :cond_30

    :try_start_24
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v12, v11, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2b

    goto :goto_33

    :catchall_2b
    move-exception v0

    move-object/from16 v16, v11

    goto/16 :goto_a4

    :cond_30
    :try_start_30
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_a1

    :goto_33
    if-eqz v13, :cond_3c

    :try_start_35
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v13, v11, v1}, Landroid/view/autofill/AutofillId;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_2b

    goto :goto_3f

    :cond_3c
    :try_start_3c
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_a1

    :goto_3f
    if-eqz v14, :cond_48

    :try_start_41
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v14, v11, v1}, Landroid/view/autofill/AutofillValue;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_2b

    goto :goto_4b

    :cond_48
    :try_start_48
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4b
    move-wide/from16 v6, p7

    invoke-virtual {v11, v6, v7}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_a1

    if-eqz v15, :cond_59

    :try_start_52
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v15, v11, v1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_2b

    goto :goto_5c

    :cond_59
    :try_start_59
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_a1

    :goto_5c
    const/4 v1, 0x0

    if-eqz p10, :cond_64

    :try_start_5f
    invoke-interface/range {p10 .. p10}, Landroid/service/autofill/augmented/IFillCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_2b

    goto :goto_65

    :cond_64
    move-object v2, v1

    :goto_65
    :try_start_65
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object/from16 v5, p0

    iget-object v2, v5, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    invoke-interface {v2, v3, v11, v1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_9a

    invoke-static {}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultImpl()Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object v1

    if-eqz v1, :cond_9a

    invoke-static {}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultImpl()Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object v1
    :try_end_7d
    .catchall {:try_start_65 .. :try_end_7d} :catchall_a1

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v16, v11

    move-object/from16 v11, p10

    :try_start_91
    invoke-interface/range {v1 .. v11}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_98

    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_98
    move-exception v0

    goto :goto_a4

    :cond_9a
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_a1
    move-exception v0

    move-object/from16 v16, v11

    :goto_a4
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
