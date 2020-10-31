.class public abstract Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;
.super Landroid/os/Binder;
.source "IMultiClientInputMethodPrivilegedOperations.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.inputmethod.IMultiClientInputMethodPrivilegedOperations"

.field static final TRANSACTION_acceptClient:I = 0x3

.field static final TRANSACTION_createInputMethodWindowToken:I = 0x1

.field static final TRANSACTION_deleteInputMethodWindowToken:I = 0x2

.field static final TRANSACTION_isUidAllowedOnDisplay:I = 0x5

.field static final TRANSACTION_reportImeWindowTarget:I = 0x4

.field static final TRANSACTION_setActive:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.inputmethod.IMultiClientInputMethodPrivilegedOperations"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.inputmethod.IMultiClientInputMethodPrivilegedOperations"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;
    .registers 1

    sget-object v0, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "setActive"

    return-object v0

    :pswitch_9
    const-string v0, "isUidAllowedOnDisplay"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "reportImeWindowTarget"

    return-object v0

    :pswitch_10
    const-string v0, "acceptClient"

    return-object v0

    :pswitch_13
    const-string v0, "deleteInputMethodWindowToken"

    return-object v0

    :pswitch_16
    const-string v0, "createInputMethodWindowToken"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;)Z
    .registers 3

    sget-object v0, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.internal.inputmethod.IMultiClientInputMethodPrivilegedOperations"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_a1

    packed-switch p1, :pswitch_data_a6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    move v3, v2

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->setActive(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->isUidAllowedOnDisplay(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_3d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->reportImeWindowTarget(IILandroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_53
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_79

    sget-object v5, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InputChannel;

    goto :goto_7a

    :cond_79
    const/4 v5, 0x0

    :goto_7a
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->acceptClient(ILcom/android/internal/view/IInputMethodSession;Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;Landroid/view/InputChannel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->deleteInputMethodWindowToken(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_8f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->createInputMethodWindowToken(I)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    :cond_a1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_81
        :pswitch_53
        :pswitch_3d
        :pswitch_27
        :pswitch_10
    .end packed-switch
.end method
