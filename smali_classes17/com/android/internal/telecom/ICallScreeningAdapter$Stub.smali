.class public abstract Lcom/android/internal/telecom/ICallScreeningAdapter$Stub;
.super Landroid/os/Binder;
.source "ICallScreeningAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallScreeningAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallScreeningAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallScreeningAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.ICallScreeningAdapter"

.field static final TRANSACTION_allowCall:I = 0x1

.field static final TRANSACTION_disallowCall:I = 0x4

.field static final TRANSACTION_screenCallFurther:I = 0x3

.field static final TRANSACTION_silenceCall:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telecom.ICallScreeningAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallScreeningAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallScreeningAdapter;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.telecom.ICallScreeningAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/ICallScreeningAdapter;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/ICallScreeningAdapter;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/telecom/ICallScreeningAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ICallScreeningAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/telecom/ICallScreeningAdapter;
    .registers 1

    sget-object v0, Lcom/android/internal/telecom/ICallScreeningAdapter$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/telecom/ICallScreeningAdapter;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    const-string v0, "disallowCall"

    return-object v0

    :cond_11
    const-string/jumbo v0, "screenCallFurther"

    return-object v0

    :cond_15
    const-string/jumbo v0, "silenceCall"

    return-object v0

    :cond_19
    const-string v0, "allowCall"

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/internal/telecom/ICallScreeningAdapter;)Z
    .registers 3

    sget-object v0, Lcom/android/internal/telecom/ICallScreeningAdapter$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/telecom/ICallScreeningAdapter;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/android/internal/telecom/ICallScreeningAdapter$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/telecom/ICallScreeningAdapter;

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

    invoke-static {p1}, Lcom/android/internal/telecom/ICallScreeningAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.internal.telecom.ICallScreeningAdapter"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_63

    const/4 v2, 0x3

    if-eq p1, v2, :cond_58

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1c

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_18

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2c

    move v4, v1

    goto :goto_2d

    :cond_2c
    move v4, v3

    :goto_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_35

    move v5, v1

    goto :goto_36

    :cond_35
    move v5, v3

    :goto_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3e

    move v6, v1

    goto :goto_3f

    :cond_3e
    move v6, v3

    :goto_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4f

    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    move-object v9, v2

    goto :goto_51

    :cond_4f
    const/4 v2, 0x0

    move-object v9, v2

    :goto_51
    move-object v2, p0

    move-object v3, v8

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telecom/ICallScreeningAdapter$Stub;->disallowCall(Ljava/lang/String;ZZZLandroid/content/ComponentName;)V

    return v1

    :cond_58
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallScreeningAdapter$Stub;->screenCallFurther(Ljava/lang/String;)V

    return v1

    :cond_63
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallScreeningAdapter$Stub;->silenceCall(Ljava/lang/String;)V

    return v1

    :cond_6e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallScreeningAdapter$Stub;->allowCall(Ljava/lang/String;)V

    return v1
.end method
