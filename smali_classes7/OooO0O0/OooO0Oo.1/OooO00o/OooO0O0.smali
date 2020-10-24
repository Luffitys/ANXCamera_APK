.class LOooO0O0/OooO0Oo/OooO00o/OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;


# static fields
.field public static OooO0O0:LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;


# instance fields
.field private OooO00o:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/net/Uri;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.market.pm.IMarketInstallerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v3}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p0, p0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0OO;->OooO0OO()LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0OO;->OooO0OO()LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;->OooO00o(Landroid/net/Uri;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public OooO0O0()Ljava/lang/String;
    .locals 0

    const-string p0, "com.market.pm.IMarketInstallerService"

    return-object p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Landroid/os/IBinder;

    return-object p0
.end method
