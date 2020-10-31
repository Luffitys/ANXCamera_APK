.class public interface abstract Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
.super Ljava/lang/Object;
.source "IAccessibilityEmbeddedConnection.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Stub;,
        Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Default;
    }
.end annotation


# virtual methods
.method public abstract associateEmbeddedHierarchy(Landroid/os/IBinder;I)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract disassociateEmbeddedHierarchy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setScreenMatrix([F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
