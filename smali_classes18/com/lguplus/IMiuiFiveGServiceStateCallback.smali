.class public interface abstract Lcom/lguplus/IMiuiFiveGServiceStateCallback;
.super Ljava/lang/Object;
.source "IMiuiFiveGServiceStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lguplus/IMiuiFiveGServiceStateCallback$Stub;,
        Lcom/lguplus/IMiuiFiveGServiceStateCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract on5GAvailable(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract on5GBearerAdded(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract on5GBearerDeleted(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract on5GUnavailable(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
