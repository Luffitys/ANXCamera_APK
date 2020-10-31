.class public interface abstract Landroid/window/IWindowOrganizerController;
.super Ljava/lang/Object;
.source "IWindowOrganizerController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IWindowOrganizerController$Stub;,
        Landroid/window/IWindowOrganizerController$Default;
    }
.end annotation


# virtual methods
.method public abstract applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDisplayAreaOrganizerController()Landroid/window/IDisplayAreaOrganizerController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getTaskOrganizerController()Landroid/window/ITaskOrganizerController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract takeScreenshot(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
