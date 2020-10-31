.class public interface abstract Lcom/android/internal/telephony/euicc/IListNotificationsCallback;
.super Ljava/lang/Object;
.source "IListNotificationsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IListNotificationsCallback$Stub;,
        Lcom/android/internal/telephony/euicc/IListNotificationsCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onComplete(I[Landroid/telephony/euicc/EuiccNotification;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
