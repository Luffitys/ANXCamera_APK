.class public abstract Landroid/view/IDisplayWindowInsetsController$Stub;
.super Landroid/os/Binder;
.source "IDisplayWindowInsetsController.java"

# interfaces
.implements Landroid/view/IDisplayWindowInsetsController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDisplayWindowInsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IDisplayWindowInsetsController"

.field static final TRANSACTION_hideInsets:I = 0x4

.field static final TRANSACTION_insetsChanged:I = 0x1

.field static final TRANSACTION_insetsControlChanged:I = 0x2

.field static final TRANSACTION_showInsets:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IDisplayWindowInsetsController"

    invoke-virtual {p0, p0, v0}, Landroid/view/IDisplayWindowInsetsController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowInsetsController;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.view.IDisplayWindowInsetsController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IDisplayWindowInsetsController;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/view/IDisplayWindowInsetsController;

    return-object v1

    :cond_14
    new-instance v1, Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/view/IDisplayWindowInsetsController;
    .registers 1

    sget-object v0, Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;->sDefaultImpl:Landroid/view/IDisplayWindowInsetsController;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    const-string v0, "hideInsets"

    return-object v0

    :cond_11
    const-string/jumbo v0, "showInsets"

    return-object v0

    :cond_15
    const-string v0, "insetsControlChanged"

    return-object v0

    :cond_18
    const-string v0, "insetsChanged"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/view/IDisplayWindowInsetsController;)Z
    .registers 3

    sget-object v0, Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;->sDefaultImpl:Landroid/view/IDisplayWindowInsetsController;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;->sDefaultImpl:Landroid/view/IDisplayWindowInsetsController;

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

    invoke-static {p1}, Landroid/view/IDisplayWindowInsetsController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.view.IDisplayWindowInsetsController"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_60

    const/4 v2, 0x2

    if-eq p1, v2, :cond_41

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2f

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1d

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_19

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    move v3, v1

    :cond_2b
    invoke-virtual {p0, v2, v3}, Landroid/view/IDisplayWindowInsetsController$Stub;->hideInsets(IZ)V

    return v1

    :cond_2f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d

    move v3, v1

    :cond_3d
    invoke-virtual {p0, v2, v3}, Landroid/view/IDisplayWindowInsetsController$Stub;->showInsets(IZ)V

    return v1

    :cond_41
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_53

    sget-object v2, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsState;

    goto :goto_54

    :cond_53
    const/4 v2, 0x0

    :goto_54
    sget-object v3, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/InsetsSourceControl;

    invoke-virtual {p0, v2, v3}, Landroid/view/IDisplayWindowInsetsController$Stub;->insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    return v1

    :cond_60
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_72

    sget-object v2, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsState;

    goto :goto_73

    :cond_72
    const/4 v2, 0x0

    :goto_73
    invoke-virtual {p0, v2}, Landroid/view/IDisplayWindowInsetsController$Stub;->insetsChanged(Landroid/view/InsetsState;)V

    return v1
.end method
