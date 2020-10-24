.class public abstract Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/xiaomi/camera/rcs/IRemoteControlClient;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.camera.rcs.IRemoteControlClient"

.field static final TRANSACTION_customCallback:I = 0x3

.field static final TRANSACTION_streamingServerStatus:I = 0x1

.field static final TRANSACTION_streamingSessionStatus:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.camera.rcs.IRemoteControlClient"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/camera/rcs/IRemoteControlClient;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaomi.camera.rcs.IRemoteControlClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    return-object v0

    :cond_1
    new-instance v0, Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaomi/camera/rcs/IRemoteControlClient;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Z
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.xiaomi.camera.rcs.IRemoteControlClient"

    if-eq p1, v1, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    :cond_2
    invoke-interface {p0, p1, v0}, Lcom/xiaomi/camera/rcs/IRemoteControlClient;->customCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    return v1

    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_4

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    :cond_4
    invoke-interface {p0, p1, v0}, Lcom/xiaomi/camera/rcs/IRemoteControlClient;->streamingSessionStatus(ILandroid/os/Bundle;)V

    return v1

    :cond_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_6

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    :cond_6
    invoke-interface {p0, p1, v0}, Lcom/xiaomi/camera/rcs/IRemoteControlClient;->streamingServerStatus(ILandroid/os/Bundle;)V

    return v1
.end method
