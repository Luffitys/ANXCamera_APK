.class public abstract Landroid/view/IDisplayWindowListener$Stub;
.super Landroid/os/Binder;
.source "IDisplayWindowListener.java"

# interfaces
.implements Landroid/view/IDisplayWindowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDisplayWindowListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDisplayWindowListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IDisplayWindowListener"

.field static final TRANSACTION_onDisplayAdded:I = 0x1

.field static final TRANSACTION_onDisplayConfigurationChanged:I = 0x2

.field static final TRANSACTION_onDisplayRemoved:I = 0x3

.field static final TRANSACTION_onFixedRotationFinished:I = 0x5

.field static final TRANSACTION_onFixedRotationStarted:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IDisplayWindowListener"

    invoke-virtual {p0, p0, v0}, Landroid/view/IDisplayWindowListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.view.IDisplayWindowListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IDisplayWindowListener;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/view/IDisplayWindowListener;

    return-object v1

    :cond_14
    new-instance v1, Landroid/view/IDisplayWindowListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IDisplayWindowListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/view/IDisplayWindowListener;
    .registers 1

    sget-object v0, Landroid/view/IDisplayWindowListener$Stub$Proxy;->sDefaultImpl:Landroid/view/IDisplayWindowListener;

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
    const-string/jumbo v0, "onFixedRotationFinished"

    return-object v0

    :cond_15
    const-string/jumbo v0, "onFixedRotationStarted"

    return-object v0

    :cond_19
    const-string/jumbo v0, "onDisplayRemoved"

    return-object v0

    :cond_1d
    const-string/jumbo v0, "onDisplayConfigurationChanged"

    return-object v0

    :cond_21
    const-string/jumbo v0, "onDisplayAdded"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/view/IDisplayWindowListener;)Z
    .registers 3

    sget-object v0, Landroid/view/IDisplayWindowListener$Stub$Proxy;->sDefaultImpl:Landroid/view/IDisplayWindowListener;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/view/IDisplayWindowListener$Stub$Proxy;->sDefaultImpl:Landroid/view/IDisplayWindowListener;

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

    invoke-static {p1}, Landroid/view/IDisplayWindowListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.view.IDisplayWindowListener"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_44

    const/4 v2, 0x3

    if-eq p1, v2, :cond_39

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2a

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1f

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1b

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/IDisplayWindowListener$Stub;->onFixedRotationFinished(I)V

    return v1

    :cond_2a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/view/IDisplayWindowListener$Stub;->onFixedRotationStarted(II)V

    return v1

    :cond_39
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/IDisplayWindowListener$Stub;->onDisplayRemoved(I)V

    return v1

    :cond_44
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5a

    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x0

    :goto_5b
    invoke-virtual {p0, v2, v3}, Landroid/view/IDisplayWindowListener$Stub;->onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V

    return v1

    :cond_5f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/IDisplayWindowListener$Stub;->onDisplayAdded(I)V

    return v1
.end method
