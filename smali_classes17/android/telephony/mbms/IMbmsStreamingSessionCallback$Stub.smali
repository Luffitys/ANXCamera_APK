.class public abstract Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub;
.super Landroid/os/Binder;
.source "IMbmsStreamingSessionCallback.java"

# interfaces
.implements Landroid/telephony/mbms/IMbmsStreamingSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/IMbmsStreamingSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.mbms.IMbmsStreamingSessionCallback"

.field static final TRANSACTION_onError:I = 0x1

.field static final TRANSACTION_onMiddlewareReady:I = 0x3

.field static final TRANSACTION_onStreamingServicesUpdated:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.telephony.mbms.IMbmsStreamingSessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IMbmsStreamingSessionCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.telephony.mbms.IMbmsStreamingSessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/mbms/IMbmsStreamingSessionCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/telephony/mbms/IMbmsStreamingSessionCallback;

    return-object v1

    :cond_14
    new-instance v1, Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/telephony/mbms/IMbmsStreamingSessionCallback;
    .registers 1

    sget-object v0, Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub$Proxy;->sDefaultImpl:Landroid/telephony/mbms/IMbmsStreamingSessionCallback;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    const-string/jumbo v0, "onMiddlewareReady"

    return-object v0

    :cond_f
    const-string/jumbo v0, "onStreamingServicesUpdated"

    return-object v0

    :cond_13
    const-string/jumbo v0, "onError"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/telephony/mbms/IMbmsStreamingSessionCallback;)Z
    .registers 3

    sget-object v0, Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub$Proxy;->sDefaultImpl:Landroid/telephony/mbms/IMbmsStreamingSessionCallback;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub$Proxy;->sDefaultImpl:Landroid/telephony/mbms/IMbmsStreamingSessionCallback;

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

    invoke-static {p1}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.telephony.mbms.IMbmsStreamingSessionCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2d

    const/4 v2, 0x2

    if-eq p1, v2, :cond_20

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

    invoke-virtual {p0}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub;->onMiddlewareReady()V

    return v1

    :cond_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v2, Landroid/telephony/mbms/StreamingServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub;->onStreamingServicesUpdated(Ljava/util/List;)V

    return v1

    :cond_2d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub;->onError(ILjava/lang/String;)V

    return v1
.end method
