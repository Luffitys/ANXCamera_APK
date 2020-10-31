.class public abstract Lcom/android/internal/view/IInputMethodClient$Stub;
.super Landroid/os/Binder;
.source "IInputMethodClient.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodClient"

.field static final TRANSACTION_applyImeVisibility:I = 0x7

.field static final TRANSACTION_onBindMethod:I = 0x1

.field static final TRANSACTION_onUnbindMethod:I = 0x2

.field static final TRANSACTION_reportFullscreenMode:I = 0x5

.field static final TRANSACTION_reportPreRendered:I = 0x6

.field static final TRANSACTION_scheduleStartInputIfNecessary:I = 0x4

.field static final TRANSACTION_setActive:I = 0x3

.field static final TRANSACTION_updateActivityViewToScreenMatrix:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.view.IInputMethodClient"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.view.IInputMethodClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/IInputMethodClient;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/view/IInputMethodClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/view/IInputMethodClient;
    .registers 1

    sget-object v0, Lcom/android/internal/view/IInputMethodClient$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/view/IInputMethodClient;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string v0, "updateActivityViewToScreenMatrix"

    return-object v0

    :pswitch_8
    const-string v0, "applyImeVisibility"

    return-object v0

    :pswitch_b
    const-string v0, "reportPreRendered"

    return-object v0

    :pswitch_e
    const-string v0, "reportFullscreenMode"

    return-object v0

    :pswitch_11
    const-string v0, "scheduleStartInputIfNecessary"

    return-object v0

    :pswitch_14
    const-string v0, "setActive"

    return-object v0

    :pswitch_17
    const-string v0, "onUnbindMethod"

    return-object v0

    :pswitch_1a
    const-string v0, "onBindMethod"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Lcom/android/internal/view/IInputMethodClient;)Z
    .registers 3

    sget-object v0, Lcom/android/internal/view/IInputMethodClient$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/view/IInputMethodClient;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/android/internal/view/IInputMethodClient$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/view/IInputMethodClient;

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

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

    invoke-static {p1}, Lcom/android/internal/view/IInputMethodClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.internal.view.IInputMethodClient"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_9e

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_a2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->updateActivityViewToScreenMatrix(I[F)V

    return v2

    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2a

    move v1, v2

    :cond_2a
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->applyImeVisibility(Z)V

    return v2

    :pswitch_2e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_40

    sget-object v1, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/EditorInfo;

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :goto_41
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->reportPreRendered(Landroid/view/inputmethod/EditorInfo;)V

    return v2

    :pswitch_45
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4f

    move v1, v2

    :cond_4f
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->reportFullscreenMode(Z)V

    return v2

    :pswitch_53
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5d

    move v1, v2

    :cond_5d
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->scheduleStartInputIfNecessary(Z)V

    return v2

    :pswitch_61
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6c

    move v3, v2

    goto :goto_6d

    :cond_6c
    move v3, v1

    :goto_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_74

    move v1, v2

    :cond_74
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->setActive(ZZ)V

    return v2

    :pswitch_78
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->onUnbindMethod(II)V

    return v2

    :pswitch_87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_99

    sget-object v1, Lcom/android/internal/view/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/InputBindResult;

    goto :goto_9a

    :cond_99
    const/4 v1, 0x0

    :goto_9a
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V

    return v2

    :cond_9e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_87
        :pswitch_78
        :pswitch_61
        :pswitch_53
        :pswitch_45
        :pswitch_2e
        :pswitch_20
        :pswitch_11
    .end packed-switch
.end method
