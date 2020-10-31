.class public interface abstract Lcom/android/internal/inputmethod/IIntResultCallback;
.super Ljava/lang/Object;
.source "IIntResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IIntResultCallback$Stub;,
        Lcom/android/internal/inputmethod/IIntResultCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onResult(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
