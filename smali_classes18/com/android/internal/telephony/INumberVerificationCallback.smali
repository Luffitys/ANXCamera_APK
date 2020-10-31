.class public interface abstract Lcom/android/internal/telephony/INumberVerificationCallback;
.super Ljava/lang/Object;
.source "INumberVerificationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/INumberVerificationCallback$Stub;,
        Lcom/android/internal/telephony/INumberVerificationCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onCallReceived(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onVerificationFailed(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
