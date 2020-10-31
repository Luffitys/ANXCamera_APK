.class Landroid/service/autofill/IInlineSuggestionRenderService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInlineSuggestionRenderService.java"

# interfaces
.implements Landroid/service/autofill/IInlineSuggestionRenderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/IInlineSuggestionRenderService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/service/autofill/IInlineSuggestionRenderService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/IInlineSuggestionRenderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/IInlineSuggestionRenderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public destroySuggestionViews(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.autofill.IInlineSuggestionRenderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/service/autofill/IInlineSuggestionRenderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->getDefaultImpl()Landroid/service/autofill/IInlineSuggestionRenderService;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->getDefaultImpl()Landroid/service/autofill/IInlineSuggestionRenderService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/service/autofill/IInlineSuggestionRenderService;->destroySuggestionViews(II)V
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

.method public getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.service.autofill.IInlineSuggestionRenderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/os/RemoteCallback;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    iget-object v2, p0, Landroid/service/autofill/IInlineSuggestionRenderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-static {}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->getDefaultImpl()Landroid/service/autofill/IInlineSuggestionRenderService;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-static {}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->getDefaultImpl()Landroid/service/autofill/IInlineSuggestionRenderService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/service/autofill/IInlineSuggestionRenderService;->getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_37

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.service.autofill.IInlineSuggestionRenderService"

    return-object v0
.end method

.method public renderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    :try_start_6
    const-string v0, "android.service.autofill.IInlineSuggestionRenderService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    invoke-interface/range {p1 .. p1}, Landroid/service/autofill/IInlineSuggestionUiCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_14

    :cond_13
    move-object v1, v0

    :goto_14
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v10, :cond_22

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v10, v11, v1}, Landroid/service/autofill/InlinePresentation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_25

    :cond_22
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_7b

    :goto_25
    move/from16 v12, p3

    :try_start_27
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_79

    move/from16 v13, p4

    :try_start_2c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_77

    move-object/from16 v14, p5

    :try_start_31
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_75

    move/from16 v15, p6

    :try_start_36
    invoke-virtual {v11, v15}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v9, p7

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p8

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v7, p0

    iget-object v1, v7, Landroid/service/autofill/IInlineSuggestionRenderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v1, v2, v11, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-static {}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->getDefaultImpl()Landroid/service/autofill/IInlineSuggestionRenderService;

    move-result-object v1

    if-eqz v1, :cond_6e

    invoke-static {}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->getDefaultImpl()Landroid/service/autofill/IInlineSuggestionRenderService;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Landroid/service/autofill/IInlineSuggestionRenderService;->renderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    :try_end_6a
    .catchall {:try_start_36 .. :try_end_6a} :catchall_73

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_6e
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_73
    move-exception v0

    goto :goto_84

    :catchall_75
    move-exception v0

    goto :goto_82

    :catchall_77
    move-exception v0

    goto :goto_80

    :catchall_79
    move-exception v0

    goto :goto_7e

    :catchall_7b
    move-exception v0

    move/from16 v12, p3

    :goto_7e
    move/from16 v13, p4

    :goto_80
    move-object/from16 v14, p5

    :goto_82
    move/from16 v15, p6

    :goto_84
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
