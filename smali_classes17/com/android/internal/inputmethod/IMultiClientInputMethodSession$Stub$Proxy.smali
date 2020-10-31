.class Lcom/android/internal/inputmethod/IMultiClientInputMethodSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMultiClientInputMethodSession.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IMultiClientInputMethodSession$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.android.internal.inputmethod.IMultiClientInputMethodSession"

    return-object v0
.end method

.method public hideSoftInput(ILandroid/os/ResultReceiver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.inputmethod.IMultiClientInputMethodSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    :cond_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    iget-object v2, p0, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-static {}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession$Stub;->getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-static {}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession$Stub;->getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;->hideSoftInput(ILandroid/os/ResultReceiver;)V
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

.method public showSoftInput(ILandroid/os/ResultReceiver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.android.internal.inputmethod.IMultiClientInputMethodSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    :cond_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    iget-object v2, p0, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-static {}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession$Stub;->getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-static {}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession$Stub;->getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;->showSoftInput(ILandroid/os/ResultReceiver;)V
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

.method public startInputOrWindowGainedFocus(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;III)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    :try_start_6
    const-string v0, "com.android.internal.inputmethod.IMultiClientInputMethodSession"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputContext;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_14

    :cond_13
    move-object v1, v0

    :goto_14
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_72

    move/from16 v10, p2

    :try_start_19
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v8, :cond_27

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v9, v1}, Landroid/view/inputmethod/EditorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2a

    :cond_27
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_6f

    :goto_2a
    move/from16 v11, p4

    :try_start_2c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_6c

    move/from16 v12, p5

    :try_start_31
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_69

    move/from16 v13, p6

    :try_start_36
    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_66

    move-object v14, p0

    :try_start_3a
    iget-object v1, v14, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v1, v2, v9, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-static {}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession$Stub;->getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    move-result-object v1

    if-eqz v1, :cond_5f

    invoke-static {}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession$Stub;->getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    move-result-object v1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;->startInputOrWindowGainedFocus(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;III)V
    :try_end_5b
    .catchall {:try_start_3a .. :try_end_5b} :catchall_64

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_5f
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_64
    move-exception v0

    goto :goto_7c

    :catchall_66
    move-exception v0

    move-object v14, p0

    goto :goto_7c

    :catchall_69
    move-exception v0

    move-object v14, p0

    goto :goto_7a

    :catchall_6c
    move-exception v0

    move-object v14, p0

    goto :goto_78

    :catchall_6f
    move-exception v0

    move-object v14, p0

    goto :goto_76

    :catchall_72
    move-exception v0

    move-object v14, p0

    move/from16 v10, p2

    :goto_76
    move/from16 v11, p4

    :goto_78
    move/from16 v12, p5

    :goto_7a
    move/from16 v13, p6

    :goto_7c
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
