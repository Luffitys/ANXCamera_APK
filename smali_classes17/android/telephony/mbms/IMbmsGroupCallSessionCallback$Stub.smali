.class public abstract Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;
.super Landroid/os/Binder;
.source "IMbmsGroupCallSessionCallback.java"

# interfaces
.implements Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.mbms.IMbmsGroupCallSessionCallback"

.field static final TRANSACTION_onAvailableSaisUpdated:I = 0x2

.field static final TRANSACTION_onError:I = 0x1

.field static final TRANSACTION_onMiddlewareReady:I = 0x4

.field static final TRANSACTION_onServiceInterfaceAvailable:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.telephony.mbms.IMbmsGroupCallSessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.telephony.mbms.IMbmsGroupCallSessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    return-object v1

    :cond_14
    new-instance v1, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;
    .registers 1

    sget-object v0, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub$Proxy;->sDefaultImpl:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

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
    const-string/jumbo v0, "onMiddlewareReady"

    return-object v0

    :cond_12
    const-string/jumbo v0, "onServiceInterfaceAvailable"

    return-object v0

    :cond_16
    const-string/jumbo v0, "onAvailableSaisUpdated"

    return-object v0

    :cond_1a
    const-string/jumbo v0, "onError"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;)Z
    .registers 3

    sget-object v0, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub$Proxy;->sDefaultImpl:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub$Proxy;->sDefaultImpl:Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

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

    invoke-static {p1}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.telephony.mbms.IMbmsGroupCallSessionCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_49

    const/4 v2, 0x2

    if-eq p1, v2, :cond_32

    const/4 v2, 0x3

    if-eq p1, v2, :cond_23

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

    invoke-virtual {p0}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;->onMiddlewareReady()V

    return v1

    :cond_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;->onServiceInterfaceAvailable(Ljava/lang/String;I)V

    return v1

    :cond_32
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;->onAvailableSaisUpdated(Ljava/util/List;Ljava/util/List;)V

    return v1

    :cond_49
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;->onError(ILjava/lang/String;)V

    return v1
.end method
