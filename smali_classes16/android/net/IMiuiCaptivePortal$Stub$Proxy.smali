.class Landroid/net/IMiuiCaptivePortal$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMiuiCaptivePortal.java"

# interfaces
.implements Landroid/net/IMiuiCaptivePortal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IMiuiCaptivePortal$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/IMiuiCaptivePortal;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/IMiuiCaptivePortal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public appResponse(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.net.IMiuiCaptivePortal"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/net/IMiuiCaptivePortal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-static {}, Landroid/net/IMiuiCaptivePortal$Stub;->getDefaultImpl()Landroid/net/IMiuiCaptivePortal;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-static {}, Landroid/net/IMiuiCaptivePortal$Stub;->getDefaultImpl()Landroid/net/IMiuiCaptivePortal;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/IMiuiCaptivePortal;->appResponse(I)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_2c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_27
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/net/IMiuiCaptivePortal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.net.IMiuiCaptivePortal"

    return-object v0
.end method
