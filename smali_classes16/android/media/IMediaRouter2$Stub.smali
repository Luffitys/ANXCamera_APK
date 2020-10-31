.class public abstract Landroid/media/IMediaRouter2$Stub;
.super Landroid/os/Binder;
.source "IMediaRouter2.java"

# interfaces
.implements Landroid/media/IMediaRouter2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRouter2$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IMediaRouter2"

.field static final TRANSACTION_notifyRouterRegistered:I = 0x1

.field static final TRANSACTION_notifyRoutesAdded:I = 0x2

.field static final TRANSACTION_notifyRoutesChanged:I = 0x4

.field static final TRANSACTION_notifyRoutesRemoved:I = 0x3

.field static final TRANSACTION_notifySessionCreated:I = 0x5

.field static final TRANSACTION_notifySessionInfoChanged:I = 0x6

.field static final TRANSACTION_notifySessionReleased:I = 0x7

.field static final TRANSACTION_requestCreateSessionByManager:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.IMediaRouter2"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRouter2$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.media.IMediaRouter2"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IMediaRouter2;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/media/IMediaRouter2;

    return-object v1

    :cond_14
    new-instance v1, Landroid/media/IMediaRouter2$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMediaRouter2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/media/IMediaRouter2;
    .registers 1

    sget-object v0, Landroid/media/IMediaRouter2$Stub$Proxy;->sDefaultImpl:Landroid/media/IMediaRouter2;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_26

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "requestCreateSessionByManager"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "notifySessionReleased"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "notifySessionInfoChanged"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "notifySessionCreated"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "notifyRoutesChanged"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "notifyRoutesRemoved"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "notifyRoutesAdded"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "notifyRouterRegistered"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Landroid/media/IMediaRouter2;)Z
    .registers 3

    sget-object v0, Landroid/media/IMediaRouter2$Stub$Proxy;->sDefaultImpl:Landroid/media/IMediaRouter2;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/media/IMediaRouter2$Stub$Proxy;->sDefaultImpl:Landroid/media/IMediaRouter2;

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

    invoke-static {p1}, Landroid/media/IMediaRouter2$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.media.IMediaRouter2"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_c8

    packed-switch p1, :pswitch_data_cc

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_36

    sget-object v5, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    goto :goto_37

    :cond_36
    const/4 v5, 0x0

    :goto_37
    invoke-virtual {p0, v3, v4, v1, v5}, Landroid/media/IMediaRouter2$Stub;->requestCreateSessionByManager(JLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return v2

    :pswitch_3b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4d

    sget-object v1, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x0

    :goto_4e
    invoke-virtual {p0, v1}, Landroid/media/IMediaRouter2$Stub;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V

    return v2

    :pswitch_52
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_64

    sget-object v1, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    goto :goto_65

    :cond_64
    const/4 v1, 0x0

    :goto_65
    invoke-virtual {p0, v1}, Landroid/media/IMediaRouter2$Stub;->notifySessionInfoChanged(Landroid/media/RoutingSessionInfo;)V

    return v2

    :pswitch_69
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7f

    sget-object v3, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    goto :goto_80

    :cond_7f
    const/4 v3, 0x0

    :goto_80
    invoke-virtual {p0, v1, v3}, Landroid/media/IMediaRouter2$Stub;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V

    return v2

    :pswitch_84
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/IMediaRouter2$Stub;->notifyRoutesChanged(Ljava/util/List;)V

    return v2

    :pswitch_91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/IMediaRouter2$Stub;->notifyRoutesRemoved(Ljava/util/List;)V

    return v2

    :pswitch_9e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/IMediaRouter2$Stub;->notifyRoutesAdded(Ljava/util/List;)V

    return v2

    :pswitch_ab
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c3

    sget-object v3, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    goto :goto_c4

    :cond_c3
    const/4 v3, 0x0

    :goto_c4
    invoke-virtual {p0, v1, v3}, Landroid/media/IMediaRouter2$Stub;->notifyRouterRegistered(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    return v2

    :cond_c8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_ab
        :pswitch_9e
        :pswitch_91
        :pswitch_84
        :pswitch_69
        :pswitch_52
        :pswitch_3b
        :pswitch_10
    .end packed-switch
.end method
