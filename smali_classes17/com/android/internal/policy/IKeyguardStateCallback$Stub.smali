.class public abstract Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.super Landroid/os/Binder;
.source "IKeyguardStateCallback.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardStateCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardStateCallback"

.field static final TRANSACTION_onHasLockscreenWallpaperChanged:I = 0x5

.field static final TRANSACTION_onInputRestrictedStateChanged:I = 0x3

.field static final TRANSACTION_onShowingStateChanged:I = 0x1

.field static final TRANSACTION_onSimSecureStateChanged:I = 0x2

.field static final TRANSACTION_onTrustedChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardStateCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/IKeyguardStateCallback;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/policy/IKeyguardStateCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/policy/IKeyguardStateCallback;
    .registers 1

    sget-object v0, Lcom/android/internal/policy/IKeyguardStateCallback$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/policy/IKeyguardStateCallback;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-eq p0, v0, :cond_11

    const/4 v0, 0x0

    return-object v0

    :cond_11
    const-string/jumbo v0, "onHasLockscreenWallpaperChanged"

    return-object v0

    :cond_15
    const-string/jumbo v0, "onTrustedChanged"

    return-object v0

    :cond_19
    const-string/jumbo v0, "onInputRestrictedStateChanged"

    return-object v0

    :cond_1d
    const-string/jumbo v0, "onSimSecureStateChanged"

    return-object v0

    :cond_21
    const-string/jumbo v0, "onShowingStateChanged"

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/internal/policy/IKeyguardStateCallback;)Z
    .registers 3

    sget-object v0, Lcom/android/internal/policy/IKeyguardStateCallback$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/policy/IKeyguardStateCallback;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/android/internal/policy/IKeyguardStateCallback$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/policy/IKeyguardStateCallback;

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

    invoke-static {p1}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.internal.policy.IKeyguardStateCallback"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_64

    const/4 v3, 0x2

    if-eq p1, v3, :cond_53

    const/4 v3, 0x3

    if-eq p1, v3, :cond_42

    const/4 v3, 0x4

    if-eq p1, v3, :cond_31

    const/4 v3, 0x5

    if-eq p1, v3, :cond_20

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_1c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2a

    move v1, v2

    :cond_2a
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onHasLockscreenWallpaperChanged(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_31
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3b

    move v1, v2

    :cond_3b
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onTrustedChanged(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_42
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4c

    move v1, v2

    :cond_4c
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onInputRestrictedStateChanged(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_53
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5d

    move v1, v2

    :cond_5d
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onSimSecureStateChanged(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_64
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6e

    move v1, v2

    :cond_6e
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onShowingStateChanged(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2
.end method
