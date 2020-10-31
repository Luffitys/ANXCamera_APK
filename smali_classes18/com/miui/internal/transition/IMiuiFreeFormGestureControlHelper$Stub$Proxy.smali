.class Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMiuiFreeFormGestureControlHelper.java"

# interfaces
.implements Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    return-object v0
.end method

.method public hideCaptionView()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;->hideCaptionView()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public notifyExitFreeFormApplicationStart()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;->notifyExitFreeFormApplicationStart()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public notifyExitSmallFreeFormApplicationStart()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;->notifyExitSmallFreeFormApplicationStart()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public notifyFreeFormApplicationResizeEnd(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;->notifyFreeFormApplicationResizeEnd(J)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public notifyFreeFormApplicationResizeStart()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;->notifyFreeFormApplicationResizeStart()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public notifyFullScreenWidnowModeStart()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;->notifyFullScreenWidnowModeStart()V
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_29

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public showCaptionView()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;->showCaptionView()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public updateCaptionViewVisibility()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;->updateCaptionViewVisibility()V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2b

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
