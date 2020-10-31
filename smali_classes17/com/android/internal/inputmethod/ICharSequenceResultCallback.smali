.class public interface abstract Lcom/android/internal/inputmethod/ICharSequenceResultCallback;
.super Ljava/lang/Object;
.source "ICharSequenceResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/ICharSequenceResultCallback$Stub;,
        Lcom/android/internal/inputmethod/ICharSequenceResultCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onResult(Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
