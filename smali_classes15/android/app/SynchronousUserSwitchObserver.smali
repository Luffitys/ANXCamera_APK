.class public abstract Landroid/app/SynchronousUserSwitchObserver;
.super Landroid/app/UserSwitchObserver;
.source "SynchronousUserSwitchObserver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onUserSwitching(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/app/SynchronousUserSwitchObserver;->onUserSwitching(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_a

    if-eqz p2, :cond_9

    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_9
    return-void

    :catchall_a
    move-exception v1

    if-eqz p2, :cond_10

    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_10
    throw v1
.end method
