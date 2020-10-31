.class public interface abstract Lcom/android/internal/telephony/euicc/ISetNicknameCallback;
.super Ljava/lang/Object;
.source "ISetNicknameCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/ISetNicknameCallback$Stub;,
        Lcom/android/internal/telephony/euicc/ISetNicknameCallback$Default;
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
