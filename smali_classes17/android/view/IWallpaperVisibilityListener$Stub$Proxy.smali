.class Landroid/view/IWallpaperVisibilityListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWallpaperVisibilityListener.java"

# interfaces
.implements Landroid/view/IWallpaperVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWallpaperVisibilityListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/view/IWallpaperVisibilityListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/IWallpaperVisibilityListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/view/IWallpaperVisibilityListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.view.IWallpaperVisibilityListener"

    return-object v0
.end method

.method public onWallpaperVisibilityChanged(ZI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.view.IWallpaperVisibilityListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_e

    move v2, v1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/view/IWallpaperVisibilityListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-static {}, Landroid/view/IWallpaperVisibilityListener$Stub;->getDefaultImpl()Landroid/view/IWallpaperVisibilityListener;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-static {}, Landroid/view/IWallpaperVisibilityListener$Stub;->getDefaultImpl()Landroid/view/IWallpaperVisibilityListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IWallpaperVisibilityListener;->onWallpaperVisibilityChanged(ZI)V
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_34

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_34
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
