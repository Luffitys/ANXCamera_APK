.class public abstract Landroid/service/controls/IControlsSubscriber$Stub;
.super Landroid/os/Binder;
.source "IControlsSubscriber.java"

# interfaces
.implements Landroid/service/controls/IControlsSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/IControlsSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/IControlsSubscriber$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.controls.IControlsSubscriber"

.field static final TRANSACTION_onComplete:I = 0x4

.field static final TRANSACTION_onError:I = 0x3

.field static final TRANSACTION_onNext:I = 0x2

.field static final TRANSACTION_onSubscribe:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.controls.IControlsSubscriber"

    invoke-virtual {p0, p0, v0}, Landroid/service/controls/IControlsSubscriber$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsSubscriber;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.service.controls.IControlsSubscriber"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/controls/IControlsSubscriber;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/service/controls/IControlsSubscriber;

    return-object v1

    :cond_14
    new-instance v1, Landroid/service/controls/IControlsSubscriber$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/controls/IControlsSubscriber$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/service/controls/IControlsSubscriber;
    .registers 1

    sget-object v0, Landroid/service/controls/IControlsSubscriber$Stub$Proxy;->sDefaultImpl:Landroid/service/controls/IControlsSubscriber;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    const-string/jumbo v0, "onComplete"

    return-object v0

    :cond_12
    const-string/jumbo v0, "onError"

    return-object v0

    :cond_16
    const-string/jumbo v0, "onNext"

    return-object v0

    :cond_1a
    const-string/jumbo v0, "onSubscribe"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/service/controls/IControlsSubscriber;)Z
    .registers 3

    sget-object v0, Landroid/service/controls/IControlsSubscriber$Stub$Proxy;->sDefaultImpl:Landroid/service/controls/IControlsSubscriber;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/service/controls/IControlsSubscriber$Stub$Proxy;->sDefaultImpl:Landroid/service/controls/IControlsSubscriber;

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

    invoke-static {p1}, Landroid/service/controls/IControlsSubscriber$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.service.controls.IControlsSubscriber"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_51

    const/4 v2, 0x2

    if-eq p1, v2, :cond_36

    const/4 v2, 0x3

    if-eq p1, v2, :cond_27

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

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/service/controls/IControlsSubscriber$Stub;->onComplete(Landroid/os/IBinder;)V

    return v1

    :cond_27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/service/controls/IControlsSubscriber$Stub;->onError(Landroid/os/IBinder;Ljava/lang/String;)V

    return v1

    :cond_36
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4c

    sget-object v3, Landroid/service/controls/Control;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/controls/Control;

    goto :goto_4d

    :cond_4c
    const/4 v3, 0x0

    :goto_4d
    invoke-virtual {p0, v2, v3}, Landroid/service/controls/IControlsSubscriber$Stub;->onNext(Landroid/os/IBinder;Landroid/service/controls/Control;)V

    return v1

    :cond_51
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/controls/IControlsSubscription$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsSubscription;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/service/controls/IControlsSubscriber$Stub;->onSubscribe(Landroid/os/IBinder;Landroid/service/controls/IControlsSubscription;)V

    return v1
.end method
