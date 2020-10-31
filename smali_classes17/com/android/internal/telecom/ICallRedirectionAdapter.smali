.class public interface abstract Lcom/android/internal/telecom/ICallRedirectionAdapter;
.super Ljava/lang/Object;
.source "ICallRedirectionAdapter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;,
        Lcom/android/internal/telecom/ICallRedirectionAdapter$Default;
    }
.end annotation


# virtual methods
.method public abstract cancelCall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract placeCallUnmodified()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract redirectCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
