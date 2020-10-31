.class public interface abstract Lcom/android/internal/inputmethod/IMultiClientInputMethod;
.super Ljava/lang/Object;
.source "IMultiClientInputMethod.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IMultiClientInputMethod$Stub;,
        Lcom/android/internal/inputmethod/IMultiClientInputMethod$Default;
    }
.end annotation


# virtual methods
.method public abstract addClient(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract initialize(Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeClient(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
