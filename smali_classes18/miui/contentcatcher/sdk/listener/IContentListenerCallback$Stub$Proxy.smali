.class Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IContentListenerCallback.java"

# interfaces
.implements Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "miui.contentcatcher.sdk.listener.IContentListenerCallback"

    return-object v0
.end method

.method public onContentReceived(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "miui.contentcatcher.sdk.listener.IContentListenerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v1}, Lmiui/contentcatcher/sdk/ClientCatcherResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    iget-object v1, p0, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {}, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;->getDefaultImpl()Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-static {}, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;->getDefaultImpl()Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;->onContentReceived(Lmiui/contentcatcher/sdk/ClientCatcherResult;)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_36

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
