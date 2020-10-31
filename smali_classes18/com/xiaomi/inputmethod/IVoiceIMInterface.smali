.class public interface abstract Lcom/xiaomi/inputmethod/IVoiceIMInterface;
.super Ljava/lang/Object;
.source "IVoiceIMInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub;,
        Lcom/xiaomi/inputmethod/IVoiceIMInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract keyboardDisappear()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setMotionEvent(Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract voiceButtonDown(JLandroid/os/RemoteCallback;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract voiceButtonUP(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
