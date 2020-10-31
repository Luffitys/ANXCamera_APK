.class public abstract Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IMediaRoute2ProviderServiceCallback.java"

# interfaces
.implements Landroid/media/IMediaRoute2ProviderServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRoute2ProviderServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRoute2ProviderServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IMediaRoute2ProviderServiceCallback"

.field static final TRANSACTION_notifyRequestFailed:I = 0x5

.field static final TRANSACTION_notifySessionCreated:I = 0x2

.field static final TRANSACTION_notifySessionReleased:I = 0x4

.field static final TRANSACTION_notifySessionUpdated:I = 0x3

.field static final TRANSACTION_updateState:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.IMediaRoute2ProviderServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRoute2ProviderServiceCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.media.IMediaRoute2ProviderServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/media/IMediaRoute2ProviderServiceCallback;

    return-object v1

    :cond_14
    new-instance v1, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/media/IMediaRoute2ProviderServiceCallback;
    .registers 1

    sget-object v0, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub$Proxy;->sDefaultImpl:Landroid/media/IMediaRoute2ProviderServiceCallback;

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
    const-string/jumbo v0, "notifyRequestFailed"

    return-object v0

    :cond_15
    const-string/jumbo v0, "notifySessionReleased"

    return-object v0

    :cond_19
    const-string/jumbo v0, "notifySessionUpdated"

    return-object v0

    :cond_1d
    const-string/jumbo v0, "notifySessionCreated"

    return-object v0

    :cond_21
    const-string/jumbo v0, "updateState"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/media/IMediaRoute2ProviderServiceCallback;)Z
    .registers 3

    sget-object v0, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub$Proxy;->sDefaultImpl:Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub$Proxy;->sDefaultImpl:Landroid/media/IMediaRoute2ProviderServiceCallback;

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

    invoke-static {p1}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.media.IMediaRoute2ProviderServiceCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_77

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5c

    const/4 v2, 0x3

    if-eq p1, v2, :cond_45

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2e

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

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->notifyRequestFailed(JI)V

    return v1

    :cond_2e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_40

    sget-object v2, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    :goto_41
    invoke-virtual {p0, v2}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V

    return v1

    :cond_45
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_57

    sget-object v2, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    invoke-virtual {p0, v2}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V

    return v1

    :cond_5c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_72

    sget-object v4, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/RoutingSessionInfo;

    goto :goto_73

    :cond_72
    const/4 v4, 0x0

    :goto_73
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V

    return v1

    :cond_77
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_89

    sget-object v2, Landroid/media/MediaRoute2ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2ProviderInfo;

    goto :goto_8a

    :cond_89
    const/4 v2, 0x0

    :goto_8a
    invoke-virtual {p0, v2}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->updateState(Landroid/media/MediaRoute2ProviderInfo;)V

    return v1
.end method
