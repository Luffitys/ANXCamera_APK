.class public interface abstract Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;
.super Ljava/lang/Object;
.source "IDeleteProfileCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IDeleteProfileCallback$Stub;,
        Lcom/android/internal/telephony/euicc/IDeleteProfileCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
