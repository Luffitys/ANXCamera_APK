.class public abstract LOooO0O0/OooO0Oo/OooO00o/OooO0OO;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;


# static fields
.field private static final OooO00o:Ljava/lang/String; = "com.market.pm.IMarketInstallerService"

.field static final OooO0O0:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.market.pm.IMarketInstallerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static OooO0O0(Landroid/os/IBinder;)LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.market.pm.IMarketInstallerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;

    if-eqz v1, :cond_1

    check-cast v0, LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;

    return-object v0

    :cond_1
    new-instance v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    invoke-direct {v0, p0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static OooO0OO()LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;
    .locals 1

    sget-object v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0O0:LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;

    return-object v0
.end method

.method public static OooO0Oo(LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;)Z
    .locals 1

    sget-object v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0O0:LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0O0:LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;

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
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.market.pm.IMarketInstallerService"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_2

    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    goto :goto_0

    :cond_2
    move-object p1, p4

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    goto :goto_1

    :cond_3
    move-object v1, p4

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Landroid/os/Bundle;

    :cond_4
    invoke-interface {p0, p1, v1, p4}, LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;->OooO00o(Landroid/net/Uri;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
