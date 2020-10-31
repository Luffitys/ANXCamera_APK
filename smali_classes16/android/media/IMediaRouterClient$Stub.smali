.class public abstract Landroid/media/IMediaRouterClient$Stub;
.super Landroid/os/Binder;
.source "IMediaRouterClient.java"

# interfaces
.implements Landroid/media/IMediaRouterClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRouterClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRouterClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IMediaRouterClient"

.field static final TRANSACTION_onGlobalA2dpChanged:I = 0x4

.field static final TRANSACTION_onRestoreRoute:I = 0x2

.field static final TRANSACTION_onSelectedRouteChanged:I = 0x3

.field static final TRANSACTION_onStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.IMediaRouterClient"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRouterClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.media.IMediaRouterClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IMediaRouterClient;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/media/IMediaRouterClient;

    return-object v1

    :cond_14
    new-instance v1, Landroid/media/IMediaRouterClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMediaRouterClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/media/IMediaRouterClient;
    .registers 1

    sget-object v0, Landroid/media/IMediaRouterClient$Stub$Proxy;->sDefaultImpl:Landroid/media/IMediaRouterClient;

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
    const-string/jumbo v0, "onGlobalA2dpChanged"

    return-object v0

    :cond_12
    const-string/jumbo v0, "onSelectedRouteChanged"

    return-object v0

    :cond_16
    const-string/jumbo v0, "onRestoreRoute"

    return-object v0

    :cond_1a
    const-string/jumbo v0, "onStateChanged"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/media/IMediaRouterClient;)Z
    .registers 3

    sget-object v0, Landroid/media/IMediaRouterClient$Stub$Proxy;->sDefaultImpl:Landroid/media/IMediaRouterClient;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/media/IMediaRouterClient$Stub$Proxy;->sDefaultImpl:Landroid/media/IMediaRouterClient;

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

    invoke-static {p1}, Landroid/media/IMediaRouterClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.media.IMediaRouterClient"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_37

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2c

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

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_27

    move v2, v1

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    invoke-virtual {p0, v2}, Landroid/media/IMediaRouterClient$Stub;->onGlobalA2dpChanged(Z)V

    return v1

    :cond_2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/IMediaRouterClient$Stub;->onSelectedRouteChanged(Ljava/lang/String;)V

    return v1

    :cond_37
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/IMediaRouterClient$Stub;->onRestoreRoute()V

    return v1

    :cond_3e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/IMediaRouterClient$Stub;->onStateChanged()V

    return v1
.end method
