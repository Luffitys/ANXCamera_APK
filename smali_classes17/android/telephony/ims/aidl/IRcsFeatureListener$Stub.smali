.class public abstract Landroid/telephony/ims/aidl/IRcsFeatureListener$Stub;
.super Landroid/os/Binder;
.source "IRcsFeatureListener.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IRcsFeatureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IRcsFeatureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IRcsFeatureListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.IRcsFeatureListener"

.field static final TRANSACTION_onCapabilityRequestResponseOptions:I = 0x6

.field static final TRANSACTION_onCapabilityRequestResponsePresence:I = 0x3

.field static final TRANSACTION_onCommandUpdate:I = 0x1

.field static final TRANSACTION_onNetworkResponse:I = 0x2

.field static final TRANSACTION_onNotifyUpdateCapabilities:I = 0x4

.field static final TRANSACTION_onRemoteCapabilityRequest:I = 0x7

.field static final TRANSACTION_onUnpublish:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.telephony.ims.aidl.IRcsFeatureListener"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IRcsFeatureListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsFeatureListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.telephony.ims.aidl.IRcsFeatureListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IRcsFeatureListener;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IRcsFeatureListener;

    return-object v1

    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IRcsFeatureListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IRcsFeatureListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/telephony/ims/aidl/IRcsFeatureListener;
    .registers 1

    sget-object v0, Landroid/telephony/ims/aidl/IRcsFeatureListener$Stub$Proxy;->sDefaultImpl:Landroid/telephony/ims/aidl/IRcsFeatureListener;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_22

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "onRemoteCapabilityRequest"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "onCapabilityRequestResponseOptions"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "onUnpublish"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "onNotifyUpdateCapabilities"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "onCapabilityRequestResponsePresence"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "onNetworkResponse"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "onCommandUpdate"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Landroid/telephony/ims/aidl/IRcsFeatureListener;)Z
    .registers 3

    sget-object v0, Landroid/telephony/ims/aidl/IRcsFeatureListener$Stub$Proxy;->sDefaultImpl:Landroid/telephony/ims/aidl/IRcsFeatureListener;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/telephony/ims/aidl/IRcsFeatureListener$Stub$Proxy;->sDefaultImpl:Landroid/telephony/ims/aidl/IRcsFeatureListener;

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

    invoke-static {p1}, Landroid/telephony/ims/aidl/IRcsFeatureListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.telephony.ims.aidl.IRcsFeatureListener"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_a3

    packed-switch p1, :pswitch_data_a8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_32

    sget-object v3, Landroid/telephony/ims/RcsContactUceCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RcsContactUceCapability;

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    :goto_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Landroid/telephony/ims/aidl/IRcsFeatureListener$Stub;->onRemoteCapabilityRequest(Landroid/net/Uri;Landroid/telephony/ims/RcsContactUceCapability;I)V

    return v2

    :pswitch_3b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_55

    sget-object v4, Landroid/telephony/ims/RcsContactUceCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/RcsContactUceCapability;

    goto :goto_56

    :cond_55
    const/4 v4, 0x0

    :goto_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/telephony/ims/aidl/IRcsFeatureListener$Stub;->onCapabilityRequestResponseOptions(ILjava/lang/String;Landroid/telephony/ims/RcsContactUceCapability;I)V

    return v2

    :pswitch_5e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IRcsFeatureListener$Stub;->onUnpublish()V

    return v2

    :pswitch_65
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/ims/aidl/IRcsFeatureListener$Stub;->onNotifyUpdateCapabilities(I)V

    return v2

    :pswitch_70
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/telephony/ims/RcsContactUceCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/telephony/ims/aidl/IRcsFeatureListener$Stub;->onCapabilityRequestResponsePresence(Ljava/util/List;I)V

    return v2

    :pswitch_81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Landroid/telephony/ims/aidl/IRcsFeatureListener$Stub;->onNetworkResponse(ILjava/lang/String;I)V

    return v2

    :pswitch_94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/telephony/ims/aidl/IRcsFeatureListener$Stub;->onCommandUpdate(II)V

    return v2

    :cond_a3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_94
        :pswitch_81
        :pswitch_70
        :pswitch_65
        :pswitch_5e
        :pswitch_3b
        :pswitch_10
    .end packed-switch
.end method
