.class public abstract Lcom/android/internal/inputmethod/IMultiClientInputMethod$Stub;
.super Landroid/os/Binder;
.source "IMultiClientInputMethod.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IMultiClientInputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IMultiClientInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IMultiClientInputMethod$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.inputmethod.IMultiClientInputMethod"

.field static final TRANSACTION_addClient:I = 0x2

.field static final TRANSACTION_initialize:I = 0x1

.field static final TRANSACTION_removeClient:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.inputmethod.IMultiClientInputMethod"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IMultiClientInputMethod$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IMultiClientInputMethod;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.inputmethod.IMultiClientInputMethod"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/inputmethod/IMultiClientInputMethod$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IMultiClientInputMethod$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/inputmethod/IMultiClientInputMethod;
    .registers 1

    sget-object v0, Lcom/android/internal/inputmethod/IMultiClientInputMethod$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    const-string/jumbo v0, "removeClient"

    return-object v0

    :cond_f
    const-string v0, "addClient"

    return-object v0

    :cond_12
    const-string v0, "initialize"

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/internal/inputmethod/IMultiClientInputMethod;)Z
    .registers 3

    sget-object v0, Lcom/android/internal/inputmethod/IMultiClientInputMethod$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/android/internal/inputmethod/IMultiClientInputMethod$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

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

    invoke-static {p1}, Lcom/android/internal/inputmethod/IMultiClientInputMethod$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "com.android.internal.inputmethod.IMultiClientInputMethod"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_24

    const/4 v2, 0x3

    if-eq p1, v2, :cond_19

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_15

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IMultiClientInputMethod$Stub;->removeClient(I)V

    return v1

    :cond_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/inputmethod/IMultiClientInputMethod$Stub;->addClient(IIII)V

    return v1

    :cond_3b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IMultiClientInputMethod$Stub;->initialize(Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;)V

    return v1
.end method
