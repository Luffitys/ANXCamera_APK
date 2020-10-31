.class public interface abstract Landroid/window/IDisplayAreaOrganizerController;
.super Ljava/lang/Object;
.source "IDisplayAreaOrganizerController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IDisplayAreaOrganizerController$Stub;,
        Landroid/window/IDisplayAreaOrganizerController$Default;
    }
.end annotation


# virtual methods
.method public abstract registerOrganizer(Landroid/window/IDisplayAreaOrganizer;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
