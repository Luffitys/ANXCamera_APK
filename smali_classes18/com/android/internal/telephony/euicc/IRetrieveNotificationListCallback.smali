.class public interface abstract Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;
.super Ljava/lang/Object;
.source "IRetrieveNotificationListCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback$Stub;,
        Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback$Default;
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
