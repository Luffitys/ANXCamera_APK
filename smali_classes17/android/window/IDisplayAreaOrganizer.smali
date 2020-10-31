.class public interface abstract Landroid/window/IDisplayAreaOrganizer;
.super Ljava/lang/Object;
.source "IDisplayAreaOrganizer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IDisplayAreaOrganizer$Stub;,
        Landroid/window/IDisplayAreaOrganizer$Default;
    }
.end annotation


# virtual methods
.method public abstract onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDisplayAreaInfoChanged(Landroid/window/DisplayAreaInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
