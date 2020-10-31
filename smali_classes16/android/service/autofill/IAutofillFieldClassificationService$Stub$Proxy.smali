.class Landroid/service/autofill/IAutofillFieldClassificationService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAutofillFieldClassificationService.java"

# interfaces
.implements Landroid/service/autofill/IAutofillFieldClassificationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/IAutofillFieldClassificationService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/service/autofill/IAutofillFieldClassificationService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/IAutofillFieldClassificationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/IAutofillFieldClassificationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map;",
            "Ljava/util/Map;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    :try_start_8
    const-string v0, "android.service.autofill.IAutofillFieldClassificationService"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v10, :cond_18

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v10, v12, v1}, Landroid/os/RemoteCallback;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    :cond_18
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_7c

    :goto_1b
    move-object/from16 v13, p2

    :try_start_1d
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_7a

    move-object/from16 v14, p3

    :try_start_22
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_78

    move-object/from16 v15, p4

    :try_start_27
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move-object/from16 v9, p5

    invoke-virtual {v12, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz v11, :cond_38

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v11, v12, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3b

    :cond_38
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3b
    move-object/from16 v8, p7

    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move-object/from16 v7, p8

    invoke-virtual {v12, v7}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move-object/from16 v6, p0

    iget-object v1, v6, Landroid/service/autofill/IAutofillFieldClassificationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v12, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_71

    invoke-static {}, Landroid/service/autofill/IAutofillFieldClassificationService$Stub;->getDefaultImpl()Landroid/service/autofill/IAutofillFieldClassificationService;

    move-result-object v1

    if-eqz v1, :cond_71

    invoke-static {}, Landroid/service/autofill/IAutofillFieldClassificationService$Stub;->getDefaultImpl()Landroid/service/autofill/IAutofillFieldClassificationService;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Landroid/service/autofill/IAutofillFieldClassificationService;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_6d
    .catchall {:try_start_27 .. :try_end_6d} :catchall_76

    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_71
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_76
    move-exception v0

    goto :goto_83

    :catchall_78
    move-exception v0

    goto :goto_81

    :catchall_7a
    move-exception v0

    goto :goto_7f

    :catchall_7c
    move-exception v0

    move-object/from16 v13, p2

    :goto_7f
    move-object/from16 v14, p3

    :goto_81
    move-object/from16 v15, p4

    :goto_83
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.service.autofill.IAutofillFieldClassificationService"

    return-object v0
.end method
