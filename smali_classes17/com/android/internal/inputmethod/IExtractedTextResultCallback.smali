.class public interface abstract Lcom/android/internal/inputmethod/IExtractedTextResultCallback;
.super Ljava/lang/Object;
.source "IExtractedTextResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IExtractedTextResultCallback$Stub;,
        Lcom/android/internal/inputmethod/IExtractedTextResultCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onResult(Landroid/view/inputmethod/ExtractedText;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
